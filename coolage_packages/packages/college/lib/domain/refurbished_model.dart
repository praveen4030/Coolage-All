import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class RefurbishedModel {
  String? name;
  String? image;
  double? price;
  bool? isFixed;
  String? sellerName;
  Timestamp? timestamp;
  String? desc;
  Timestamp? inUseSince;
  String? sellerContactNo;
  String? sellerUid;

  RefurbishedModel({
    this.name,
    this.image,
    this.price,
    this.isFixed,
    this.sellerName,
    this.timestamp,
    this.desc,
    this.inUseSince,
    this.sellerContactNo,
    this.sellerUid,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'image': image,
      'price': price,
      'isFixed': isFixed,
      'sellerName': sellerName,
      'timestamp': timestamp,
      'desc': desc,
      'inUseSince': inUseSince,
      'sellerContactNo': sellerContactNo,
      'sellerUid': sellerUid,
    };
  }

  factory RefurbishedModel.fromMap(Map<String, dynamic> map) {
    return RefurbishedModel(
      name: map['name'] as String,
      image: map['image'] as String,
      price: double.parse(map['price'].toString()),
      isFixed: map['isFixed'] as bool,
      sellerName: map['sellerName'] as String,
      timestamp: map['timestamp'] as Timestamp,
      desc: map['desc'] as String,
      inUseSince: map['inUseSince'] as Timestamp,
      sellerContactNo: map['sellerContactNo'] as String,
      sellerUid: map['sellerUid'] as String,
    );
  }

  @override
  String toString() {
    return 'RefurbishedModel(name: $name, image: $image, price: $price, isFixed: $isFixed, sellerName: $sellerName, timestamp: $timestamp, desc: $desc, inUseSince: $inUseSince, sellerContactNo: $sellerContactNo, sellerUid: $sellerUid)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is RefurbishedModel &&
        other.name == name &&
        other.image == image &&
        other.price == price &&
        other.isFixed == isFixed &&
        other.sellerName == sellerName &&
        other.timestamp == timestamp &&
        other.desc == desc &&
        other.inUseSince == inUseSince &&
        other.sellerContactNo == sellerContactNo &&
        other.sellerUid == sellerUid;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        image.hashCode ^
        price.hashCode ^
        isFixed.hashCode ^
        sellerName.hashCode ^
        timestamp.hashCode ^
        desc.hashCode ^
        inUseSince.hashCode ^
        sellerContactNo.hashCode ^
        sellerUid.hashCode;
  }
}
