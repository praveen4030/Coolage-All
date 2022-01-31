import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:coolage_merchant/application/canteen/orders_finished/orders_finished_bloc.dart';
import 'package:coolage_merchant/domain/base/canteen/i_canteen_repo.dart';
import 'package:coolage_merchant/domain/base/canteen/order_model.dart';
import 'package:coolage_merchant/domain/core/failure/firebase_failure.dart';
import 'package:coolage_merchant/domain/core/helpers/constants.dart';
import 'package:coolage_merchant/domain/core/helpers/enum.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'orders_delivering_event.dart';
part 'orders_delivering_state.dart';
part 'orders_delivering_bloc.freezed.dart';

@injectable
class OrdersDeliveringBloc
    extends Bloc<OrdersDeliveringEvent, OrdersDeliveringState> {
  final ICanteenRepo iCanteenRepo;
  OrdersDeliveringBloc(this.iCanteenRepo)
      : super(OrdersDeliveringState.initial());

  @override
  Stream<OrdersDeliveringState> mapEventToState(
    OrdersDeliveringEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield* event.map(
      getDeliveringOrders: (e) async* {
        yield state.copyWith(
          isOrdersLoading: true,
          orderFailureOrSuccess: none(),
          isAddingMoreLoading: false,
        );
        final opt =
            await iCanteenRepo.getOrders(e.canteenId, OrderStatus.delivering);
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
      getMoreDeliveringOrders: (e) async* {
        if (state.hasMore!) {
          yield state.copyWith(
            isOrdersLoading: true,
            orderFailureOrSuccess: none(),
            isAddingMoreLoading: true,
          );
          final lastItem = state.ordersList!.last;

          final opt = await iCanteenRepo.getMoreOrders(
              e.canteenId, lastItem, OrderStatus.delivering);
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
      deliveredOrder: (e) async* {
        yield state.copyWith(
          orderDeliverFailureOrSuccess: none(),
        );
        final opt = await iCanteenRepo.deliverOrder(e.orderModel);
        yield opt.fold((failure) {
          return state.copyWith(
            orderDeliverFailureOrSuccess: some(left(failure)),
          );
        }, (_) {
          List<OrderModel> list = List<OrderModel>.from(state.ordersList!);
          list.removeWhere(
              (element) => element.orderId! == e.orderModel.orderId!);
          return state.copyWith(
            ordersList: list,
            orderDeliverFailureOrSuccess: some(right(unit)),
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
