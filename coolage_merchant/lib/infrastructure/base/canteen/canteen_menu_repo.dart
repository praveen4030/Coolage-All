import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolage_merchant/domain/base/canteen/i_canteen_menu_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:coolage_merchant/domain/core/failure/firebase_failure.dart';
import 'package:coolage_merchant/domain/base/canteen/item_model.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:coolage_merchant/infrastructure/core/firebase_helpers.dart';

@LazySingleton(as: ICanteenMenuRepo)
class CanteenMenuRepo extends ICanteenMenuRepo {
  final FirebaseFirestore _firestore;
  final Reference _storageReference;

  CanteenMenuRepo(
    this._firestore,
    this._storageReference,
  );

  @override
  Future<Either<FirebaseFailure, Unit>> deleteMenuItem(
      String canteenId, ItemModel itemModel) async {
    try {
      final doc = _firestore.canteenItemsCollection.doc(canteenId);
      await doc.update({
        'itemsMap.${itemModel.itemId}': FieldValue.delete(),
      });
      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, List<ItemModel>>> getCanteenMenu(
      String canteenId) async {
    try {
      final doc = await _firestore.canteenItemsCollection.doc(canteenId).get();
      if (doc.data() != null) {
        final map = doc.data()! as Map<String, dynamic>;
        final productsMap = map['itemsMap'] as Map;
        Map<String, ItemModel> itemsMapModel = productsMap.map((key, value) =>
            MapEntry(key as String,
                ItemModel.fromMap(value as Map<String, dynamic>)));

        final productsList = itemsMapModel.values.toList();

        return right(productsList);
      }
      return right([]);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> updateMenuItem(
      String canteenId, ItemModel itemModel,
      {File? file}) async {
    try {
      if (file != null) {
        final UploadTask uploadTask = _storageReference
            .child(canteenId)
            .child(itemModel.itemId!)
            .putFile(file);
        final TaskSnapshot storageSnap = await uploadTask.whenComplete(() {});
        itemModel.image = await storageSnap.ref.getDownloadURL();
      }
      final doc = _firestore.canteenItemsCollection.doc(canteenId);
      final Map<String, dynamic> map = {
        'itemsMap.${itemModel.itemId}': itemModel.toMap(),
      };
      await doc.update(map);
      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> addMenuItem(
      String canteenId, ItemModel itemModel,
      {File? file}) async {
    try {
      final doc = _firestore.canteenItemsCollection.doc(canteenId);
      itemModel.itemId = _firestore.canteenItemsCollection.doc().id;
      String fileUrl = "";
      if (file != null) {
        final UploadTask uploadTask = _storageReference
            .child(canteenId)
            .child(itemModel.itemId!)
            .putFile(file);
        final TaskSnapshot storageSnap = await uploadTask.whenComplete(() {});
        fileUrl = await storageSnap.ref.getDownloadURL();
      }
      itemModel.image = fileUrl;

      await doc.update({
        'itemsMap.${itemModel.itemId}': itemModel.toMap(),
      });
      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> addCategory(
      String canteenId, String category) async {
    try {
      final doc = _firestore.canteenBasicDetailsCollection.doc(canteenId);
      final list = [category];
      await doc.update({
        'categoriesList': FieldValue.arrayUnion(list),
      });
      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }
}
