import 'dart:io';

import 'package:canteen/domain/i_canteen_card_repo.dart';
import 'package:cards/cards.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICanteenCardsRepository)
class CardRepo extends ICanteenCardsRepository {
  final FirebaseFirestore _firestore;
  final Reference _storageReference;

  CardRepo(
    this._firestore,
    this._storageReference,
  );

  @override
  Future<Either<FirebaseFailure, List<Cards>>> getCanteenCards() async {
    try {
      final cardsDoc =
          await _firestore.cardsCollection.doc('CanteenCards').get();
      if (cardsDoc.exists && cardsDoc.data() != null) {
        final cardsList = ((cardsDoc.data()! as Map<String, dynamic>)['cards']
                as Map<String, dynamic>)
            .map((key, value) => MapEntry(
                key, Cards.fromMap(value as Map<String, dynamic>, key)))
            .values
            .toList();
        cardsList.sort((a, b) => b.timestamp!.compareTo(a.timestamp!));

        return right(cardsList);
      }
      return right([]);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Cards>> addCanteenCard(
      String userCollege, File file) async {
    try {
      String fileUrl = '';
      if (file != null) {
        final uploadTask = await ImagePickerHelper.getUploadTaskToUploadImage(
            file,
            _storageReference.collegesStorageCollection.child(userCollege));
        if (uploadTask != null) {
          final TaskSnapshot storageSnap = await uploadTask.whenComplete(() {});
          fileUrl = await storageSnap.ref.getDownloadURL();
        }
      }
      final cardDoc = _firestore.collegesCollection
          .doc(userCollege)
          .collection("For new doc")
          .doc();
      final cardModel = Cards(
        docId: cardDoc.id,
        url: '',
        image: fileUrl,
        timestamp: Timestamp.now(),
      );
      await _firestore.collegesCollection.doc(userCollege).set({
        'homeCards.${cardDoc.id}': cardModel.toMap(),
      }, SetOptions(merge: true));
      //everything worked well
      return right(cardModel);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> deleteCanteenCard(
      String userCollege, Cards cards) async {
    try {
      await _firestore.collegesCollection
          .doc(userCollege)
          .docsCollection
          .doc("Cards")
          .update({
        'homeCards.${cards.docId}': FieldValue.delete(),
      });
      //everything worked well
      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }
}
