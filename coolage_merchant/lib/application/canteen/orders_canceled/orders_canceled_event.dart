part of 'orders_canceled_bloc.dart';

@freezed
class OrdersCanceledEvent with _$OrdersCanceledEvent {
  const factory OrdersCanceledEvent.getCanceledOrders(String canteenId) =
      _GetCanceledOrders;
  const factory OrdersCanceledEvent.getMoreCanceledOrders(String canteenId) =
      _GetMoreCanceledOrders;
}
