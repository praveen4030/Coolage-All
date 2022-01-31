import 'package:canteen/domain/models/cart_model.dart';
import 'package:canteen/domain/models/item_model.dart';
import 'package:canteen/domain/order/canteen_basic_details_model.dart';
import 'package:canteen/domain/models/deliverable_zones_model.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:user/user.dart';

abstract class ICanteenRepo {
  Future<Either<FirebaseFailure, List<CanteenBasicDetailsModel>>>
      getCanteensNearby(String college);

  Future<Either<FirebaseFailure, List<CanteenBasicDetailsModel>>>
      getCollegeCanteens(String college);

  Future<Either<FirebaseFailure, List<ItemModel>>> getCanteenDetails(
      String canteenId);

  ///[Cart ]
  Future<Either<FirebaseFailure, Map<String, CartModel>>> getCanteenCartItems();
  Future<Either<FirebaseFailure, Unit>> addToCanteenCart({
    CartModel? cartModel,
    bool? isDeleting,
  });
  Future<Either<FirebaseFailure, String>> placeCanteenOrder({
    @required CartModel? cartModel,
    @required bool? isDelivery,
    @required DeliverableZonesModel? deliverableZonesModel,
    @required String? deliveryAddress,
    @required CoolUser? coolUser,
    @required String? paymentId,
    @required bool? isTakeAway,
    @required String? comments,
  });
}
