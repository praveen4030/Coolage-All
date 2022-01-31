part of 'orders_pending_bloc.dart';

@freezed
class OrdersPendingState with _$OrdersPendingState {
  const factory OrdersPendingState({
    @required bool? isOrdersLoading,
    @required bool? isAddingMoreLoading,
    @required Option<FirebaseFailure>? orderFailureOrSuccess,
    @required
        Option<Either<FirebaseFailure, Unit>>? orderAceeptFailureOrSuccess,
    @required
        Option<Either<FirebaseFailure, Unit>>? orderCancelFailureOrSuccess,
    @required List<OrderModel>? ordersList,
    @required bool? hasMore,
  }) = _OrdersPendingState;
  factory OrdersPendingState.initial() => OrdersPendingState(
        isOrdersLoading: false,
        isAddingMoreLoading: false,
        orderFailureOrSuccess: none(),
        orderAceeptFailureOrSuccess: none(),
        orderCancelFailureOrSuccess: none(),
        ordersList: [],
        hasMore: false,
      );
}
