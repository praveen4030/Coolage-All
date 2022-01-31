part of 'orders_prepared_bloc.dart';

@freezed
class OrdersPreparedState with _$OrdersPreparedState {
  const factory OrdersPreparedState({
    @required bool? isOrdersLoading,
    @required bool? isAddingMoreLoading,
    @required Option<FirebaseFailure>? orderFailureOrSuccess,
    @required
        Option<Either<FirebaseFailure, Unit>>? orderDeliveringFailureOrSuccess,
    @required List<OrderModel>? ordersList,
    @required bool? hasMore,
  }) = _OrdersPreparedState;
  factory OrdersPreparedState.initial() => OrdersPreparedState(
        isOrdersLoading: false,
        isAddingMoreLoading: false,
        orderFailureOrSuccess: none(),
        ordersList: [],
        hasMore: false,
        orderDeliveringFailureOrSuccess: none(),
      );
}
