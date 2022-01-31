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

part 'orders_finished_event.dart';
part 'orders_finished_state.dart';
part 'orders_finished_bloc.freezed.dart';

@injectable
class OrdersFinishedBloc
    extends Bloc<OrdersFinishedEvent, OrdersFinishedState> {
  final ICanteenRepo iCanteenRepo;
  OrdersFinishedBloc(this.iCanteenRepo) : super(OrdersFinishedState.initial());

  @override
  Stream<OrdersFinishedState> mapEventToState(
    OrdersFinishedEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield* event.map(
        getCompletedOrders: (e) async* {
          yield state.copyWith(
            isOrdersLoading: true,
            orderFailureOrSuccess: none(),
            isAddingMoreLoading: false,
          );
          final opt =
              await iCanteenRepo.getOrders(e.canteenId, OrderStatus.delivered);
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
                completedOrdersList: list,
                isOrdersLoading: false,
                hasMore: hasMore,
                orderFailureOrSuccess: none(),
              );
            },
          );
        },
        getMoreCompletedOrders: (e) async* {
          if (state.hasMore! && state.completedOrdersList!.isNotEmpty) {
            yield state.copyWith(
              orderFailureOrSuccess: none(),
              isAddingMoreLoading: true,
            );
            final lastItem = state.completedOrdersList!.last;

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
                    List.from(state.completedOrdersList!);
                ordersList.addAll(list);
                return state.copyWith(
                  completedOrdersList: ordersList,
                  isAddingMoreLoading: false,
                  hasMore: hasMore,
                  orderFailureOrSuccess: none(),
                );
              },
            );
          }
        },
        getDateWiseOrders: (e) async* {},
        getMoreDateWiseOrders: (e) async* {});
  }
}
