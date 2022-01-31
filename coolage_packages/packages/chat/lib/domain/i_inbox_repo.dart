import 'package:core/core.dart';
import 'package:dartz/dartz.dart';

import 'chat.dart';

abstract class IInboxRepository {
  Future<Either<FirebaseFailure, List<ChatModel>>> getChats();
  Future<Either<FirebaseFailure, List<ChatModel>>> getMoreChats(ChatModel chat);
}
