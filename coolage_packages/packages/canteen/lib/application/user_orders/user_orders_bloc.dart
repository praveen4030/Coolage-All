import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:canteen/canteen.dart';
import 'package:canteen/domain/i_canteen_user_orders_repo.dart';
import 'package:canteen/domain/models/user_order.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_orders_event.dart';
part 'user_orders_state.dart';
part 'user_orders_bloc.freezed.dart';

@injectable
class UserOrdersBloc extends Bloc<UserOrdersEvent, UserOrdersState> {
  final ICanteenUserOrdersRepo iCanteenUserOrdersRepo;
  UserOrdersBloc(this.iCanteenUserOrdersRepo)
      : super(UserOrdersState.initial());

  @override
  Stream<UserOrdersState> mapEventToState(
    UserOrdersEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield* event.map(
      getUserOrdersDetails: (e) async* {
        final opt = await iCanteenUserOrdersRepo.getUserOrdersIds();
        if (opt.isLeft()) {
          return;
        }
        List<UserOrderModel> orderIdsList = [];
        yield opt.fold((l) => null, (list) {
          orderIdsList = list;
          return state.copyWith(
            userOrderIdsList: list,
            orderFailureOrSuccess: none(),
            isOrdersLoading: true,
          );
        });
        final ordersOpt =
            await iCanteenUserOrdersRepo.getUserOrdersDetails(orderIdsList);
        yield ordersOpt.fold((failure) {
          return state.copyWith(
            orderFailureOrSuccess: some(failure),
            isOrdersLoading: false,
          );
        }, (list) {
          return state.copyWith(
            orderFailureOrSuccess: none(),
            isOrdersLoading: false,
            ordersList: list,
          );
        });
      },
      getMoreUserOrdersDetails: (e) async* {
        //if equal then not other orders left to fetch
        if (state.userOrderIdsList!.length != state.ordersList!.length) {
          yield state.copyWith(
            orderFailureOrSuccess: none(),
            isMoreOrdersLoading: true,
          );
          final opt = await iCanteenUserOrdersRepo.getMoreUserOrdersDetails(
              state.userOrderIdsList!, state.ordersList!.length);
          yield opt.fold((failure) {
            return state.copyWith(
              orderFailureOrSuccess: some(failure),
              isMoreOrdersLoading: false,
            );
          }, (list) {
            state.ordersList!.addAll(list);
            return state.copyWith(
              orderFailureOrSuccess: none(),
              isMoreOrdersLoading: false,
            );
          });
        }
      },
      addToCartMyPreviousOrder: (e) async* {
        yield state.copyWith(
          addToCartFailureOrSuccess: none(),
          isAddToCartLoading: true,
        );
        final opt =
            await iCanteenUserOrdersRepo.addToCartPreviousOrder(e.orderModel);
        yield opt.fold((falure) {
          return state.copyWith(
            addToCartFailureOrSuccess: some(left(falure)),
            isAddToCartLoading: false,
          );
        }, (_) {
          return state.copyWith(
            addToCartFailureOrSuccess: some(right(unit)),
            isAddToCartLoading: false,
          );
        });
      },
      repeatMyPreviousOrder: (e) async* {
        yield state.copyWith(
          repeatOrderFailureOrSucess: none(),
          isRepeatOrderLoading: true,
        );
        final opt =
            await iCanteenUserOrdersRepo.repeatPreviousOrder(e.orderModel);
        yield opt.fold((falure) {
          return state.copyWith(
            repeatOrderFailureOrSucess: some(left(falure)),
            isRepeatOrderLoading: false,
          );
        }, (_) {
          return state.copyWith(
            repeatOrderFailureOrSucess: some(right(unit)),
            isRepeatOrderLoading: false,
          );
        });
      },
    );
  }
}
