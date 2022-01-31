import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:store/domain/store_basic_details.dart';

abstract class IStoreRepo {
  Future<Either<FirebaseFailure, List<StoreBasicDetailsModel>>>
      getCategoryStores(String category);
  Future<Either<FirebaseFailure, List<StoreBasicDetailsModel>>>
      getCategoryMoreStores(
          String category, StoreBasicDetailsModel storeBasicDetailsModel);

  Future<Either<FirebaseFailure, List<StoreBasicDetailsModel>>>
      getCollegeStores(String college);
  Future<Either<FirebaseFailure, List<ItemModel>>> getStoreProducts(
      String storeId);

  Future<Either<FirebaseFailure, Map<String, CartModel>>> getStoreCartItems();
  Future<Either<FirebaseFailure, Unit>> addToStoreCart(
    bool? isIncreased,
    List<ItemModel>? storeItems,
    StoreBasicDetailsModel? storeBasicDetailsModel,
  );
  Future<Either<FirebaseFailure, Unit>> addToStoreCartFromCart(
    CartModel? cartModel,
  );
  Future<Either<FirebaseFailure, Unit>> placeStoreOrder(
    CartModel? cartModel,
    String? deliveryAddress,
    CoolUser? coolUser, {
    bool? isDelivery = false,
  });
}
