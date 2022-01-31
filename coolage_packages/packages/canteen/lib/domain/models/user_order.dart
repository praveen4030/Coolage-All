import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class UserOrderModel {
  String? orderId;
  String? canteenId;
  Timestamp? timestamp;
  bool? isOngoingOrder;
  UserOrderModel({
    this.orderId,
    this.canteenId,
    this.timestamp,
    this.isOngoingOrder,
  });

  UserOrderModel copyWith({
    String? orderId,
    String? canteenId,
    Timestamp? timestamp,
    bool? isOngoingOrder,
  }) {
    return UserOrderModel(
      orderId: orderId ?? this.orderId,
      canteenId: canteenId ?? this.canteenId,
      timestamp: timestamp ?? this.timestamp,
      isOngoingOrder: isOngoingOrder ?? this.isOngoingOrder,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'orderId': orderId,
      'canteenId': canteenId,
      'timestamp': timestamp,
      'isOngoingOrder': isOngoingOrder,
    };
  }

  factory UserOrderModel.fromMap(Map<String, dynamic> map) {
    return UserOrderModel(
      orderId: map['orderId'] as String,
      canteenId: map['canteenId'] as String,
      timestamp: map['timestamp'] as Timestamp,
      isOngoingOrder: map['isOngoingOrder'] as bool,
    );
  }

  @override
  String toString() {
    return 'UserOrderModel(orderId: $orderId, canteenId: $canteenId, timestamp: $timestamp, isOngoingOrder: $isOngoingOrder)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserOrderModel &&
        other.orderId == orderId &&
        other.canteenId == canteenId &&
        other.timestamp == timestamp &&
        other.isOngoingOrder == isOngoingOrder;
  }

  @override
  int get hashCode {
    return orderId.hashCode ^
        canteenId.hashCode ^
        timestamp.hashCode ^
        isOngoingOrder.hashCode;
  }
}
