part of 'store_cart_bloc.dart';

@freezed
class StoreCartState with _$StoreCartState {
  const factory StoreCartState({
    @required bool? isStoreCartLoading,
    @required bool? isPlacingOrder,
    @required Option<FirebaseFailure>? storeCartFailureOrSuccess,
    @required Option<Either<FirebaseFailure, Unit>>? placeOrderFailureOrSuccess,
    @required Map<String, CartModel>? cartItemsMap,
    @required bool? isUpdatingCart,
  }) = _StoreCartState;
  factory StoreCartState.initial() => StoreCartState(
        isStoreCartLoading: false,
        isPlacingOrder: false,
        storeCartFailureOrSuccess: none(),
        placeOrderFailureOrSuccess: none(),
        cartItemsMap: {},
        isUpdatingCart: false,
      );
}
