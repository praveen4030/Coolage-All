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

part 'orders_preparing_event.dart';
part 'orders_preparing_state.dart';
part 'orders_preparing_bloc.freezed.dart';

@injectable
class OrdersPreparingBloc
    extends Bloc<OrdersPreparingEvent, OrdersPreparingState> {
  final ICanteenRepo iCanteenRepo;
  OrdersPreparingBloc(this.iCanteenRepo)
      : super(OrdersPreparingState.initial());

  @override
  Stream<OrdersPreparingState> mapEventToState(
    OrdersPreparingEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield* event.map(
      getPreparingOrders: (e) async* {
        yield state.copyWith(
          isOrdersLoading: true,
          orderFailureOrSuccess: none(),
          isAddingMoreLoading: false,
        );
        final opt =
            await iCanteenRepo.getOrders(e.canteenId, OrderStatus.preparing);
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
              ordersList: list,
              isOrdersLoading: false,
              hasMore: hasMore,
              orderFailureOrSuccess: none(),
            );
          },
        );
      },
      getMorePreparingOrders: (e) async* {
        if (state.hasMore!) {
          yield state.copyWith(
            isOrdersLoading: true,
            orderFailureOrSuccess: none(),
            isAddingMoreLoading: true,
          );
          final lastItem = state.ordersList!.last;

          final opt = await iCanteenRepo.getMoreOrders(
              e.canteenId, lastItem, OrderStatus.preparing);
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
              List<OrderModel> ordersList = List.from(state.ordersList!);
              ordersList.addAll(list);
              return state.copyWith(
                ordersList: ordersList,
                isAddingMoreLoading: false,
                hasMore: hasMore,
                orderFailureOrSuccess: none(),
              );
            },
          );
        }
      },
      preparedOrder: (e) async* {
        yield state.copyWith(
          orderPreparedFailureOrSuccess: none(),
        );
        final opt = await iCanteenRepo.cookedOrder(e.orderModel);
        yield opt.fold((failure) {
          return state.copyWith(
            orderPreparedFailureOrSuccess: some(left(failure)),
          );
        }, (_) {
          List<OrderModel> list = List<OrderModel>.from(state.ordersList!);
          list.removeWhere(
              (element) => element.orderId! == e.orderModel.orderId!);
          return state.copyWith(
            ordersList: list,
            orderPreparedFailureOrSuccess: some(right(unit)),
          );
        });
      },
      insertNewOrder: (e) async* {
        final list = List<OrderModel>.from(state.ordersList!);
        list.insert(0, e.orderModel);
        yield state.copyWith(
          ordersList: list,
        );
      },
    );
  }
}
