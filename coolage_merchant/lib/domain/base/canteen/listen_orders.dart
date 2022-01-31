import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolage_merchant/application/canteen/orders_pending/orders_pending_bloc.dart';
import 'package:coolage_merchant/domain/base/canteen/order_model.dart';
import 'package:coolage_merchant/domain/core/helpers/getter.dart';
import 'package:coolage_merchant/infrastructure/core/firebase_helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListenOrders {
  static Future<void> updateOrdersList(BuildContext context) async {
    updatePendingOrdersList(context);
  }

  static Future<void> updatePendingOrdersList(BuildContext context) async {
    final ordersList = context.read<OrdersPendingBloc>().state.ordersList!;
    final timestamp =
        ordersList.isNotEmpty ? ordersList[0].timestamp! : Timestamp.now();
    FirebaseFirestore.instance.canteenBasicDetailsCollection
        .doc(Getters.getCurrentCanteenId(context))
        .canteenOngoingOrdersCollection
        .where('orderStatus', isEqualTo: 'pending')
        .orderBy('timestamp', descending: true)
        .startAfter([timestamp])
        .snapshots()
        .listen((QuerySnapshot snapshot) {
          final m = snapshot.docChanges;
          final doc = m.first.doc;
          debugPrint(doc.toString());
          for (final docChange in snapshot.docChanges) {
            if (docChange.type == DocumentChangeType.added) {
              OrderModel orderModel = OrderModel.fromMap(
                  docChange.doc.data()! as Map<String, dynamic>);
              context
                  .read<OrdersPendingBloc>()
                  .add(OrdersPendingEvent.insertNewOrder(orderModel));
            }
          }
        });
  }
}
