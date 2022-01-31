import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

import 'package:core/core.dart';

class ChatModel {
  final String? text;
  final bool? isSeen;
  final Timestamp? timestamp;
  final String? docId;
  final List<String>? usersList;
  final String? senderUid;
  final String? senderName;
  final String? senderImage;
  final double? unseenMessagesCount;
  ChatModel({
    this.text,
    this.isSeen,
    this.timestamp,
    this.docId,
    this.usersList,
    this.senderUid,
    this.senderName,
    this.senderImage,
    this.unseenMessagesCount,
  });

  ChatModel copyWith({
    String? text,
    bool? isSeen,
    Timestamp? timestamp,
    String? docId,
    List<String>? usersList,
    String? senderUid,
    String? senderName,
    String? senderImage,
    double? unseenMessagesCount,
  }) {
    return ChatModel(
      text: text ?? this.text,
      isSeen: isSeen ?? this.isSeen,
      timestamp: timestamp ?? this.timestamp,
      docId: docId ?? this.docId,
      usersList: usersList ?? this.usersList,
      senderUid: senderUid ?? this.senderUid,
      senderName: senderName ?? this.senderName,
      senderImage: senderImage ?? this.senderImage,
      unseenMessagesCount: unseenMessagesCount ?? this.unseenMessagesCount,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'text': text,
      'isSeen': isSeen,
      'timestamp': timestamp,
      'docId': docId,
      'usersList': usersList,
      'senderUid': senderUid,
      'senderName': senderName,
      'senderImage': senderImage,
      'unseenMessagesCount': unseenMessagesCount,
    };
  }

  factory ChatModel.fromMap(Map<String, dynamic> map) {
    return ChatModel(
      text: map['text'] as String,
      isSeen: map['isSeen'] as bool,
      timestamp: map['timestamp'] as Timestamp,
      docId: map['docId'] as String,
      usersList:
          List<String>.from((map['usersList'] as List).map((e) => e as String)),
      senderUid: map['senderUid'] as String,
      senderName: map['senderName'] as String,
      senderImage: map['senderImage'] as String,
      unseenMessagesCount: double.parse(map['unseenMessagesCount'].toString()),
    );
  }

  @override
  String toString() {
    return 'ChatModel(text: $text, isSeen: $isSeen, timestamp: $timestamp, docId: $docId, usersList: $usersList, senderUid: $senderUid, senderName: $senderName, senderImage: $senderImage, unseenMessagesCount: $unseenMessagesCount)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ChatModel &&
        other.text == text &&
        other.isSeen == isSeen &&
        other.timestamp == timestamp &&
        other.docId == docId &&
        listEquals(other.usersList, usersList) &&
        other.senderUid == senderUid &&
        other.senderName == senderName &&
        other.senderImage == senderImage &&
        other.unseenMessagesCount == unseenMessagesCount;
  }

  @override
  int get hashCode {
    return text.hashCode ^
        isSeen.hashCode ^
        timestamp.hashCode ^
        docId.hashCode ^
        usersList.hashCode ^
        senderUid.hashCode ^
        senderName.hashCode ^
        senderImage.hashCode ^
        unseenMessagesCount.hashCode;
  }
}
