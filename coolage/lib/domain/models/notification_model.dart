import 'package:cloud_firestore/cloud_firestore.dart';

class NotificationModel {
  String? image;
  String? name;
  String? desc;
  Timestamp? timestamp;
  NotificationModel({
    this.image,
    this.name,
    this.desc,
    this.timestamp,
  });
}
