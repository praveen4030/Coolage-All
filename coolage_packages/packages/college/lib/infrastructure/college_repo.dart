import 'package:cards/cards.dart';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:college/college.dart';
import 'package:college/domain/group_model.dart';
import 'package:college/domain/i_college_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:core/core.dart';

@LazySingleton(as: ICollegeRepo)
class CollegeRepo extends ICollegeRepo {
  final FirebaseFirestore _firestore;
  final Reference _storageReference;

  CollegeRepo(
    this._firestore,
    this._storageReference,
  );

  @override
  Future<Either<FirebaseFailure, AboutCollegeModel>> getAboutCollege(
      String userCollege) async {
    try {
      final doc = await _firestore.collegesCollection
          .doc(userCollege)
          .docsCollection
          .aboutCollegeDocument
          .get();

      final aboutCollegeModel = doc.exists && doc.data() != null
          ? AboutCollegeModel.fromMap(doc.data()! as Map<String, dynamic>)
          : AboutCollegeModel.empty();
      aboutCollegeModel.collegeName = userCollege;

      return right(aboutCollegeModel);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, CollegeModel>> getCollegeDetails(
      String userCollege) async {
    try {
      final doc = await _firestore.collegesCollection.doc(userCollege).get();

      var collegeModel = doc.exists && doc.data() != null
          ? CollegeModel.fromMap(doc.data()! as Map<String, dynamic>)
          : CollegeModel.fromEmpty();

      return right(collegeModel);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, OfficialLinks>> addOfficialLink(
      String userCollege, String title, String link,
      {File? file}) async {
    try {
      String fileUrl = '';
      final docId = _firestore.collegesCollection
          .doc(userCollege)
          .collection("LinksDummy")
          .doc();
      if (file != null) {
        final uploadTask = await ImagePickerHelper.getUploadTaskToUploadImage(
            file,
            _storageReference.collegesStorageCollection
                .child(userCollege)
                .child(docId.id));
        if (uploadTask != null) {
          final TaskSnapshot storageSnap = await uploadTask.whenComplete(() {});
          fileUrl = await storageSnap.ref.getDownloadURL();
        }
      }

      final model = OfficialLinks(
        link: link,
        name: title,
        image: fileUrl,
        docId: docId.id,
      );

      await _firestore.collegesCollection
          .doc(userCollege)
          .docsCollection
          .doc("AboutCollege")
          .update(
        {
          'officialLinks.${docId.id}': model.toMap(),
        },
      );
      //everything worked well
      return right(model);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> deleteOfficialLink(
      String userCollege, OfficialLinks officialLinks) async {
    try {
      await _firestore.collegesCollection
          .doc(userCollege)
          .docsCollection
          .doc("AboutCollege")
          .update({
        'officialLinks.${officialLinks.docId}': FieldValue.delete(),
      });
      //everything worked well
      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, OfficialLinks>> editOfficialLink(
      String userCollege, OfficialLinks officialLinks,
      {File? file}) async {
    try {
      String fileUrl = officialLinks.image ?? '';
      if (file != null) {
        final uploadTask = await ImagePickerHelper.getUploadTaskToUploadImage(
            file,
            _storageReference.collegesStorageCollection
                .child(userCollege)
                .child(officialLinks.docId!));
        if (uploadTask != null) {
          final TaskSnapshot storageSnap = await uploadTask.whenComplete(() {});
          fileUrl = await storageSnap.ref.getDownloadURL();
        }
      }

      final model = OfficialLinks(
        link: officialLinks.link,
        name: officialLinks.name,
        image: fileUrl,
        docId: officialLinks.docId,
      );

      await _firestore.collegesCollection
          .doc(userCollege)
          .docsCollection
          .doc("AboutCollege")
          .update({
        'officialLinks.${officialLinks.docId}': model.toMap(),
      });
      //everything worked well
      return right(model);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, String>> modifyAboutCollege(
    String userCollege, {
    String? about,
    String? logoUrl,
    File? file,
  }) async {
    String fileUrl = '';
    if (file != null) {
      final uploadTask = await ImagePickerHelper.getUploadTaskToUploadImage(
          file,
          _storageReference.collegesStorageCollection
              .child(userCollege)
              .child("CollegeLogo"));
      if (uploadTask != null) {
        final TaskSnapshot storageSnap = await uploadTask.whenComplete(() {});
        fileUrl = await storageSnap.ref.getDownloadURL();
      }
    }
    try {
      final url = fileUrl.isNotEmpty
          ? fileUrl
          : logoUrl?.isNotEmpty ?? false
              ? logoUrl
              : '';
      await _firestore.collegesCollection
          .doc(userCollege)
          .docsCollection
          .doc("AboutCollege")
          .update(
        {
          'about': about,
          'collegeLogo': url,
        },
      );
      //everything worked well
      return right(url);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, GroupModel>> getGroupDetails(
      String groupName, String college) async {
    try {
      final doc = await _firestore.collegesCollection
          .doc(college)
          .groupsCollection
          .doc(groupName)
          .get();
      if (doc.exists) {
        if (doc.data() != null) {
          final model = GroupModel.fromMap(doc.data() as Map<String, dynamic>);
          return right(model);
        }
      }

      //everything worked well
      return left(FirebaseFailure.customError("Something went wrong !"));
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Cards>> addCollegeCard(
      String userCollege, File file) async {
    try {
      final cardDoc = _firestore.collegesCollection
          .doc(userCollege)
          .collection("For new doc")
          .doc();
      final uploadTask = await ImagePickerHelper.getUploadTaskToUploadImage(
          file,
          _storageReference.collegesStorageCollection
              .child(userCollege)
              .child("Cards")
              .child(cardDoc.id));
      if (uploadTask != null) {
        final TaskSnapshot storageSnap = await uploadTask.whenComplete(() {});
        String fileUrl = await storageSnap.ref.getDownloadURL();
        final cardModel = Cards(
          docId: cardDoc.id,
          url: '',
          image: fileUrl,
          timestamp: Timestamp.now(),
        );
        await _firestore.collegesCollection.doc(userCollege).update(
          {
            'homeCardsList.${cardDoc.id}': cardModel.toMap(),
          },
        );

        //everything worked well
        return right(cardModel);
      }
      return left(FirebaseFailure.customError("Something went wrong!"));
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> deleteCollegeCard(
      String userCollege, Cards cards) async {
    try {
      await _firestore.collegesCollection.doc(userCollege).update({
        'homeCardsList.${cards.docId}': FieldValue.delete(),
      });
      //everything worked well
      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, String>> addCollegeImage(
      String userCollege, File file) async {
    try {
      final cardDoc = _firestore.collegesCollection
          .doc(userCollege)
          .collection("For new doc")
          .doc();
      final uploadTask = await ImagePickerHelper.getUploadTaskToUploadImage(
          file,
          _storageReference.collegesStorageCollection
              .child(userCollege)
              .child("Images")
              .child(cardDoc.id));
      if (uploadTask == null) {
        return left(FirebaseFailure.customError("Something went wrong!"));
      }
      final TaskSnapshot storageSnap = await uploadTask.whenComplete(() {});
      String fileUrl = await storageSnap.ref.getDownloadURL();
      final list = [fileUrl];
      await _firestore.collegesCollection
          .doc(userCollege)
          .docsCollection
          .aboutCollegeDocument
          .set({
        'imagesList': FieldValue.arrayUnion(list),
      }, SetOptions(merge: true));
      //everything worked well
      return right(fileUrl);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> deleteCollegeImage(
      String userCollege, String image) async {
    try {
      final list = [image];
      await _firestore.collegesCollection
          .doc(userCollege)
          .docsCollection
          .aboutCollegeDocument
          .update({
        'imagesList': FieldValue.arrayRemove(list),
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
