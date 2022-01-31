part of 'orders_finished_bloc.dart';

@freezed
class OrdersFinishedEvent with _$OrdersFinishedEvent {
  const factory OrdersFinishedEvent.getCompletedOrders(String canteenId) =
      _GetCompletedOrders;
  const factory OrdersFinishedEvent.getMoreCompletedOrders(String canteenId) =
      _GetMoreCompletedOrders;

  const factory OrdersFinishedEvent.getDateWiseOrders(
      String canteenId, DateTime dateTime) = _GetDateWiseOrders;
  const factory OrdersFinishedEvent.getMoreDateWiseOrders(
      String canteenId, DateTime dateTime) = _GetMoreDateWiseOrders;
}
