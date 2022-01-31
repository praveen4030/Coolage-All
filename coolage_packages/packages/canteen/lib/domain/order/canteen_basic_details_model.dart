import 'package:canteen/domain/models/canteen_geopoint.dart';
import 'package:canteen/domain/models/deliverable_zones_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:core/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'canteen_basic_details_model.g.dart';

@HiveType(typeId: HiveConstants.canteenBasicDetailsModel)
class CanteenBasicDetailsModel {
  @HiveField(0)
  String? about;
  @HiveField(1)
  String? preperationTime;
  // @HiveField(2)
  CanteenGeopointModel? canteenGeopointModel;
  @HiveField(2)
  String? name;
  @HiveField(3)
  String? location;
  @HiveField(4)
  String? address;
  // @HiveField(5)
  TimeOfDay? openAtTimeOfDay;
  // @HiveField(6)
  TimeOfDay? closeAtTimeOfDay;
  @HiveField(5)
  bool? isOpen;
  @HiveField(6)
  bool? isLive;
  @HiveField(7)
  bool? isDelivery;
  @HiveField(8)
  String? image;
  @HiveField(9)
  String? canteenId;
  @HiveField(10)
  String? contactNo;
  // @HiveField(13)
  GeoPoint? geoPoint;
  @HiveField(11)
  String? contactChatUid;
  @HiveField(12)
  List<String>? categoriesList;
  @HiveField(13)
  String? college;
  @HiveField(14)
  String? canteenAdminContactNo;
  @HiveField(15)
  String? canteenAdminName;
  @HiveField(16)
  String? canteenAdminUid;
  @HiveField(17)
  Map<String, String>? deviceTokensMap;
  // @HiveField(21)
  Timestamp? canteenOpeningTimestamp;
  @HiveField(20)
  List<DeliverableZonesModel>? deliveryZonesList;

  CanteenBasicDetailsModel({
    this.canteenGeopointModel,
    this.about,
    this.preperationTime,
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
    this.deviceTokensMap,
    this.canteenOpeningTimestamp,
    this.deliveryZonesList,
  });
  CanteenBasicDetailsModel.empty();

  String getDeliveryChargeRange() {
    int min = 0;
    int max = 0;
    if (deliveryZonesList?.isNotEmpty ?? false) {
      min = deliveryZonesList!.first.deliveryCharge!;
      max = deliveryZonesList!.first.deliveryCharge!;
    } else {
      return '';
    }

    for (final model in deliveryZonesList!) {
      if (min > model.deliveryCharge!) {
        min = model.deliveryCharge!;
      }
      if (max < model.deliveryCharge!) {
        max = model.deliveryCharge!;
      }
    }
    if (min == max) {
      return '₹ $min';
    }
    return '₹ $min - ₹ $max';
  }

  List<String> getDelioveryZonesName() {
    List<String> list = [];
    deliveryZonesList?.forEach((element) {
      list.add(element.zone!);
    });
    return list;
  }

  int timeToDouble(TimeOfDay myTime) => myTime.hour * 60 + myTime.minute;

  bool isClosed() {
    final currentTime = TimeOfDay.now();
    final currentTimeDouble = timeToDouble(currentTime);
    if (closeAtTimeOfDay == null || openAtTimeOfDay == null) {
      return false;
    }
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
      'canteenGeopointModel': canteenGeopointModel?.toMap(),
      'about': about,
      'preperationTime': preperationTime,
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
      'deviceTokensMap': deviceTokensMap ?? {},
      'canteenAdminContactNo': canteenAdminContactNo,
      'canteenAdminName': canteenAdminName,
      'canteenAdminUid': canteenAdminUid,
      'canteenOpeningTimestamp': canteenOpeningTimestamp,
      'deliveryZonesList':
          deliveryZonesList?.map((e) => e.toMap()).toList() ?? [],
    };
  }

  factory CanteenBasicDetailsModel.fromMap(Map<String, dynamic> map) {
    return CanteenBasicDetailsModel(
      about: map['about'] as String,
      preperationTime: map['preperationTime'] as String,
      canteenGeopointModel: map['point'] != null
          ? CanteenGeopointModel.fromMap(map['point'] as Map<String, dynamic>)
          : null,
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
      deviceTokensMap: map['deviceTokensMap'] != null
          ? (map['deviceTokensMap'] as Map)
              .map((key, value) => MapEntry(key as String, value as String))
          : {},
      canteenAdminContactNo: map['canteenAdminContactNo'] as String,
      canteenAdminUid: map['canteenAdminUid'] as String,
      canteenAdminName: map['canteenAdminName'] as String,
      isLive: map['isLive'] != null ? map['isLive'] as bool : false,
      canteenOpeningTimestamp: map['canteenOpeningTimestamp'] as Timestamp,
      deliveryZonesList: map['deliveryZonesList'] == null
          ? []
          : (map['deliveryZonesList'] as List)
              .map((e) =>
                  DeliverableZonesModel.fromMap(e as Map<String, dynamic>))
              .toList(),
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CanteenBasicDetailsModel &&
        other.about == about &&
        other.preperationTime == preperationTime &&
        other.canteenGeopointModel == canteenGeopointModel &&
        other.name == name &&
        other.location == location &&
        other.address == address &&
        other.openAtTimeOfDay == openAtTimeOfDay &&
        other.closeAtTimeOfDay == closeAtTimeOfDay &&
        other.isOpen == isOpen &&
        other.isLive == isLive &&
        other.isDelivery == isDelivery &&
        other.image == image &&
        other.canteenId == canteenId &&
        other.contactNo == contactNo &&
        other.geoPoint == geoPoint &&
        other.contactChatUid == contactChatUid &&
        listEquals(other.categoriesList, categoriesList) &&
        other.college == college &&
        other.canteenAdminContactNo == canteenAdminContactNo &&
        other.canteenAdminName == canteenAdminName &&
        other.canteenAdminUid == canteenAdminUid &&
        mapEquals(other.deviceTokensMap, deviceTokensMap) &&
        other.canteenOpeningTimestamp == canteenOpeningTimestamp &&
        listEquals(other.deliveryZonesList, deliveryZonesList);
  }

  @override
  int get hashCode {
    return about.hashCode ^
        preperationTime.hashCode ^
        canteenGeopointModel.hashCode ^
        name.hashCode ^
        location.hashCode ^
        address.hashCode ^
        openAtTimeOfDay.hashCode ^
        closeAtTimeOfDay.hashCode ^
        isOpen.hashCode ^
        isLive.hashCode ^
        isDelivery.hashCode ^
        image.hashCode ^
        canteenId.hashCode ^
        contactNo.hashCode ^
        geoPoint.hashCode ^
        contactChatUid.hashCode ^
        categoriesList.hashCode ^
        college.hashCode ^
        canteenAdminContactNo.hashCode ^
        canteenAdminName.hashCode ^
        canteenAdminUid.hashCode ^
        deviceTokensMap.hashCode ^
        canteenOpeningTimestamp.hashCode ^
        deliveryZonesList.hashCode;
  }
}
