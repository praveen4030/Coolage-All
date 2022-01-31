import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class StoreBasicDetailsModel {
  String? image;
  String? name;
  String? location;
  GeoPoint? geoPoint;
  TimeOfDay? openTimings;
  TimeOfDay? closingTimings;
  String? contactNo;
  String? messageUid;
  bool? isDelivery;
  String? storeId;
  String? category;
  List<String>? productCategories;
  Timestamp? timestamp;
  String? college;
  String? city;
  StoreBasicDetailsModel({
    this.image,
    this.name,
    this.location,
    this.geoPoint,
    this.openTimings,
    this.closingTimings,
    this.contactNo,
    this.messageUid,
    this.isDelivery,
    this.storeId,
    this.timestamp,
    this.category,
    this.productCategories,
    this.city,
    this.college,
  });

  Map<String, dynamic> toMap() {
    return {
      'image': image,
      'name': name,
      'location': location,
      'geoPoint': geoPoint,
      'openTimings': Timestamp.fromDate(DateTime(
          2021, 01, 01, openTimings?.hour ?? 0, openTimings?.minute ?? 0)),
      'closingTimings': Timestamp.fromDate(DateTime(2021, 01, 01,
          closingTimings?.hour ?? 0, closingTimings?.minute ?? 0)),
      'contactNo': contactNo,
      'messageUid': messageUid,
      'isDelivery': isDelivery,
      'storeId': storeId,
      'timestamp': timestamp,
      'category': category,
      'productCategories': productCategories?.map((e) => e as String).toList(),
      'city': city,
      'college': college,
    };
  }

  factory StoreBasicDetailsModel.fromMap(Map<String, dynamic> map) {
    return StoreBasicDetailsModel(
      image: map['image'] as String,
      name: map['name'] as String,
      location: map['location'] as String,
      geoPoint: map['geoPoint'] as GeoPoint,
      openTimings:
          TimeOfDay.fromDateTime((map['openTimings'] as Timestamp).toDate()),
      closingTimings:
          TimeOfDay.fromDateTime((map['closingTimings'] as Timestamp).toDate()),
      contactNo: map['contactNo'] as String,
      messageUid: map['messageUid'] as String,
      isDelivery: map['isDelivery'] as bool,
      storeId: map['storeId'] as String,
      timestamp: map['timestamp'] as Timestamp,
      category: map['category'] as String,
      productCategories: List<String>.from(
          (map['productCategories'] as List).map((e) => e as String)),
      city: map['city'] as String,
      college: map['college'] as String,
    );
  }

  @override
  String toString() {
    return 'StoreBasicDetailsModel(image: $image, name: $name, location: $location, geoPoint: $geoPoint, openTimings: $openTimings, closingTimings: $closingTimings, contactNo: $contactNo, messageUid: $messageUid, isDelivery: $isDelivery, storeId: $storeId, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is StoreBasicDetailsModel &&
        other.image == image &&
        other.name == name &&
        other.location == location &&
        other.geoPoint == geoPoint &&
        other.openTimings == openTimings &&
        other.closingTimings == closingTimings &&
        other.contactNo == contactNo &&
        other.messageUid == messageUid &&
        other.isDelivery == isDelivery &&
        other.storeId == storeId &&
        other.category == category &&
        listEquals(other.productCategories, productCategories) &&
        other.timestamp == timestamp &&
        other.college == college &&
        other.city == city;
  }

  @override
  int get hashCode {
    return image.hashCode ^
        name.hashCode ^
        location.hashCode ^
        geoPoint.hashCode ^
        openTimings.hashCode ^
        closingTimings.hashCode ^
        contactNo.hashCode ^
        messageUid.hashCode ^
        isDelivery.hashCode ^
        storeId.hashCode ^
        category.hashCode ^
        productCategories.hashCode ^
        timestamp.hashCode ^
        college.hashCode ^
        city.hashCode;
  }
}
