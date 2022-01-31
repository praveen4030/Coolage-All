import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolage/domain/base/store/i_refurbished_repo.dart';
import 'package:coolage/domain/core/helpers/constants.dart';
import 'package:dartz/dartz.dart';
import 'package:coolage/domain/models/refurbished_model.dart';
import 'package:coolage/domain/core/failure/firebase_failure.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:coolage/infrastructure/core/firebase_helpers.dart';

@LazySingleton(as: IRefurbishedRepo)
class RefurbishedRepo extends IRefurbishedRepo {
  final FirebaseFirestore _firestore;
  final Reference _storageReference;

  RefurbishedRepo(
    this._firestore,
    this._storageReference,
  );
  @override
  Future<Either<FirebaseFailure, List<RefurbishedModel>>>
      getMoreRefurbishedItems(String college, RefurbishedModel model) async {
    try {
      final docs = await _firestore.collegesCollection
          .doc(college)
          .refurbishedItemsCollection
          .orderBy('timestamp', descending: true)
          .startAfter([model.timestamp])
          .limit(Constants.REFURBISHED_ITEMS_LIMIT)
          .get();
      final List<RefurbishedModel> list = docs.docs
          .map((snapshot) => RefurbishedModel.fromMap(
              snapshot.data()! as Map<String, dynamic>))
          .toList();
      return right(list);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, List<RefurbishedModel>>> getRefurbishedItems(
      String college) async {
    try {
      final docs = await _firestore.collegesCollection
          .doc(college)
          .refurbishedItemsCollection
          .orderBy('timestamp', descending: true)
          .limit(Constants.REFURBISHED_ITEMS_LIMIT)
          .get();
      final List<RefurbishedModel> list = docs.docs
          .map((snapshot) => RefurbishedModel.fromMap(
              snapshot.data()! as Map<String, dynamic>))
          .toList();
      return right(list);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }
}
