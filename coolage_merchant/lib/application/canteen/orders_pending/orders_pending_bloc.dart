import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:coolage_merchant/domain/base/canteen/i_canteen_repo.dart';
import 'package:coolage_merchant/domain/base/canteen/listen_orders.dart';
import 'package:coolage_merchant/domain/base/canteen/order_model.dart';
import 'package:coolage_merchant/domain/core/failure/firebase_failure.dart';
import 'package:coolage_merchant/domain/core/helpers/constants.dart';
import 'package:coolage_merchant/domain/core/helpers/enum.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'orders_pending_event.dart';
part 'orders_pending_state.dart';
part 'orders_pending_bloc.freezed.dart';

@injectable
class OrdersPendingBloc extends Bloc<OrdersPendingEvent, OrdersPendingState> {
  final ICanteenRepo iCanteenRepo;
  OrdersPendingBloc(this.iCanteenRepo) : super(OrdersPendingState.initial());

  @override
  Stream<OrdersPendingState> mapEventToState(
    OrdersPendingEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield* event.map(
      getPendingOrders: (e) async* {
        yield state.copyWith(
          isOrdersLoading: true,
          orderFailureOrSuccess: none(),
          isAddingMoreLoading: false,
        );
        final opt =
            await iCanteenRepo.getOrders(e.canteenId, OrderStatus.pending);
        yield opt.fold(
          (failure) {
            return state.copyWith(
              orderFailureOrSuccess: some(failure),
              isOrdersLoading: false,
            );
          },
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
      getMorePendingOrders: (e) async* {
        if (state.hasMore!) {
          yield state.copyWith(
            isOrdersLoading: true,
            orderFailureOrSuccess: none(),
            isAddingMoreLoading: true,
          );
          final lastItem = state.ordersList!.last;

          final opt = await iCanteenRepo.getMoreOrders(
              e.canteenId, lastItem, OrderStatus.pending);
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
      acceptOrder: (e) async* {
        yield state.copyWith(
          orderAceeptFailureOrSuccess: none(),
        );
        final opt = await iCanteenRepo.acceptOrder(e.orderModel);
        yield opt.fold((failure) {
          return state.copyWith(
            orderAceeptFailureOrSuccess: some(left(failure)),
          );
        }, (_) {
          List<OrderModel> list = List<OrderModel>.from(state.ordersList!);
          list.removeWhere(
              (element) => element.orderId! == e.orderModel.orderId!);
          return state.copyWith(
            ordersList: list,
            orderAceeptFailureOrSuccess: some(right(unit)),
          );
        });
      },
      cancelOrder: (e) async* {
        yield state.copyWith(
          orderCancelFailureOrSuccess: none(),
        );
        final opt = await iCanteenRepo.cancelOrder(e.orderModel);
        yield opt.fold((failure) {
          return state.copyWith(
            orderCancelFailureOrSuccess: some(left(failure)),
          );
        }, (_) {
          List<OrderModel> list = List<OrderModel>.from(state.ordersList!);
          list.removeWhere(
              (element) => element.orderId! == e.orderModel.orderId!);
          return state.copyWith(
            ordersList: list,
            orderCancelFailureOrSuccess: some(right(unit)),
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
