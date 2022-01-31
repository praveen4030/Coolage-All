part of 'inbox_bloc.dart';

@freezed
abstract class InboxState with _$InboxState {
  const factory InboxState({
    @required bool? hasMore,
    @required bool? isLoading,
    @required bool? isAddingMoreLoading,
    @required List<ChatModel>? chatsList,
    @required Option<FirebaseFailure>? failureOrSuccessOption,
  }) = _InboxState;

  factory InboxState.initial() => InboxState(
        chatsList: [],
        hasMore: true,
        isLoading: false,
        isAddingMoreLoading: false,
        failureOrSuccessOption: none(),
      );
}
