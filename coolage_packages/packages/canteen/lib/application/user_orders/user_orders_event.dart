part of 'user_orders_bloc.dart';

@freezed
class UserOrdersEvent with _$UserOrdersEvent {
  const factory UserOrdersEvent.getUserOrdersDetails() = _GetUserOrdersDetails;
  const factory UserOrdersEvent.getMoreUserOrdersDetails() =
      _GetMoreUserOrdersDetails;
  const factory UserOrdersEvent.repeatMyPreviousOrder(OrderModel orderModel) =
      _RepeatMyPreviousOrder;
  const factory UserOrdersEvent.addToCartMyPreviousOrder(
      OrderModel orderModel) = _AddToCartMyPreviousOrder;
}
