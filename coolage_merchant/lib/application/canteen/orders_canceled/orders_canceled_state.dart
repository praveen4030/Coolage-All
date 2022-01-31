part of 'orders_canceled_bloc.dart';

@freezed
class OrdersCanceledState with _$OrdersCanceledState {
  const factory OrdersCanceledState({
    @required bool? isOrdersLoading,
    @required bool? isAddingMoreLoading,
    @required Option<FirebaseFailure>? orderFailureOrSuccess,
    @required List<OrderModel>? canceledOrdersList,
    @required bool? hasMore,
  }) = _OrdersCanceledState;
  factory OrdersCanceledState.initial() => OrdersCanceledState(
        isOrdersLoading: false,
        isAddingMoreLoading: false,
        orderFailureOrSuccess: none(),
        canceledOrdersList: [],
        hasMore: false,
      );
}
