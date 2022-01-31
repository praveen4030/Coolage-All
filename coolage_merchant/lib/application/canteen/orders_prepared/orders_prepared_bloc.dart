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

part 'orders_prepared_event.dart';
part 'orders_prepared_state.dart';
part 'orders_prepared_bloc.freezed.dart';

@injectable
class OrdersPreparedBloc
    extends Bloc<OrdersPreparedEvent, OrdersPreparedState> {
  final ICanteenRepo iCanteenRepo;

  OrdersPreparedBloc(this.iCanteenRepo) : super(OrdersPreparedState.initial());

  @override
  Stream<OrdersPreparedState> mapEventToState(
    OrdersPreparedEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield* event.map(
      getPreparedOrders: (e) async* {
        yield state.copyWith(
          isOrdersLoading: true,
          orderFailureOrSuccess: none(),
          isAddingMoreLoading: false,
        );
        final opt =
            await iCanteenRepo.getOrders(e.canteenId, OrderStatus.prepared);
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
      getMorePreparedOrders: (e) async* {
        if (state.hasMore!) {
          yield state.copyWith(
            isOrdersLoading: true,
            orderFailureOrSuccess: none(),
            isAddingMoreLoading: true,
          );
          final lastItem = state.ordersList!.last;

          final opt = await iCanteenRepo.getMoreOrders(
              e.canteenId, lastItem, OrderStatus.prepared);
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
      deliveringOrder: (e) async* {
        yield state.copyWith(
          orderDeliveringFailureOrSuccess: none(),
        );
        final Either<FirebaseFailure, Unit> opt;
        if (e.orderModel.isDelivery!) {
          opt = await iCanteenRepo.outForDeliveryOrder(e.orderModel);
        } else {
          opt = await iCanteenRepo.deliverOrder(e.orderModel);
        }
        yield opt.fold((failure) {
          return state.copyWith(
            orderDeliveringFailureOrSuccess: some(left(failure)),
          );
        }, (_) {
          List<OrderModel> list = List<OrderModel>.from(state.ordersList!);
          list.removeWhere(
              (element) => element.orderId! == e.orderModel.orderId!);
          return state.copyWith(
            ordersList: list,
            orderDeliveringFailureOrSuccess: some(right(unit)),
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
