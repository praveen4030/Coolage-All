part of 'canteen_details_bloc.dart';

@freezed
class CanteenDetailsEvent with _$CanteenDetailsEvent {
  const factory CanteenDetailsEvent.getCollegeCanteens(
      {required String? userCollege}) = _GetCollegeCanteens;
  const factory CanteenDetailsEvent.getCanteensNearby(
      {@required String? userCollege}) = _GetCanteensNearby;
  const factory CanteenDetailsEvent.getCanteenDetails(
          {required CanteenBasicDetailsModel? canteenBasicDetailsModel}) =
      _GetCanteenDetails;
  const factory CanteenDetailsEvent.getCanteenCartItems() =
      _GetCanteenCartItems;
  const factory CanteenDetailsEvent.addToCart({
    required bool? isIncreased,
    required ItemModel? menuItemModel,
    required CanteenBasicDetailsModel? canteenBasicDetailsModel,
  }) = _AddToCart;
  const factory CanteenDetailsEvent.changeVegNonveg({
    required bool? isVeg,
    required bool? isNonveg,
  }) = _ChangeVegNonveg;
  const factory CanteenDetailsEvent.placeOrder({
    required CartModel? cartModel,
    required bool? isDelivery,
    required DeliverableZonesModel? deliverableZonesModel,
    required String? deliveryAddress,
    required CoolUser? coolUser,
    required String? paymentId,
    required bool? isTakeAway,
    required String? comments,
  }) = _PlaceOrder;
  const factory CanteenDetailsEvent.placeOrderLoading({
    required bool? isLoading,
  }) = _PlaceOrderLoading;
  const factory CanteenDetailsEvent.placeOrderResultInital() =
      _PlaceOrderResultInital;
  const factory CanteenDetailsEvent.showBackToTop(
      {required bool? isShowingbackToTop}) = _ShowBackToTop;
  const factory CanteenDetailsEvent.updateDeliveryAdressIndex(
      {required int deliveryAddressIndex}) = _UpdateDeliveryAdressIndex;
}
