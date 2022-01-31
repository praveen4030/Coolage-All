part of 'orders_delivering_bloc.dart';

@freezed
class OrdersDeliveringEvent with _$OrdersDeliveringEvent {
  const factory OrdersDeliveringEvent.getDeliveringOrders(String canteenId) =
      _GetDeliveringOrders;
  const factory OrdersDeliveringEvent.getMoreDeliveringOrders(
      String canteenId) = _GetMoreDeliveringOrders;
  const factory OrdersDeliveringEvent.deliveredOrder(OrderModel orderModel) =
      _DeliveringOrder;
  const factory OrdersDeliveringEvent.insertNewOrder(OrderModel orderModel) =
      _InsertNewOrder;
}
