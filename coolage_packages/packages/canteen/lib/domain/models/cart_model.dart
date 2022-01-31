import 'package:canteen/domain/order/canteen_basic_details_model.dart';
import 'package:canteen/domain/models/deliverable_zones_model.dart';
import 'package:canteen/domain/models/item_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/core.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

part 'cart_model.g.dart';

@HiveType(typeId: HiveConstants.cartBox)
class CartModel {
  @HiveField(5)
  CanteenBasicDetailsModel? canteenBasicDetailsModel;
  @HiveField(1)
  double? totalPrice;
  @HiveField(2)
  int? qty;
  @HiveField(3)
  Map<String, ItemModel>? cartItemsMap;
  @HiveField(4)
  String? uniqueId;
  // @HiveField(5)
  Timestamp? timestamp;
  CartModel({
    this.canteenBasicDetailsModel,
    this.totalPrice,
    this.qty,
    this.cartItemsMap,
    this.uniqueId,
    this.timestamp,
  });

  double getTotalPayableBasedOnDelivery(
      bool isDelivery, DeliverableZonesModel model) {
    double totalItemsPayable = getItemsTotalPrice();
    if (isDelivery) {
      if (totalItemsPayable > model.minimumPriceForFreeDelivery!) {
        totalItemsPayable -= model.deliveryCharge!;
      }
      totalItemsPayable += model.deliveryCharge!;
    }
    return totalItemsPayable;
  }

  int getItemsTotalQty() {
    int qty = 0;
    for (final model in cartItemsMap!.values.toList()) {
      qty += model.qty!;
    }
    return qty;
  }

  double getItemsTotalPrice() {
    double totalPrice = 0;
    for (final model in cartItemsMap!.values.toList()) {
      totalPrice += model.getPrice();
    }
    return totalPrice;
  }

  CartModel copyWith({
    CanteenBasicDetailsModel? canteenBasicDetailsModel,
    double? totalPrice,
    int? qty,
    Map<String, ItemModel>? cartItemsMap,
    String? uniqueId,
    Timestamp? timestamp,
  }) {
    return CartModel(
      canteenBasicDetailsModel:
          canteenBasicDetailsModel ?? this.canteenBasicDetailsModel,
      totalPrice: totalPrice ?? this.totalPrice,
      qty: qty ?? this.qty,
      cartItemsMap: cartItemsMap ?? this.cartItemsMap,
      uniqueId: uniqueId ?? this.uniqueId,
      timestamp: timestamp ?? this.timestamp,
    );
  }

  Map<String, dynamic> toMap() {
    final cartItemsMapping =
        cartItemsMap?.map((key, value) => MapEntry(key, value.toMap()));
    return {
      'canteenBasicDetailsModel': canteenBasicDetailsModel?.toMap(),
      'totalPrice': totalPrice,
      'qty': qty,
      'cartItemsMap': cartItemsMapping,
      'uniqueId': uniqueId,
      'timestamp': timestamp,
    };
  }

  factory CartModel.fromMap(Map<String, dynamic> map,
      {CanteenBasicDetailsModel? canteenBasicDetailsModel}) {
    return CartModel(
      totalPrice: double.parse(map['totalPrice'].toString()),
      qty: int.parse(map['qty'].toString()),
      cartItemsMap: (map['cartItemsMap'] as Map<String, dynamic>).map(
          (key, value) =>
              MapEntry(key, ItemModel.fromMap(value as Map<String, dynamic>))),
      uniqueId: map['uniqueId'] as String,
      canteenBasicDetailsModel: canteenBasicDetailsModel,
      timestamp: map['timestamp'] as Timestamp,
    );
  }

  @override
  String toString() {
    return 'CartModel(canteenBasicDetailsModel: $canteenBasicDetailsModel, totalPrice: $totalPrice, qty: $qty, cartItemsMap: $cartItemsMap, uniqueId: $uniqueId, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CartModel &&
        other.canteenBasicDetailsModel == canteenBasicDetailsModel &&
        other.totalPrice == totalPrice &&
        other.qty == qty &&
        mapEquals(other.cartItemsMap, cartItemsMap) &&
        other.uniqueId == uniqueId &&
        other.timestamp == timestamp;
  }

  @override
  int get hashCode {
    return canteenBasicDetailsModel.hashCode ^
        totalPrice.hashCode ^
        qty.hashCode ^
        cartItemsMap.hashCode ^
        uniqueId.hashCode ^
        timestamp.hashCode;
  }
}
