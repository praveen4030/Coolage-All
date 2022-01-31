import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolage/domain/base/canteen/cart_model.dart';
import 'package:coolage/domain/models/item_model.dart';
import 'package:coolage/domain/base/store/i_store_repo.dart';
import 'package:coolage/domain/base/store/store_basic_details.dart';
import 'package:coolage/domain/core/failure/firebase_failure.dart';
import 'package:coolage/domain/user/cool_user.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'store_cart_event.dart';
part 'store_cart_state.dart';
part 'store_cart_bloc.freezed.dart';

@injectable
class StoreCartBloc extends Bloc<StoreCartEvent, StoreCartState> {
  final IStoreRepo iStoreRepo;

  StoreCartBloc(this.iStoreRepo) : super(StoreCartState.initial());

  @override
  Stream<StoreCartState> mapEventToState(
    StoreCartEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield* event.map(
      addToCart: (e) async* {
        if (state.isUpdatingCart!) {
          return;
        }
        yield state.copyWith(
          storeCartFailureOrSuccess: none(),
          isUpdatingCart: true,
        );
        final map = Map<String, CartModel>.from(state.cartItemsMap!);
        //final to update the state change in ui otherwise state remains the same
        final c = map[e.canteenId];
        CartModel cartModel = CartModel.fromMap(c!.toMap());

        final cartItem = cartModel.cartItemsMap![e.itemId];
        //updating total price and qty again here to make sure qty and total prices are same
        double totalPrice = 0;
        int qty = 0;
        for (final item in cartModel.cartItemsMap!.values.toList()) {
          if (item.qty! != 0) {
            totalPrice += item.price! * item.qty!;
            qty += item.qty!;
          }
        }
        cartModel.qty = qty;
        cartModel.totalPrice = totalPrice;
        if (e.isIncreased!) {
          cartItem!.qty = cartItem.qty! + 1;
          cartModel.totalPrice = cartModel.totalPrice! + cartItem.price!;
          cartModel.qty = cartModel.qty! + 1;
        } else {
          cartItem!.qty = cartItem.qty! - 1;
          cartModel.totalPrice = cartModel.totalPrice! - cartItem.price!;
          cartModel.qty = cartModel.qty! - 1;
          if (cartItem.qty == 0) {
            cartModel.cartItemsMap!.remove(cartItem.itemId);
          }
        }
        //either we remove or update this cart
        if (cartModel.qty == 0) {
          map.remove(cartModel.uniqueId);
        } else {
          map.update(cartModel.uniqueId!, (value) => cartModel);
        }

        final opt = await iStoreRepo.addToStoreCartFromCart(cartModel);
        yield opt.fold((failure) {
          return state.copyWith(
            storeCartFailureOrSuccess: some(failure),
            isUpdatingCart: false,
          );
        }, (_) {
          return state.copyWith(
            storeCartFailureOrSuccess: none(),
            cartItemsMap: map,
            isUpdatingCart: false,
          );
        });
      },
      placeOrder: (e) async* {
        yield state.copyWith(
          isPlacingOrder: true,
          placeOrderFailureOrSuccess: none(),
        );
        final opt = await iStoreRepo.placeStoreOrder(
          e.cartModel,
          e.deliveryAddress,
          e.coolUser,
          isDelivery: e.isDelivery,
        );
        yield opt.fold((failure) {
          return state.copyWith(
            placeOrderFailureOrSuccess: some(left(failure)),
            isPlacingOrder: false,
          );
        }, (_) {
          state.cartItemsMap!.remove(e.cartModel!.uniqueId);
          return state.copyWith(
            isPlacingOrder: false,
            placeOrderFailureOrSuccess: some(right(unit)),
          );
        });
      },
      getStoreCartItems: (e) async* {
        yield state.copyWith(
          isStoreCartLoading: false,
          storeCartFailureOrSuccess: none(),
        );
        final opt = await iStoreRepo.getStoreCartItems();
        yield opt.fold(
          (failure) {
            return state.copyWith(
              isStoreCartLoading: false,
              storeCartFailureOrSuccess: some(failure),
            );
          },
          (cart) {
            return state.copyWith(
              isStoreCartLoading: false,
              storeCartFailureOrSuccess: none(),
              cartItemsMap: cart,
            );
          },
        );
      },
    );
  }
}
