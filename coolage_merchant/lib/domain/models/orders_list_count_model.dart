import 'dart:convert';

import 'package:flutter/foundation.dart';

class OrdersListCountModel {
  List<String>? pending;
  List<String>? delivering;
  List<String>? preparing;
  List<String>? prepared;
  bool? isNewOrderPresent;
  OrdersListCountModel({
    this.pending,
    this.delivering,
    this.preparing,
    this.prepared,
    this.isNewOrderPresent,
  });

  factory OrdersListCountModel.empty() {
    return OrdersListCountModel(
      pending: [],
      delivering: [],
      prepared: [],
      preparing: [],
      isNewOrderPresent: false,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'pending': pending,
      'delivering': delivering,
      'preparing': preparing,
      'prepared': prepared,
      'isNewOrderPresent': isNewOrderPresent ?? false,
    };
  }

  void changeisNewOrderPresent(bool isNew) {
    isNewOrderPresent = isNew;
  }

  factory OrdersListCountModel.fromMap(Map<String, dynamic> map) {
    return OrdersListCountModel(
      pending: map['pending'] == null
          ? []
          : List<String>.from((map['pending'] as List).map((e) => e as String)),
      delivering: map['delivering'] == null
          ? []
          : List<String>.from(
              (map['delivering'] as List).map((e) => e as String)),
      preparing: map['preparing'] == null
          ? []
          : List<String>.from(
              (map['preparing'] as List).map((e) => e as String)),
      prepared: map['prepared'] == null
          ? []
          : List<String>.from(
              (map['prepared'] as List).map((e) => e as String)),
    );
  }

  @override
  String toString() {
    return 'OrdersListCountModel(pending: $pending, delivering: $delivering, preparing: $preparing, prepared: $prepared)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is OrdersListCountModel &&
        listEquals(other.pending, pending) &&
        listEquals(other.delivering, delivering) &&
        listEquals(other.preparing, preparing) &&
        listEquals(other.prepared, prepared);
  }

  @override
  int get hashCode {
    return pending.hashCode ^
        delivering.hashCode ^
        preparing.hashCode ^
        prepared.hashCode;
  }
}
