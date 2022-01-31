import 'package:coolage_merchant/domain/base/canteen/canteen_basic_details_model.dart';
import 'package:coolage_merchant/domain/core/failure/firebase_failure.dart';
import 'package:dartz/dartz.dart';

abstract class ICanteenBasicRepo {
  Future<Either<FirebaseFailure, Unit>> switchCanteenDeliveryStatus(
      String canteenId, bool isDelivery);
  Future<Either<FirebaseFailure, Unit>> switchCanteenOpenStatus(
      String canteenId, bool isOpen);
}
