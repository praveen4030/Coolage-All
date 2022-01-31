part of 'canteen_cards_bloc.dart';

@freezed
abstract class CanteenCardsState with _$CanteenCardsState {
  const factory CanteenCardsState({
    @required List<Cards>? canteenCardsList,
    @required bool? isCanteenCardsLoading,
    @required Option<FirebaseFailure>? canteenFailureOrSuccessOption,
  }) = _CanteenCardsState;

  factory CanteenCardsState.initial() => CanteenCardsState(
        canteenFailureOrSuccessOption: none(),
        isCanteenCardsLoading: false,
        canteenCardsList: [],
      );
}
