part of 'orders_prepared_bloc.dart';

@freezed
class OrdersPreparedEvent with _$OrdersPreparedEvent {
  const factory OrdersPreparedEvent.getPreparedOrders(String canteenId) =
      _GetPreparedOrders;
  const factory OrdersPreparedEvent.getMorePreparedOrders(String canteenId) =
      _GetMorePreparedOrders;
  const factory OrdersPreparedEvent.deliveringOrder(OrderModel orderModel) =
      _DeliveringOrder;
  const factory OrdersPreparedEvent.insertNewOrder(OrderModel orderModel) =
      _InsertNewOrder;
}
