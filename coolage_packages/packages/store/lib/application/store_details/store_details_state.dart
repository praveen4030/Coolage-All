part of 'store_details_bloc.dart';

@freezed
class StoreDetailsState with _$StoreDetailsState {
  const factory StoreDetailsState({
    @required bool? isStoresListLoading,
    @required bool? isStoreProductsListLoading,
    //failures
    @required Option<FirebaseFailure>? collegeStoresListFailureOrSuccess,
    @required Option<FirebaseFailure>? storeProductsListFailureOrSuccess,
    @required Option<Either<FirebaseFailure, Unit>>? addToCartFailureOrSuccess,
    @required List<ItemModel>? storeProductsList,
    @required @required List<StoreBasicDetailsModel>? collegeStoresList,
  }) = _StoreDetailsState;
  factory StoreDetailsState.initial() => StoreDetailsState(
        isStoresListLoading: false,
        isStoreProductsListLoading: false,
        collegeStoresListFailureOrSuccess: none(),
        storeProductsListFailureOrSuccess: none(),
        addToCartFailureOrSuccess: none(),
        storeProductsList: [],
        collegeStoresList: [],
      );
}
