part of core;

class FirebaseFunctions {
  static void canteenOrderListener(String canteenId, String orderDocId) {
    FirebaseFirestore.instance.canteenBasicDetailsCollection
        .doc(canteenId)
        .canteenOngoingOrdersCollection
        .doc(orderDocId)
        .snapshots()
        .listen((DocumentSnapshot document) {
      if (document.exists) {
        final data = document.data();
        OrderModel model = OrderModel.fromMap(data as Map<String, dynamic>);
        if (model.orderStatus == OrderStatus.pending) {
          CanteenFunctions.deleteItems(canteenId: canteenId);
          redirectAfterSuccessfulPayment();
          Fluttertoast.showToast(
              msg:
                  "Order Placed successfully and your order will be accepted by the canteen soon.");
        } else if (model.orderStatus == OrderStatus.paymentFailed) {
          CoreGetters.getContext
              .read<UserOrdersBloc>()
              .add(const UserOrdersEvent.getUserOrdersDetails());
          Fluttertoast.showToast(
              msg:
                  "Payment failed! Any money deducted will be refunded within 24 hours!");
        }
      }
    });
  }

  static void redirectAfterSuccessfulPayment() {
    CoreGetters.getContext
        .read<UserOrdersBloc>()
        .add(const UserOrdersEvent.getUserOrdersDetails());
    Navigator.of(CoreGetters.getContext).popUntil((route) => route.isFirst);
    Navigator.of(CoreGetters.getContext, rootNavigator: true).push(
        MaterialPageRoute(builder: (context) => const PreviousOrdersPage()));
  }

  static Future<void> updateDeviceToken() async {
    String? token;
    try {
      token = await FirebaseMessaging.instance.getToken();
    } catch (e) {
      debugPrint('Couldnt register the token');
    }
    final version = await CoolUser.getAppVersion();
    await FirebaseFirestore.instance.usersCollection
        .doc(Getters.getCurrentUserUid())
        .update({
      'deviceToken': token ?? '',
      'lastLoginAt': Timestamp.now(),
      'appVersion': version,
    });
  }

  static Future<bool> checkIfUserExists() async {
    final uid = FirebaseAuth.instance.currentUser!.uid;
    final DocumentSnapshot doc =
        await FirebaseFirestore.instance.usersCollection.doc(uid).get();
    if (doc.exists) {
      return true;
    } else {
      return false;
    }
  }
}
