import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolage/domain/models/item_model.dart';
import 'package:core/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class StoreOrderModel {
  String? storeName;
  String? storeLocation;
  String? storeId;
  int? totalItemsQty;
  double? totalPrice;
  String? orderId;
  Map<String, ItemModel>? itemsMap;
  Timestamp? orderPlaceAtTimestamp;
  Timestamp? orderDeliveredAtTimestamp;
  TimeOfDay? storeOpenTill;
  bool? isDelivery;
  String? deliveryAddress;
  double? orderRating;
  String? orderPlaceByUid;
  String? orderPlaceByName;
  String? orderPlacedByContactNo;
  String? orderPlacedByImage;
  bool? isOrderAccepted;
  bool? isOrderPreparing;
  bool? isOrderDelivered;
  StoreOrderModel({
    this.storeName,
    this.storeLocation,
    this.storeId,
    this.totalItemsQty,
    this.totalPrice,
    this.orderId,
    this.itemsMap,
    this.orderPlaceAtTimestamp,
    this.orderDeliveredAtTimestamp,
    this.storeOpenTill,
    this.isDelivery,
    this.deliveryAddress,
    this.orderRating,
    this.orderPlaceByUid,
    this.orderPlaceByName,
    this.orderPlacedByContactNo,
    this.orderPlacedByImage,
    this.isOrderAccepted,
    this.isOrderPreparing,
    this.isOrderDelivered,
  });

  StoreOrderModel copyWith({
    String? storeName,
    String? storeLocation,
    String? storeId,
    int? totalItemsQty,
    double? totalPrice,
    String? orderId,
    Map<String, ItemModel>? itemsMap,
    Timestamp? orderPlaceAtTimestamp,
    Timestamp? orderDeliveredAtTimestamp,
    TimeOfDay? storeOpenTill,
    bool? isDelivery,
    String? deliveryAddress,
    double? orderRating,
    String? orderPlaceByUid,
    String? orderPlaceByName,
    String? orderPlacedByContactNo,
    String? orderPlacedByImage,
    bool? isOrderAccepted,
    bool? isOrderPreparing,
    bool? isOrderDelivered,
  }) {
    return StoreOrderModel(
      storeName: storeName ?? this.storeName,
      storeLocation: storeLocation ?? this.storeLocation,
      storeId: storeId ?? this.storeId,
      totalItemsQty: totalItemsQty ?? this.totalItemsQty,
      totalPrice: totalPrice ?? this.totalPrice,
      orderId: orderId ?? this.orderId,
      itemsMap: itemsMap ?? this.itemsMap,
      orderPlaceAtTimestamp:
          orderPlaceAtTimestamp ?? this.orderPlaceAtTimestamp,
      orderDeliveredAtTimestamp:
          orderDeliveredAtTimestamp ?? this.orderDeliveredAtTimestamp,
      storeOpenTill: storeOpenTill ?? this.storeOpenTill,
      isDelivery: isDelivery ?? this.isDelivery,
      deliveryAddress: deliveryAddress ?? this.deliveryAddress,
      orderRating: orderRating ?? this.orderRating,
      orderPlaceByUid: orderPlaceByUid ?? this.orderPlaceByUid,
      orderPlaceByName: orderPlaceByName ?? this.orderPlaceByName,
      orderPlacedByContactNo:
          orderPlacedByContactNo ?? this.orderPlacedByContactNo,
      orderPlacedByImage: orderPlacedByImage ?? this.orderPlacedByImage,
      isOrderAccepted: isOrderAccepted ?? this.isOrderAccepted,
      isOrderPreparing: isOrderPreparing ?? this.isOrderPreparing,
      isOrderDelivered: isOrderDelivered ?? this.isOrderDelivered,
    );
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> itemsMapMapping =
        itemsMap?.map((key, value) => MapEntry(key, value.toMap())) ?? {};
    return {
      'storeName': storeName,
      'storeLocation': storeLocation,
      'storeId': storeId,
      'totalItemsQty': totalItemsQty,
      'totalPrice': totalPrice,
      'orderId': orderId,
      'itemsMap': itemsMapMapping,
      'orderPlaceAtTimestamp': orderPlaceAtTimestamp,
      'orderDeliveredAtTimestamp': orderDeliveredAtTimestamp,
      'storeOpenTill': Functions.convertTimeOfDayToTimestamp(storeOpenTill),
      'isDelivery': isDelivery,
      'deliveryAddress': deliveryAddress,
      'orderRating': orderRating,
      'orderPlaceByUid': orderPlaceByUid,
      'orderPlaceByName': orderPlaceByName,
      'orderPlacedByContactNo': orderPlacedByContactNo,
      'orderPlacedByImage': orderPlacedByImage,
      'isOrderAccepted': isOrderAccepted,
      'isOrderPreparing': isOrderPreparing,
      'isOrderDelivered': isOrderDelivered,
    };
  }

  factory StoreOrderModel.fromMap(Map<String, dynamic> map) {
    return StoreOrderModel(
      storeName: map['storeName'] as String,
      storeLocation: map['storeLocation'] as String,
      storeId: map['storeId'] as String,
      totalItemsQty: int.tryParse(map['totalItemsQty']?.toString() ?? '0'),
      totalPrice: double.tryParse(map['totalPrice']?.toString() ?? '0'),
      orderId: map['orderId'] as String,
      itemsMap: Map<String, ItemModel>.from(
          (map['itemsMap'] as Map<String, dynamic>).map((key, value) =>
              MapEntry(key, ItemModel.fromMap(value as Map<String, dynamic>)))),
      orderPlaceAtTimestamp: map['orderPlaceAtTimestamp'] as Timestamp,
      orderDeliveredAtTimestamp: map['orderDeliveredAtTimestamp'] as Timestamp,
      storeOpenTill: Functions.convertTimestampToTimeOfDay(
          map['storeOpenTill'] as Timestamp),
      isDelivery: map['isDelivery'] as bool,
      deliveryAddress: map['deliveryAddress'] as String,
      orderRating: double.tryParse(map['orderRating']?.toString() ?? '0'),
      orderPlaceByUid: map['orderPlaceByUid'] as String,
      orderPlaceByName: map['orderPlaceByName'] as String,
      orderPlacedByContactNo: map['orderPlacedByContactNo'] as String,
      orderPlacedByImage: map['orderPlacedByImage'] as String,
      isOrderAccepted: map['isOrderAccepted'] as bool,
      isOrderPreparing: map['isOrderPreparing'] as bool,
      isOrderDelivered: map['isOrderDelivered'] as bool,
    );
  }

  @override
  String toString() {
    return 'StoreOrderModel(storeName: $storeName, storeLocation: $storeLocation, storeId: $storeId, totalItemsQty: $totalItemsQty, totalPrice: $totalPrice, orderId: $orderId, itemsMap: $itemsMap, orderPlaceAtTimestamp: $orderPlaceAtTimestamp, orderDeliveredAtTimestamp: $orderDeliveredAtTimestamp, storeOpenTill: $storeOpenTill, isDelivery: $isDelivery, deliveryAddress: $deliveryAddress, orderRating: $orderRating, orderPlaceByUid: $orderPlaceByUid, orderPlaceByName: $orderPlaceByName, orderPlacedByContactNo: $orderPlacedByContactNo, orderPlacedByImage: $orderPlacedByImage, isOrderAccepted: $isOrderAccepted, isOrderPreparing: $isOrderPreparing, isOrderDelivered: $isOrderDelivered)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is StoreOrderModel &&
        other.storeName == storeName &&
        other.storeLocation == storeLocation &&
        other.storeId == storeId &&
        other.totalItemsQty == totalItemsQty &&
        other.totalPrice == totalPrice &&
        other.orderId == orderId &&
        mapEquals(other.itemsMap, itemsMap) &&
        other.orderPlaceAtTimestamp == orderPlaceAtTimestamp &&
        other.orderDeliveredAtTimestamp == orderDeliveredAtTimestamp &&
        other.storeOpenTill == storeOpenTill &&
        other.isDelivery == isDelivery &&
        other.deliveryAddress == deliveryAddress &&
        other.orderRating == orderRating &&
        other.orderPlaceByUid == orderPlaceByUid &&
        other.orderPlaceByName == orderPlaceByName &&
        other.orderPlacedByContactNo == orderPlacedByContactNo &&
        other.orderPlacedByImage == orderPlacedByImage &&
        other.isOrderAccepted == isOrderAccepted &&
        other.isOrderPreparing == isOrderPreparing &&
        other.isOrderDelivered == isOrderDelivered;
  }

  @override
  int get hashCode {
    return storeName.hashCode ^
        storeLocation.hashCode ^
        storeId.hashCode ^
        totalItemsQty.hashCode ^
        totalPrice.hashCode ^
        orderId.hashCode ^
        itemsMap.hashCode ^
        orderPlaceAtTimestamp.hashCode ^
        orderDeliveredAtTimestamp.hashCode ^
        storeOpenTill.hashCode ^
        isDelivery.hashCode ^
        deliveryAddress.hashCode ^
        orderRating.hashCode ^
        orderPlaceByUid.hashCode ^
        orderPlaceByName.hashCode ^
        orderPlacedByContactNo.hashCode ^
        orderPlacedByImage.hashCode ^
        isOrderAccepted.hashCode ^
        isOrderPreparing.hashCode ^
        isOrderDelivered.hashCode;
  }
}
