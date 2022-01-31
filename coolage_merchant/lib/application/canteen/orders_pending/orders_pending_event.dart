part of 'orders_pending_bloc.dart';

@freezed
class OrdersPendingEvent with _$OrdersPendingEvent {
  const factory OrdersPendingEvent.getPendingOrders(String canteenId) =
      _GetPendingOrders;
  const factory OrdersPendingEvent.getMorePendingOrders(String canteenId) =
      _GetMorePendingOrders;
  const factory OrdersPendingEvent.acceptOrder(OrderModel orderModel) =
      _AcceptOrder;
  const factory OrdersPendingEvent.cancelOrder(OrderModel orderModel) =
      _CancelOrder;
  const factory OrdersPendingEvent.insertNewOrder(OrderModel orderModel) =
      _InsertNewOrder;
}
