part of 'inbox_bloc.dart';

@freezed
abstract class InboxEvent with _$InboxEvent {
  const factory InboxEvent.fetchChats() = _FetchChats;
  const factory InboxEvent.fetchMoreChats() = _FetchMoreChats;
  const factory InboxEvent.newChatAdded({
    ChatModel? chatModel,
  }) = _NewChatAdded;
}
