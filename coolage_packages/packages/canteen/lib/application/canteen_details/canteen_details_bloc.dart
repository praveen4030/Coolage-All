import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:canteen/canteen.dart';
import 'package:canteen/domain/order/canteen_basic_details_model.dart';
import 'package:canteen/domain/models/cart_model.dart';
import 'package:canteen/domain/models/deliverable_zones_model.dart';
import 'package:canteen/domain/i_canteen_repo.dart';
import 'package:canteen/domain/models/item_model.dart';
import 'package:canteen/domain/models/menu_category_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:user/user.dart';

part 'canteen_details_bloc.freezed.dart';
part 'canteen_details_event.dart';
part 'canteen_details_state.dart';

@injectable
class CanteenDetailsBloc
    extends Bloc<CanteenDetailsEvent, CanteenDetailsState> {
  final ICanteenRepo iCanteenRepo;
  CanteenDetailsBloc(this.iCanteenRepo) : super(CanteenDetailsState.initial());

  @override
  Stream<CanteenDetailsState> mapEventToState(
    CanteenDetailsEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield* event.map(
      getCanteensNearby: (e) async* {
        yield state.copyWith(
          isCanteensNearbyListLoading: true,
          canteenslistFailureOrSuccess: none(),
        );
        final opt = await iCanteenRepo.getCanteensNearby(e.userCollege!);
        yield opt.fold((failure) {
          return state.copyWith(
            isCanteensNearbyListLoading: false,
            canteenslistFailureOrSuccess: some(failure),
          );
        }, (canteens) {
          return state.copyWith(
            canteensNearbyList: canteens,
            isCanteensNearbyListLoading: false,
            canteenslistFailureOrSuccess: none(),
          );
        });
      },
      getCollegeCanteens: (e) async* {
        yield state.copyWith(
          isCanteensListLoading: true,
          canteenslistFailureOrSuccess: none(),
        );

        //get college canteens
        if (e.userCollege != null) {
          final opt = await iCanteenRepo.getCollegeCanteens(e.userCollege!);
          yield opt.fold((failure) {
            return state.copyWith(
              isCanteensListLoading: false,
              canteenslistFailureOrSuccess: some(failure),
            );
          }, (canteens) {
            return state.copyWith(
              canteensList: canteens,
              isCanteensListLoading: false,
              canteenslistFailureOrSuccess: none(),
            );
          });
        } else {
          yield state.copyWith(
            isCanteensListLoading: false,
            canteenslistFailureOrSuccess: some(
              FirebaseFailure.customError('Something went wrong!'),
            ),
          );
        }
      },
      getCanteenDetails: (e) async* {
        final canteenId = e.canteenBasicDetailsModel!.canteenId;
        yield state.copyWith(
          isCanteenDetailsLoading: true,
          canteenDetailsFailureOrSuccess: none(),
        );
        if (canteenId != null) {
          final opt = await iCanteenRepo.getCanteenDetails(canteenId);
          yield opt.fold((failure) {
            return state.copyWith(
              isCanteenDetailsLoading: false,
              canteenDetailsFailureOrSuccess: some(failure),
            );
          }, (menuItemsList) {
            final map = CanteenItemsHelper.getItemsInMap(
              menuItemsList,
              isOnlyNonVeg: false,
              isOnlyVeg: false,
            );
            final menuCategoriesList =
                CanteenItemsHelper.getMenuCategoriesListForVegNonveg(
                    menuItemsList,
                    isOnlyNonVeg: false,
                    isOnlyVeg: false);
            return state.copyWith(
              isCanteenDetailsLoading: false,
              canteenDetailsFailureOrSuccess: none(),
              canteenItemsList: menuItemsList,
              menuCategoriesList: menuCategoriesList,
              menuCategoryWiseItemsMap: map,
            );
          });
        } else {
          yield state.copyWith(
            isCanteenDetailsLoading: false,
            canteenDetailsFailureOrSuccess: some(
              FirebaseFailure.customError('Something went wrong!'),
            ),
          );
        }
      },
      getCanteenCartItems: (e) async* {
        yield state.copyWith(
          isCartLoading: true,
          canteenCartFailureOrSuccess: none(),
        );

        final opt = await iCanteenRepo.getCanteenCartItems();
        yield opt.fold((failure) {
          return state.copyWith(
            isCartLoading: false,
            canteenCartFailureOrSuccess: some(failure),
          );
        }, (cartItems) {
          return state.copyWith(
            cartItemsMap: cartItems,
            isCartLoading: false,
            canteenCartFailureOrSuccess: none(),
          );
        });
      },
      addToCart: (e) async* {
        yield state.copyWith(
          isModifyingCartItems: true,
        );
        Map<String, CartModel> map =
            Map<String, CartModel>.from(state.cartItemsMap!);
        final canteenId = e.canteenBasicDetailsModel!.canteenId!;
        CartModel cart;
        if (map.containsKey(canteenId)) {
          final c = map[e.canteenBasicDetailsModel!.canteenId];
          cart = CartModel.fromMap(c!.toMap());
          final itemId = e.menuItemModel!.itemId!;
          final cartItems = cart.cartItemsMap!;
          if (cartItems.containsKey(itemId)) {
            if (e.menuItemModel!.qty == 0) {
              //delete this item from map
              cartItems.remove(itemId);
              //check also if this was the last element
            } else {
              cartItems.update(itemId, (value) => e.menuItemModel!);
            }
          } else {
            cartItems.putIfAbsent(itemId, () => e.menuItemModel!);
          }
          cart.cartItemsMap = cartItems;
          cart.qty = cart.getItemsTotalQty();
          cart.totalPrice = cart.getItemsTotalPrice();
          if (cart.qty == 0) {
            map.remove(cart.uniqueId);
          } else {
            map.update(cart.uniqueId!, (value) => cart);
          }
        } else {
          //if cart doent contain this canteen id then directly add this item to cart
          final canteenBasic = e.canteenBasicDetailsModel!;

          cart = CartModel(
            qty: 1,
            totalPrice: e.menuItemModel!.getPrice(),
            cartItemsMap: {
              e.menuItemModel!.itemId!: e.menuItemModel!,
            },
            uniqueId: e.canteenBasicDetailsModel!.canteenId,
            timestamp: Timestamp.now(),
          );
          map.putIfAbsent(cart.uniqueId!, () => cart);
        }
        cart.canteenBasicDetailsModel = e.canteenBasicDetailsModel;
        final opt = await iCanteenRepo.addToCanteenCart(
          cartModel: cart,
        );
        yield opt.fold((failure) {
          return state.copyWith(
            isModifyingCartItems: false,
            canteenCartFailureOrSuccess: some(failure),
          );
        }, (_) {
          return state.copyWith(
            isModifyingCartItems: false,
            canteenCartFailureOrSuccess: none(),
            cartItemsMap: map,
          );
        });
      },
      placeOrderLoading: (e) async* {
        yield state.copyWith(
          isPlacingOrder: e.isLoading,
        );
      },
      placeOrder: (e) async* {
        yield state.copyWith(
          isPlacingOrder: true,
          placeOrderFailureOrSuccess: none(),
        );
        final opt = await iCanteenRepo.placeCanteenOrder(
          cartModel: e.cartModel,
          isDelivery: e.isDelivery,
          deliveryAddress: e.deliveryAddress,
          coolUser: e.coolUser,
          paymentId: e.paymentId,
          isTakeAway: e.isTakeAway,
          comments: e.comments,
          deliverableZonesModel: e.deliverableZonesModel,
        );
        yield opt.fold((failure) {
          return state.copyWith(
            placeOrderFailureOrSuccess: some(left(failure)),
            isPlacingOrder: false,
          );
        }, (orderId) {
          state.cartItemsMap!.remove(e.cartModel!.uniqueId);
          return state.copyWith(
            isPlacingOrder: false,
            placeOrderFailureOrSuccess: some(right(orderId)),
          );
        });
      },
      changeVegNonveg: (e) async* {
        // yield state.copyWith();
        final map = CanteenItemsHelper.getItemsInMap(state.canteenItemsList,
            isOnlyNonVeg: e.isNonveg, isOnlyVeg: e.isVeg);
        final menuCategoriesList =
            CanteenItemsHelper.getMenuCategoriesListForVegNonveg(
                state.canteenItemsList,
                isOnlyNonVeg: e.isNonveg,
                isOnlyVeg: e.isVeg);
        yield state.copyWith(
          menuCategoriesList: menuCategoriesList,
          menuCategoryWiseItemsMap: map,
          isShowingNonVeg: e.isNonveg,
          isShowingVeg: e.isVeg,
        );
      },
      showBackToTop: (e) async* {
        yield state.copyWith(
          isShowingBackToTop: e.isShowingbackToTop,
        );
      },
      updateDeliveryAdressIndex: (e) async* {
        yield state.copyWith(deliveryAddressIndex: e.deliveryAddressIndex);
      },
    );
  }
}
