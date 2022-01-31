import 'dart:io';

import 'package:coolage_merchant/domain/base/canteen/item_model.dart';
import 'package:coolage_merchant/domain/core/failure/firebase_failure.dart';
import 'package:dartz/dartz.dart';

abstract class ICanteenMenuRepo {
  Future<Either<FirebaseFailure, List<ItemModel>>> getCanteenMenu(
      String canteenId);
  Future<Either<FirebaseFailure, Unit>> updateMenuItem(
      String canteenId, ItemModel itemModel,
      {File? file});
  Future<Either<FirebaseFailure, Unit>> addMenuItem(
      String canteenId, ItemModel itemModel,
      {File? file});
  Future<Either<FirebaseFailure, Unit>> deleteMenuItem(
      String canteenId, ItemModel itemModel);
  Future<Either<FirebaseFailure, Unit>> addCategory(
      String canteenId, String category);
}
