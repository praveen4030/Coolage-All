import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:coolage_merchant/domain/base/canteen/i_canteen_repo.dart';
import 'package:coolage_merchant/domain/base/canteen/order_model.dart';
import 'package:coolage_merchant/domain/core/failure/firebase_failure.dart';
import 'package:coolage_merchant/domain/core/helpers/constants.dart';
import 'package:coolage_merchant/domain/core/helpers/enum.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'orders_canceled_event.dart';
part 'orders_canceled_state.dart';
part 'orders_canceled_bloc.freezed.dart';

@injectable
class OrdersCanceledBloc
    extends Bloc<OrdersCanceledEvent, OrdersCanceledState> {
  final ICanteenRepo iCanteenRepo;
  OrdersCanceledBloc(this.iCanteenRepo) : super(OrdersCanceledState.initial());

  @override
  Stream<OrdersCanceledState> mapEventToState(
    OrdersCanceledEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield* event.map(
      getCanceledOrders: (e) async* {
        yield state.copyWith(
          isOrdersLoading: true,
          orderFailureOrSuccess: none(),
          isAddingMoreLoading: false,
        );
        final opt =
            await iCanteenRepo.getOrders(e.canteenId, OrderStatus.canceled);
        yield opt.fold(
          (failure) => state.copyWith(
            orderFailureOrSuccess: some(failure),
            isOrdersLoading: false,
          ),
          (list) {
            bool hasMore = true;
            if (list.length == Constants.ORDERS_LIMIT) {
              hasMore = true;
            } else {
              hasMore = false;
            }
            return state.copyWith(
              canceledOrdersList: list,
              isOrdersLoading: false,
              hasMore: hasMore,
              orderFailureOrSuccess: none(),
            );
          },
        );
      },
      getMoreCanceledOrders: (e) async* {
        if (state.hasMore!) {
          yield state.copyWith(
            isOrdersLoading: true,
            orderFailureOrSuccess: none(),
            isAddingMoreLoading: true,
          );
          final lastItem = state.canceledOrdersList!.last;

          final opt = await iCanteenRepo.getMoreOrders(
              e.canteenId, lastItem, OrderStatus.delivered);
          yield opt.fold(
            (failure) => state.copyWith(
              orderFailureOrSuccess: some(failure),
              isAddingMoreLoading: false,
            ),
            (list) {
              bool hasMore = true;
              if (list.length == Constants.ORDERS_LIMIT) {
                hasMore = true;
              } else {
                hasMore = false;
              }
              List<OrderModel> ordersList =
                  List.from(state.canceledOrdersList!);
              ordersList.addAll(list);
              return state.copyWith(
                canceledOrdersList: ordersList,
                isAddingMoreLoading: false,
                hasMore: hasMore,
                orderFailureOrSuccess: none(),
              );
            },
          );
        }
      },
    );
  }
}
