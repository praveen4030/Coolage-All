part of 'refurbished_bloc.dart';

@freezed
class RefurbishedState with _$RefurbishedState {
  const factory RefurbishedState({
    @required bool? hasMore,
    @required bool? isLoading,
    @required bool? isAddingMoreLoading,
    @required Option<FirebaseFailure>? failureOrSuccessOption,
    @required List<RefurbishedModel>? refurbishedItemsList,
  }) = _RefurbishedState;
  factory RefurbishedState.initial() => RefurbishedState(
      hasMore: true,
      isLoading: false,
      isAddingMoreLoading: false,
      failureOrSuccessOption: none(),
      refurbishedItemsList: []);
}
