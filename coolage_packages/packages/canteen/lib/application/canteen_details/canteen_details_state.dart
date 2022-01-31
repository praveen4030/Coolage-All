part of 'canteen_details_bloc.dart';

@freezed
class CanteenDetailsState with _$CanteenDetailsState {
  const factory CanteenDetailsState({
    @required bool? isShowingVeg,
    @required bool? isShowingNonVeg,
    @required bool? isCanteensListLoading,
    @required bool? isCanteensNearbyListLoading,
    @required bool? isCanteenDetailsLoading,
    @required bool? isCartLoading,
    @required bool? isPlacingOrder,
    @required bool? isModifyingCartItems,
    @required Option<FirebaseFailure>? canteenslistFailureOrSuccess,
    @required Option<FirebaseFailure>? canteenDetailsFailureOrSuccess,
    @required Option<FirebaseFailure>? canteenCartFailureOrSuccess,
    @required
        Option<Either<FirebaseFailure, String>>? placeOrderFailureOrSuccess,
    @required List<CanteenBasicDetailsModel>? canteensList,
    @required List<CanteenBasicDetailsModel>? canteensNearbyList,
    @required Map<String, CartModel>? cartItemsMap,
    @required List<MenuCategoryModel>? menuCategoriesList,
    @required Map<String, List<ItemModel>>? menuCategoryWiseItemsMap,
    //will store all the fetched canteen details in this map
    @required List<ItemModel>? canteenItemsList,
    @required bool? isShowingBackToTop,
    required int deliveryAddressIndex,
  }) = _CanteenDetailsState;
  factory CanteenDetailsState.initial() => CanteenDetailsState(
        deliveryAddressIndex: 0,
        isModifyingCartItems: false,
        isShowingNonVeg: false,
        isShowingVeg: false,
        isCanteensListLoading: false,
        isCartLoading: false,
        isPlacingOrder: false,
        isCanteenDetailsLoading: false,
        canteenslistFailureOrSuccess: none(),
        canteenDetailsFailureOrSuccess: none(),
        canteenCartFailureOrSuccess: none(),
        placeOrderFailureOrSuccess: none(),
        canteensList: [],
        canteenItemsList: [],
        cartItemsMap: {},
        isCanteensNearbyListLoading: false,
        canteensNearbyList: [],
        menuCategoryWiseItemsMap: {},
        menuCategoriesList: [],
        isShowingBackToTop: false,
      );
}
