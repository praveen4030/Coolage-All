import 'package:chat/domain/chat.dart';
import 'package:chat/domain/i_inbox_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/core.dart';
import 'package:user/user.dart';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IInboxRepository)
class InboxRepository extends IInboxRepository {
  final FirebaseFirestore _firestore;
  InboxRepository(
    this._firestore,
  );

  @override
  Future<Either<FirebaseFailure, List<ChatModel>>> getChats() async {
    try {
      final chatsDoc = await _firestore.chatRoomCollection
          .where('usersList', arrayContains: Getters.getCurrentUserUid())
          .orderBy('timestamp', descending: true)
          .limit(Constants.CHATS_LIMIT)
          .get();

      final List<ChatModel> postsList = chatsDoc.docs
          .map((snapshot) =>
              ChatModel.fromMap(snapshot.data()! as Map<String, dynamic>))
          .toList();

      return right(postsList);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, List<ChatModel>>> getMoreChats(
    ChatModel chat,
  ) async {
    try {
      final chatsDoc = await _firestore.chatRoomCollection
          .where('users', arrayContains: Getters.getCurrentUserUid())
          .orderBy('timestamp', descending: true)
          .startAfter([chat.timestamp])
          .limit(Constants.CHATS_LIMIT)
          .get();

      final List<ChatModel> postsList = chatsDoc.docs
          .map((snapshot) =>
              ChatModel.fromMap(snapshot.data()! as Map<String, dynamic>))
          .toList();
      return right(postsList);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }
}
