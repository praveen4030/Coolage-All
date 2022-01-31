part of 'chats_bloc.dart';

@freezed
abstract class ChatsEvent with _$ChatsEvent {
  const factory ChatsEvent.getMessages({
    ChatModel? chatModel,
  }) = _GetMessages;
  const factory ChatsEvent.getMoreMessages({
    ChatModel? chatModel,
  }) = _GetMoreMessages;
  const factory ChatsEvent.sendFile({
    ChatModel? chatModel,
    File? file,
    int? type,
  }) = _SendFile;
  const factory ChatsEvent.sendMessage({
    ChatModel? chatModel,
    String? message,
    int? type,
  }) = _SendMessage;

  const factory ChatsEvent.addNewMessage({
    MessageModel? messageModel,
  }) = _AddNewMessage;
}
