import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolage_merchant/domain/models/ongoing_orders_count_model.dart';
import 'package:coolage_merchant/presentation/core/functions/functions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CanteenBasicDetailsModel {
  String? name;
  String? location;
  String? address;
  TimeOfDay? openAtTimeOfDay;
  TimeOfDay? closeAtTimeOfDay;
  bool? isOpen;
  bool? isLive;
  bool? isDelivery;
  String? image;
  String? canteenId;
  String? contactNo;
  GeoPoint? geoPoint;
  String? contactChatUid;
  List<String>? categoriesList;
  String? college;
  String? canteenAdminContactNo;
  String? canteenAdminName;
  String? canteenAdminUid;
  int? discount;
  int? deliveryCharges;
  Map<String, String>? deviceTokensMap;
  OngoingOrdersCountModel? ongoingOrdersCountModel;
  int? minimumDeliveryPrice;
  Timestamp? canteenOpeningTimestamp;

  CanteenBasicDetailsModel({
    this.name,
    this.location,
    this.address,
    this.openAtTimeOfDay,
    this.closeAtTimeOfDay,
    this.isOpen,
    this.isDelivery,
    this.image,
    this.isLive,
    this.canteenId,
    this.contactNo,
    this.geoPoint,
    this.contactChatUid,
    this.categoriesList,
    this.college,
    this.canteenAdminContactNo,
    this.canteenAdminName,
    this.canteenAdminUid,
    this.deliveryCharges,
    this.discount,
    this.deviceTokensMap,
    this.ongoingOrdersCountModel,
    this.minimumDeliveryPrice,
    this.canteenOpeningTimestamp,
  });
  CanteenBasicDetailsModel.empty();

  int timeToDouble(TimeOfDay myTime) => myTime.hour * 60 + myTime.minute;

  bool isClosed() {
    final currentTime = TimeOfDay.now();
    final currentTimeDouble = timeToDouble(currentTime);
    final closingTimeDouble = timeToDouble(closeAtTimeOfDay!);
    final openingTimeDouble = timeToDouble(openAtTimeOfDay!);
    bool isTimingWiseClosed = true;
    if (currentTimeDouble > openingTimeDouble &&
        currentTimeDouble < closingTimeDouble) {
      isTimingWiseClosed = false;
    }

    if (isTimingWiseClosed || !isOpen!) {
      return true;
    }
    return false;
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'location': location,
      'address': address,
      'openAtTimeOfDay': Functions.convertTimeOfDayToTimestamp(openAtTimeOfDay),
      'closeAtTimeOfDay':
          Functions.convertTimeOfDayToTimestamp(closeAtTimeOfDay),
      'isOpen': isOpen,
      'isDelivery': isDelivery,
      'image': image,
      'canteenId': canteenId,
      'contactNo': contactNo,
      'geoPoint': geoPoint,
      'isLive': isLive ?? false,
      'contactChatUid': contactChatUid,
      'categoriesList': categoriesList,
      'college': college,
      'discount': discount,
      'deliveryCharges': deliveryCharges,
      'deviceTokensMap': deviceTokensMap ?? {},
      'canteenAdminContactNo': canteenAdminContactNo,
      'canteenAdminName': canteenAdminName,
      'canteenAdminUid': canteenAdminUid,
      'ongoingOrdersCountModel': ongoingOrdersCountModel?.toMap() ?? {},
      'minimumDeliveryPrice': minimumDeliveryPrice ?? 50,
      'canteenOpeningTimestamp': canteenOpeningTimestamp,
    };
  }

  factory CanteenBasicDetailsModel.fromMap(Map<String, dynamic> map) {
    return CanteenBasicDetailsModel(
        name: map['name'] as String,
        location: map['location'] as String,
        address: map['address'] as String,
        openAtTimeOfDay: map['openAtTimeOfDay'] != null
            ? TimeOfDay.fromDateTime(
                (map['openAtTimeOfDay'] as Timestamp).toDate())
            : null,
        closeAtTimeOfDay: map['closeAtTimeOfDay'] != null
            ? TimeOfDay.fromDateTime(
                (map['closeAtTimeOfDay'] as Timestamp).toDate())
            : null,
        isOpen: map['isOpen'] as bool,
        isDelivery: map['isDelivery'] as bool,
        image: map['image'] as String,
        canteenId: map['canteenId'] as String,
        contactNo: map['contactNo'] as String,
        geoPoint: map['geoPoint'] as GeoPoint,
        contactChatUid: map['contactChatUid'] as String,
        college: map['college'] as String,
        categoriesList: List<String>.from(
            (map['categoriesList'] as List).map((e) => e as String)),
        deliveryCharges:
            int.tryParse(map['deliveryCharges']?.toString() ?? '0'),
        discount: int.tryParse(map['discount']?.toString() ?? '0'),
        deviceTokensMap: map['deviceTokensMap'] != null
            ? (map['deviceTokensMap'] as Map)
                .map((key, value) => MapEntry(key as String, value as String))
            : {},
        canteenAdminContactNo: map['canteenAdminContactNo'] as String,
        canteenAdminUid: map['canteenAdminUid'] as String,
        canteenAdminName: map['canteenAdminName'] as String,
        isLive: map['isLive'] != null ? map['isLive'] as bool : false,
        canteenOpeningTimestamp: map['canteenOpeningTimestamp'] as Timestamp,
        ongoingOrdersCountModel: map['ongoingOrdersCountModel'] == null
            ? OngoingOrdersCountModel.empty()
            : OngoingOrdersCountModel.fromMap(
                map['ongoingOrdersCountModel'] as Map<String, dynamic>),
        minimumDeliveryPrice:
            int.tryParse(map['minimumDeliveryPrice']?.toString() ?? '50'));
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CanteenBasicDetailsModel &&
        other.name == name &&
        other.location == location &&
        other.address == address &&
        other.openAtTimeOfDay == openAtTimeOfDay &&
        other.closeAtTimeOfDay == closeAtTimeOfDay &&
        other.isOpen == isOpen &&
        other.isDelivery == isDelivery &&
        other.image == image &&
        other.canteenId == canteenId &&
        other.contactNo == contactNo &&
        other.geoPoint == geoPoint &&
        other.contactChatUid == contactChatUid &&
        listEquals(other.categoriesList, categoriesList) &&
        other.college == college &&
        other.isLive == isLive &&
        other.canteenOpeningTimestamp == canteenOpeningTimestamp &&
        other.minimumDeliveryPrice == minimumDeliveryPrice &&
        other.canteenAdminContactNo == canteenAdminContactNo &&
        other.canteenAdminName == canteenAdminName &&
        other.canteenAdminUid == canteenAdminUid &&
        other.discount == discount &&
        other.deliveryCharges == deliveryCharges &&
        mapEquals(other.deviceTokensMap, deviceTokensMap) &&
        other.ongoingOrdersCountModel == ongoingOrdersCountModel;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        location.hashCode ^
        address.hashCode ^
        openAtTimeOfDay.hashCode ^
        closeAtTimeOfDay.hashCode ^
        isOpen.hashCode ^
        isDelivery.hashCode ^
        image.hashCode ^
        canteenId.hashCode ^
        contactNo.hashCode ^
        geoPoint.hashCode ^
        isLive.hashCode ^
        contactChatUid.hashCode ^
        minimumDeliveryPrice.hashCode ^
        categoriesList.hashCode ^
        college.hashCode ^
        canteenAdminContactNo.hashCode ^
        canteenAdminName.hashCode ^
        canteenAdminUid.hashCode ^
        discount.hashCode ^
        canteenOpeningTimestamp.hashCode ^
        deliveryCharges.hashCode ^
        deviceTokensMap.hashCode ^
        ongoingOrdersCountModel.hashCode;
  }

  @override
  String toString() {
    return 'CanteenBasicDetailsModel(name: $name, location: $location, address: $address, openAtTimeOfDay: $openAtTimeOfDay, closeAtTimeOfDay: $closeAtTimeOfDay, isOpen: $isOpen, isDelivery: $isDelivery, image: $image, canteenId: $canteenId, contactNo: $contactNo, geoPoint: $geoPoint, contactChatUid: $contactChatUid, categoriesList: $categoriesList, college: $college, canteenAdminContactNo: $canteenAdminContactNo, canteenAdminName: $canteenAdminName, canteenAdminUid: $canteenAdminUid, discount: $discount, deliveryCharges: $deliveryCharges, deviceTokensMap: $deviceTokensMap, ongoingOrdersCountModel: $ongoingOrdersCountModel)';
  }
}
