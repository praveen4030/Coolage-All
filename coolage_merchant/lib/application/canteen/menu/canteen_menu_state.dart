part of 'canteen_menu_bloc.dart';

@freezed
class CanteenMenuState with _$CanteenMenuState {
  const factory CanteenMenuState({
    @required bool? isMenuLoading,
    @required bool? isMenuItemLoading,
    @required bool? isDeleteItemLoading,
    @required bool? isAddCategoryLoading,
    @required Option<FirebaseFailure>? failureOrSuccessMenu,
    @required Option<Either<FirebaseFailure, Unit>>? itemFailureOrSuccess,
    @required Option<Either<FirebaseFailure, Unit>>? itemDeleteFailureOrSuccess,
    @required
        Option<Either<FirebaseFailure, String>>? addCategoryFailureOrSuccess,
    @required List<ItemModel>? menuItemsList,
  }) = _CanteenMenuState;

  factory CanteenMenuState.initial() => CanteenMenuState(
        isMenuLoading: false,
        failureOrSuccessMenu: none(),
        menuItemsList: [],
        isMenuItemLoading: false,
        itemFailureOrSuccess: none(),
        itemDeleteFailureOrSuccess: none(),
        isDeleteItemLoading: false,
        isAddCategoryLoading: false,
        addCategoryFailureOrSuccess: none(),
      );
}
