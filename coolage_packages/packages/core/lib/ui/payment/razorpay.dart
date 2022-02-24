part of core;

class PaymentGatewayButton extends StatefulWidget {
  final double? amount;
  final bool? isEnabled;
  final String? notEnabledError;
  final Function triggerLoadingFn;
  final CartModel cartModel;
  final String specialComment;
  final bool isDelivery;
  final bool isTakeAway;
  final DeliverableZonesModel zoneSelectedModel;
  const PaymentGatewayButton({
    Key? key,
    required this.amount,
    required this.isEnabled,
    required this.notEnabledError,
    required this.triggerLoadingFn,
    required this.cartModel,
    required this.specialComment,
    required this.isDelivery,
    // required this.deliveryAddressIndex,
    required this.isTakeAway,
    required this.zoneSelectedModel,
  }) : super(key: key);

  @override
  _PaymentGatewayButtonState createState() => _PaymentGatewayButtonState();
}

class _PaymentGatewayButtonState extends State<PaymentGatewayButton> {
  String cashfreeToken = '';
  String cashfreeOrderId = "";

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CanteenDetailsBloc, CanteenDetailsState>(
      listener: (context, state) {
        state.placeOrderFailureOrSuccess!.fold(() {}, (either) {
          either.fold(
            (failure) async {
              Navigator.of(context).pop();
              FlushbarHelper.createError(message: failure.error).show(context);
            },
            (orderId) async {
              context
                  .read<CanteenDetailsBloc>()
                  .add(const CanteenDetailsEvent.placeOrderResultInital());
              await paymentWithCashfree(orderId);
            },
          );
        });
      },
      builder: (context, state) {
        return Container(
          width: MediaQuery.of(context).size.width,
          color: Kolors.greyWhite,
          child: GestureDetector(
            onTap: () async {
              if (widget.isEnabled! &&
                  widget.amount! > 10 &&
                  (widget.cartModel.canteenBasicDetailsModel!.name
                          ?.isNotEmpty ??
                      false)) {
                widget.triggerLoadingFn(true);
                await checkForPhoneNo(context);
                widget.triggerLoadingFn(false);
              } else if (widget.amount! <= 10) {
                Fluttertoast.showToast(
                    msg:
                        "Amount less than Rs 10. Please add more items to the cart");
              } else if (widget
                      .cartModel.canteenBasicDetailsModel!.name?.isEmpty ??
                  true) {
                Fluttertoast.showToast(msg: "No user name found");
              } else {
                Fluttertoast.showToast(msg: widget.notEnabledError!);
              }
              widget.triggerLoadingFn(false);
            },
            child: Container(
              color: Kolors.greenColor,
              height: 75,
              alignment: Alignment.center,
              child: state.isPlacingOrder!
                  ? const CircularProgressIndicator(
                      color: Colors.white,
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CustomText(
                          text: "Proceed to Pay",
                          color: Kolors.white,
                          fontSize: 24,
                        ),
                      ],
                    ),
            ),
          ),
        );
      },
    );
  }

  Future<String> getNotifyUrl(String orderDocId) async {
    final token = await FirebaseAuth.instance.currentUser!.getIdToken();
    String baseUrl =
        "https://us-central1-coolageapp.cloudfunctions.net/default/api/paymentSuccessWebhook?";
    baseUrl += "canteenId=${widget.cartModel.uniqueId!}&&";
    // baseUrl += "Authorization=$token&&";
    baseUrl += "orderDocId=$orderDocId";
    return baseUrl;
  }

  Future<void> paymentWithCashfree(String orderDocId) async {
    try {
      final user = context.read<AuthenticationBloc>().state.coolUser!;
      final notifyUrl = await getNotifyUrl(orderDocId);
      final params = {
        'color1': "#842EFF",
        "color2": "#FFFFFF",
        'tokenData': cashfreeToken,
        'stage': SecureConstants.PAYMENT_TYPE,
        "appId": SecureConstants.CASHFREE_API,
        'orderId': cashfreeOrderId,
        "orderAmount": (widget.amount!).toInt(),
        "customerName": user.name ?? '',
        // "customerPhone": '+917221904716',
        "customerPhone":
            user.phoneNo?.isNotEmpty ?? false ? user.phoneNo : '+919876543211',
        "customerEmail": user.emailId?.isNotEmpty ?? false
            ? user.emailId
            : 'hello@coolage.co.in',
        "hideOrderId": false,
        "orderCurrency": "INR",
        "orderNote": getPaymentDesc(context),
        "notifyUrl": notifyUrl,
      };
      FirebaseFunctions.canteenOrderListener(
          widget.cartModel.uniqueId!, orderDocId);
      final map = await CashfreePGSDK.doPayment(params);
      if (map == null) {
        Fluttertoast.showToast(msg: "Payment failed!");
      }
      final status = map!['txStatus'] as String;
      if (status == "SUCCESS") {
        Fluttertoast.showToast(msg: "Payment made successfully!");
        // widget.onSuccess!(orderId);
      } else if (status == "PENDING") {
        Fluttertoast.showToast(
            msg:
                "You payment is pending from the bank side! Any money deducted from the bank side will be refunded withing few hours!");
      } else {
        Fluttertoast.showToast(msg: "Payment failed!");
      }
    } catch (e) {
      debugPrint(e.toString());
      Fluttertoast.showToast(msg: "Payment failed!");
    }
  }

  Future<void> checkForPhoneNo(BuildContext context) async {
    final authenticatedphone =
        FirebaseAuth.instance.currentUser!.phoneNumber?.isNotEmpty ?? false;
    final userPhone = context
            .read<AuthenticationBloc>()
            .state
            .coolUser!
            .phoneNo
            ?.isNotEmpty ??
        false;
    if (authenticatedphone) {
      if (!userPhone) {
        final user = context.read<AuthenticationBloc>().state.coolUser!;
        user.phoneNo = FirebaseAuth.instance.currentUser!.phoneNumber;
        context
            .read<AuthenticationBloc>()
            .add(AuthenticationEvent.userModified(user: user));
        context
            .read<AuthenticationBloc>()
            .add(AuthenticationEvent.updateUserDetails(coolUser: user));
      }
      await generateCashfreeToken();
    } else {
      await ifPhoneNoNotAvailable();
    }
  }

  Future<void> generateCashfreeToken() async {
    try {
      final userAuth = await FirebaseAuth.instance.currentUser!.getIdToken();
      Map<String, dynamic> map = {
        'type': SecureConstants.PAYMENT_TYPE,
        'orderAmount': (widget.amount!).toInt(),
      };
      final jsonEncoded = json.encode(map);
      final response =
          await Dio().post(SecureConstants.coolageBackendApiBaseUrl,
              data: jsonEncoded,
              options: Options(headers: {
                "Authorization": "Bearer $userAuth",
              }));
      if (response.statusCode == 200) {
        final responseMap = response.data as Map<String, dynamic>;
        cashfreeToken = responseMap['data']['cftoken'] as String;
        cashfreeOrderId = responseMap['data']['orderId'].toString();
        placePendingOrder(cashfreeOrderId);
      } else {
        Fluttertoast.showToast(msg: "Payment failed!");
      }
    } catch (e) {
      debugPrint(e.toString());
      Fluttertoast.showToast(msg: "Payment failed!");
    }
  }

  Future<void> ifPhoneNoNotAvailable() async {
    await showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        context: context,
        builder: (context) {
          return PhoneAuthenticationDialog();
        });
  }

  void placePendingOrder(String orderId) {
    String address = '';
    if (widget.isDelivery) {
      address = getAddress(context);
      debugPrint(address);
    }
    context.read<CanteenDetailsBloc>().add(CanteenDetailsEvent.placeOrder(
          cartModel: widget.cartModel,
          isDelivery: widget.isDelivery,
          deliveryAddress: address,
          coolUser: Getters.getCurrentUser(context),
          paymentId: orderId,
          isTakeAway: widget.isTakeAway,
          comments: widget.specialComment,
          deliverableZonesModel: widget.zoneSelectedModel,
        ));
  }

  String getAddress(BuildContext context) {
    final index = context.read<CanteenDetailsBloc>().state.deliveryAddressIndex;
    final addressesMap =
        context.read<AuthenticationBloc>().state.coolUser!.deliveryAddressesMap;
    if (addressesMap != null &&
        addressesMap.containsKey(widget.zoneSelectedModel.zone)) {
      final list = addressesMap[widget.zoneSelectedModel.zone]!
          .values
          .toList()
          .reversed
          .toList();
      final deliveryAddress = list[index];
      String address =
          '${deliveryAddress.roomNo}\n${deliveryAddress.addressLine}\n${widget.zoneSelectedModel.zone}';
      debugPrint(address);
      return address;
    }
    return '';
  }

  String getPaymentDesc(BuildContext context) {
    String menu = '';
    final list = widget.cartModel.cartItemsMap!.values.toList();
    for (int i = 0; i < list.length; i++) {
      final m = list[i];
      if (m.categoryPrices!.isEmpty) {
        menu = '$menu${m.itemName!} (x${m.qty})';
      } else {
        for (int j = 0; j < m.categoryPrices!.length; j++) {
          if (m.categoryPrices![j].qty! > 0) {
            menu =
                '$menu${m.itemName!} (${m.categoryPrices![j].category})  (x${m.categoryPrices![j].qty}) ';
            if (j != m.categoryPrices!.length - 1) {
              menu = '$menu , ';
            }
          }
        }
      }

      if (i != list.length - 1) {
        menu = '$menu , ';
      }
    }
    if (widget.isDelivery) {
      menu = '$menu, \n Delivery Address  : ${getAddress(context)}';
    } else if (widget.isTakeAway) {
      menu = '$menu, \n Take Away';
    } else {
      menu = '$menu, \n On table';
    }
    return menu;
  }
}
