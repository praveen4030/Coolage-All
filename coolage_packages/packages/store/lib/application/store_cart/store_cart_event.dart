part of 'store_cart_bloc.dart';

@freezed
class StoreCartEvent with _$StoreCartEvent {
  const factory StoreCartEvent.getStoreCartItems() = _GetStoreCartItems;
  const factory StoreCartEvent.placeOrder({
    @required CartModel? cartModel,
    @required bool? isDelivery,
    @required String? deliveryAddress,
    @required CoolUser? coolUser,
  }) = _PlaceOrder;
  const factory StoreCartEvent.addToCart({
    @required String? canteenId,
    @required String? itemId,
    @required bool? isIncreased,
  }) = _AddToCart;
}
