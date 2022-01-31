import 'dart:io';

import 'package:chat/domain/message.dart';
import 'package:core/core.dart';

import 'package:dartz/dartz.dart';

import 'chat.dart';

abstract class IChatRepository {
  Future<Either<FirebaseFailure, List<MessageModel>>> getMessages(
    ChatModel chatModel,
  );
  Future<Either<FirebaseFailure, List<MessageModel>>> getMoreMessages(
    ChatModel chatModel,
    MessageModel chat,
  );
  Future<Either<FirebaseFailure, Unit>> sendMessage(
    ChatModel chatModel,
    String text,
    int type,
  );

  Future<Either<FirebaseFailure, String>> sendFile(
    ChatModel chatModel,
    File file,
  );
  // Future<Either<FirebaseFailure, Feed>> addDocumenet(
  //     {CoolUser coolUser, String caption, File file});
  // Future<Either<FirebaseFailure, Feed>> addPoll(
  //     {CoolUser coolUser, String caption, List<dynamic> optionsList});
}
