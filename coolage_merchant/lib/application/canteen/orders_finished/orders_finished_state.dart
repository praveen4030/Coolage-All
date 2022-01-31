part of 'orders_finished_bloc.dart';

@freezed
class OrdersFinishedState with _$OrdersFinishedState {
  const factory OrdersFinishedState({
    @required bool? isOrdersLoading,
    @required bool? isAddingMoreLoading,
    @required Option<FirebaseFailure>? orderFailureOrSuccess,
    @required List<OrderModel>? completedOrdersList,
    @required bool? hasMore,
  }) = _OrdersFinishedState;
  factory OrdersFinishedState.initial() => OrdersFinishedState(
        isOrdersLoading: false,
        isAddingMoreLoading: false,
        orderFailureOrSuccess: none(),
        completedOrdersList: [],
        hasMore: false,
      );
}
