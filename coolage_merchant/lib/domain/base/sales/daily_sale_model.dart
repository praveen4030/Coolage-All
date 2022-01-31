import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolage_merchant/domain/base/canteen/order_model.dart';

class DailySaleModel {
  int? noOfOrders;
  int? totalSale;
  DateTime? dateTime;
  List<OrderModel>? ordersList;
  DailySaleModel({
    this.noOfOrders,
    this.totalSale,
    this.dateTime,
    this.ordersList,
  });

  factory DailySaleModel.fromOrdersList(
    DateTime dateTime,
    List<OrderModel> ordersList,
  ) {
    double totalSale = 0;
    for (final model in ordersList) {
      totalSale += model.totalPrice!;
    }
    return DailySaleModel(
      noOfOrders: ordersList.length,
      totalSale: totalSale.toInt(),
      dateTime: dateTime,
      ordersList: ordersList,
    );
  }

  @override
  String toString() =>
      'DailySaleModel(noOfOrders: $noOfOrders, totalSale: $totalSale, dateTime: $dateTime)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DailySaleModel &&
        other.noOfOrders == noOfOrders &&
        other.totalSale == totalSale &&
        other.dateTime == dateTime;
  }

  @override
  int get hashCode =>
      noOfOrders.hashCode ^ totalSale.hashCode ^ dateTime.hashCode;
}
