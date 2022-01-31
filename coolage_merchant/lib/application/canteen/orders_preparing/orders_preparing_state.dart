part of 'orders_preparing_bloc.dart';

@freezed
class OrdersPreparingState with _$OrdersPreparingState {
  const factory OrdersPreparingState({
    @required bool? isOrdersLoading,
    @required bool? isAddingMoreLoading,
    @required Option<FirebaseFailure>? orderFailureOrSuccess,
    @required
        Option<Either<FirebaseFailure, Unit>>? orderPreparedFailureOrSuccess,
    @required List<OrderModel>? ordersList,
    @required bool? hasMore,
  }) = _OrdersPreparingState;
  factory OrdersPreparingState.initial() => OrdersPreparingState(
        isOrdersLoading: false,
        isAddingMoreLoading: false,
        orderFailureOrSuccess: none(),
        ordersList: [],
        hasMore: false,
        orderPreparedFailureOrSuccess: none(),
      );
}
