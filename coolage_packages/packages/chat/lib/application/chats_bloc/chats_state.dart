part of 'chats_bloc.dart';

@freezed
abstract class ChatsState with _$ChatsState {
  const factory ChatsState({
    @required bool? hasMore,
    @required bool? isLoading,
    @required bool? isAddingMoreLoading,
    @required List<MessageModel>? messagesList,
    @required Option<FirebaseFailure>? failureOrSuccessOption,
  }) = _ChatsState;

  factory ChatsState.initial() => ChatsState(
        messagesList: [],
        hasMore: true,
        isLoading: false,
        failureOrSuccessOption: none(),
        isAddingMoreLoading: false,
      );
}
