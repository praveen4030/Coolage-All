import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolage_merchant/domain/base/canteen/canteen_basic_details_model.dart';
import 'package:coolage_merchant/domain/models/ongoing_orders_count_model.dart';
import 'package:coolage_merchant/infrastructure/core/firebase_helpers.dart';
import 'package:flutter/material.dart';
import 'package:coolage_merchant/domain/core/helpers/getter.dart';
import 'package:coolage_merchant/domain/models/orders_list_count_model.dart';

mixin CanteenOrdersCountHandler {
  static Future<void> getCountWithList(
      BuildContext context, Function function) async {
    FirebaseFirestore.instance.canteenBasicDetailsCollection
        .doc(Getters.getCurrentCanteenId(context))
        .canteenDocsCollection
        .ordersListDocument
        .snapshots()
        .listen((DocumentSnapshot snapshot) async {
      if (snapshot.exists) {
        final model = OrdersListCountModel.fromMap(
            snapshot.data()! as Map<String, dynamic>);
        function(model);
      }
    });
  }

  static Future<void> getCountWithModel(BuildContext context, Function function,
      OrdersListCountModel listCountModel) async {
    FirebaseFirestore.instance.canteenBasicDetailsCollection
        .doc(Getters.getCurrentCanteenId(context))
        .snapshots()
        .listen((DocumentSnapshot snapshot) async {
      if (snapshot.exists) {
        final model = CanteenBasicDetailsModel.fromMap(
            snapshot.data()! as Map<String, dynamic>);
        if (model.ongoingOrdersCountModel != null) {
          listCountModel.isNewOrderPresent =
              (model.ongoingOrdersCountModel!.pendingOrdersCount ?? 0) > 0;
          function(listCountModel);
        }
      }
    });
  }
}
