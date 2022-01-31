part of 'orders_preparing_bloc.dart';

@freezed
class OrdersPreparingEvent with _$OrdersPreparingEvent {
  const factory OrdersPreparingEvent.getPreparingOrders(String canteenId) =
      _GetPreparingOrders;
  const factory OrdersPreparingEvent.getMorePreparingOrders(String canteenId) =
      _GetMorePreparingOrders;
  const factory OrdersPreparingEvent.preparedOrder(OrderModel orderModel) =
      _PreparedOrder;
  const factory OrdersPreparingEvent.insertNewOrder(OrderModel orderModel) =
      _InsertNewOrder;
}
