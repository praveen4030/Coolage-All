part of 'user_orders_bloc.dart';

@freezed
class UserOrdersState with _$UserOrdersState {
  const factory UserOrdersState({
    @required bool? isOrdersLoading,
    @required bool? isMoreOrdersLoading,
    @required List<UserOrderModel>? userOrderIdsList,
    @required List<OrderModel>? ordersList,
    @required Option<FirebaseFailure>? orderFailureOrSuccess,
    @required bool? isRepeatOrderLoading,
    @required bool? isAddToCartLoading,
    @required Option<Either<FirebaseFailure, Unit>>? repeatOrderFailureOrSucess,
    @required Option<Either<FirebaseFailure, Unit>>? addToCartFailureOrSuccess,
  }) = _UserOrdersState;

  factory UserOrdersState.initial() => UserOrdersState(
        isMoreOrdersLoading: false,
        isOrdersLoading: false,
        userOrderIdsList: [],
        ordersList: [],
        orderFailureOrSuccess: none(),
        addToCartFailureOrSuccess: none(),
        isAddToCartLoading: false,
        isRepeatOrderLoading: false,
        repeatOrderFailureOrSucess: none(),
      );
}
