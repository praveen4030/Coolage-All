import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MessageModel {
  final String? text;
  final String? senderUid;
  final String? docId;
  final Timestamp? timestamp;
  final int? type;
  final bool? isSeen;
  MessageModel({
    this.text,
    this.senderUid,
    this.docId,
    this.timestamp,
    this.type,
    this.isSeen,
  });

  Map<String, dynamic> toMap() {
    return {
      'text': text,
      'senderUid': senderUid,
      'docId': docId,
      'timestamp': timestamp,
      'type': type,
      'isSeen': isSeen,
    };
  }

  factory MessageModel.fromMap(Map<String, dynamic> map) {
    return MessageModel(
      text: map['text'] as String,
      senderUid: map['senderUid'] as String,
      docId: map['docId'] as String,
      timestamp: map['timestamp'] as Timestamp,
      type: map['type'] as int,
      isSeen: map['isSeen'] as bool,
    );
  }

  @override
  String toString() {
    return 'MessageModel(text: $text, senderUid: $senderUid, docId: $docId, timestamp: $timestamp, type: $type, isSeen: $isSeen)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MessageModel &&
        other.text == text &&
        other.senderUid == senderUid &&
        other.docId == docId &&
        other.timestamp == timestamp &&
        other.type == type &&
        other.isSeen == isSeen;
  }

  @override
  int get hashCode {
    return text.hashCode ^
        senderUid.hashCode ^
        docId.hashCode ^
        timestamp.hashCode ^
        type.hashCode ^
        isSeen.hashCode;
  }
}
