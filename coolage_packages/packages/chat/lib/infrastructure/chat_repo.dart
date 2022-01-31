import 'dart:io';

import 'package:chat/domain/chat.dart';
import 'package:chat/domain/i_chat_repo.dart';
import 'package:chat/domain/message.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/core.dart';
import 'package:user/user.dart';

import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IChatRepository)
class ChatRepository extends IChatRepository {
  final FirebaseFirestore _firestore;
  final Reference _storageReference;

  ChatRepository(
    this._firestore,
    this._storageReference,
  );

  @override
  Future<Either<FirebaseFailure, List<MessageModel>>> getMessages(
    ChatModel chatModel,
  ) async {
    // TODO: implement getMessages
    try {
      final chatsDoc = await _firestore.chatRoomCollection
          .doc(chatModel.docId)
          .chatsCollection
          .orderBy('timestamp', descending: true)
          .limit(Constants.MESSAGES_LIMIT)
          .get();

      final List<MessageModel> messageList = chatsDoc.docs
          .map((snapshot) =>
              MessageModel.fromMap(snapshot.data()! as Map<String, dynamic>))
          .toList();

      return right(messageList);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, List<MessageModel>>> getMoreMessages(
    ChatModel chatModel,
    MessageModel chat,
  ) async {
    // TODO: implement getMoreMessages
    try {
      final chatsDoc = await _firestore.chatRoomCollection
          .doc(chatModel.docId)
          .chatsCollection
          .orderBy('timestamp', descending: true)
          .startAfter([chat.timestamp])
          .limit(Constants.MESSAGES_LIMIT)
          .get();

      final List<MessageModel> messagesList = chatsDoc.docs
          .map((snapshot) =>
              MessageModel.fromMap(snapshot.data()! as Map<String, dynamic>))
          .toList();
      return right(messagesList);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, String>> sendFile(
    ChatModel chatModel,
    File file,
  ) async {
    // TODO: implement sendFile
    try {
      String fileName = DateTime.now().millisecondsSinceEpoch.toString();
      final UploadTask uploadTask = _storageReference
          .child("Chats")
          .child(fileName)
          .child(Getters.getCurrentUserUid())
          .putFile(file);
      final TaskSnapshot storageSnap = await uploadTask.whenComplete(() {});
      final String fileUrl = await storageSnap.ref.getDownloadURL();

      return right(fileUrl);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> sendMessage(
    ChatModel chatModel,
    String text,
    int type,
  ) async {
    // TODO: implement sendMessage
    try {
      // final user = Getters.getCurrentUser(null);
      final messageDoc = FirebaseFirestore.instance.chatRoomCollection
          .doc(chatModel.docId)
          .chatsCollection
          .doc();

      final MessageModel messageModel = MessageModel(
        text: text,
        senderUid: Getters.getCurrentUserUid(),
        timestamp: Timestamp.now(),
        type: type,
        docId: messageDoc.id,
        isSeen: false,
      );

      await FirebaseFirestore.instance.chatRoomCollection
          .doc(chatModel.docId)
          .set(chatModel.toMap(), SetOptions(merge: true))
          .catchError((e) {
        debugPrint(e.toString());
      });

      await messageDoc.set(messageModel.toMap()).catchError(
        (e) {
          debugPrint(e.toString());
        },
      );
      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }
}
