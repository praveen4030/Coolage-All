import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class ContactInfoGroupModel {
  String? type;
  String? title;
  String? value;
  String? id;
  Timestamp? timestamp;
  ContactInfoGroupModel({
    this.type,
    this.title,
    this.value,
    this.id,
    this.timestamp,
  });

  ContactInfoGroupModel copyWith({
    String? type,
    String? title,
    String? value,
    String? id,
    Timestamp? timestamp,
  }) {
    return ContactInfoGroupModel(
      type: type ?? this.type,
      title: title ?? this.title,
      value: value ?? this.value,
      id: id ?? this.id,
      timestamp: timestamp ?? this.timestamp,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'type': type,
      'title': title,
      'value': value,
      'id': id,
      'timestamp': timestamp,
    };
  }

  factory ContactInfoGroupModel.fromMap(Map<String, dynamic> map) {
    return ContactInfoGroupModel(
      type: map['type'],
      title: map['title'],
      value: map['value'],
      id: map['id'],
      timestamp:
          map['timestamp'] != null ? map['timestamp'] as Timestamp : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ContactInfoGroupModel.fromJson(String source) =>
      ContactInfoGroupModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ContactInfoGroupModel(type: $type, title: $title, value: $value, id: $id, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ContactInfoGroupModel &&
        other.type == type &&
        other.title == title &&
        other.value == value &&
        other.id == id &&
        other.timestamp == timestamp;
  }

  @override
  int get hashCode {
    return type.hashCode ^
        title.hashCode ^
        value.hashCode ^
        id.hashCode ^
        timestamp.hashCode;
  }
}
