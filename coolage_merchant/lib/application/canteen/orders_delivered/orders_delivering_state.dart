part of 'orders_delivering_bloc.dart';

@freezed
class OrdersDeliveringState with _$OrdersDeliveringState {
  const factory OrdersDeliveringState({
    @required bool? isOrdersLoading,
    @required bool? isAddingMoreLoading,
    @required Option<FirebaseFailure>? orderFailureOrSuccess,
    @required
        Option<Either<FirebaseFailure, Unit>>? orderDeliverFailureOrSuccess,
    @required List<OrderModel>? ordersList,
    @required bool? hasMore,
  }) = _OrdersDeliveringState;
  factory OrdersDeliveringState.initial() => OrdersDeliveringState(
        isOrdersLoading: false,
        isAddingMoreLoading: false,
        orderFailureOrSuccess: none(),
        ordersList: [],
        hasMore: false,
        orderDeliverFailureOrSuccess: none(),
      );
}
