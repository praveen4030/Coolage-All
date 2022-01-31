import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolage_merchant/domain/base/canteen/i_canteen_basic_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:coolage_merchant/domain/core/failure/firebase_failure.dart';
import 'package:injectable/injectable.dart';
import 'package:coolage_merchant/infrastructure/core/firebase_helpers.dart';

@LazySingleton(as: ICanteenBasicRepo)
class CanteenBasicRepo extends ICanteenBasicRepo {
  final FirebaseFirestore _firestore;

  CanteenBasicRepo(
    this._firestore,
  );

  @override
  Future<Either<FirebaseFailure, Unit>> switchCanteenDeliveryStatus(
      String canteenId, bool isDelivery) async {
    try {
      final orderDoc = _firestore.canteenBasicDetailsCollection.doc(canteenId);
      await orderDoc.update({
        'isDelivery': isDelivery,
      });
      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> switchCanteenOpenStatus(
      String canteenId, bool isOpen) async {
    try {
      final orderDoc = _firestore.canteenBasicDetailsCollection.doc(canteenId);
      await orderDoc.update({
        'isOpen': isOpen,
      });
      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }
}
