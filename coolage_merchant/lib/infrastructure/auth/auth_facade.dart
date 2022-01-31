import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolage_merchant/domain/auth/i_auth_facade.dart';
import 'package:coolage_merchant/domain/base/canteen/canteen_basic_details_model.dart';
import 'package:coolage_merchant/domain/core/failure/firebase_failure.dart';
import 'package:coolage_merchant/domain/user/cool_user.dart';
import 'package:coolage_merchant/infrastructure/core/firebase_helpers.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthFacade)
class AuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;
  final Reference _storageReference;

  AuthFacade(
    this._firebaseAuth,
    this._firestore,
    this._storageReference,
  );

  static Future<bool> getFirebaseUser() async {
    User? firebaseUser = FirebaseAuth.instance.currentUser;
    if (firebaseUser == null) {
      firebaseUser = await FirebaseAuth.instance.authStateChanges().first;
    }
    return firebaseUser != null;
  }

  /// if authenticated will get user details
  /// if unauthenticated return none()
  /// if authenticated and user details saved return [CoolUser]
  /// else will return unit as it not an error but open page to input user details
  /// as user document is not present in firebase
  @override
  Future<Option<Either<Unit, CoolUser>>> getSignedInUser() async {
    final User? user = _firebaseAuth.currentUser;
    return await getFirebaseUser()
        ? some(
            await getUserDocument(user!.uid),
          )
        : none();
  }

  Future<Either<Unit, CoolUser>> getUserDocument(String userUid) async {
    try {
      final DocumentSnapshot userDoc =
          await _firestore.usersCollection.doc(userUid).get();
      if (!userDoc.exists) {
        return left(unit);
      } else {
        CoolUser user =
            CoolUser.fromMap(userDoc.data()! as Map<String, dynamic>);
        if (user.canteenId == null) {
          return left(unit);
        }
        final canteenDoc = await _firestore.canteenBasicDetailsCollection
            .doc(user.canteenId)
            .get();
        if (canteenDoc.exists) {
          final canteenBasicDetailsModel = CanteenBasicDetailsModel.fromMap(
              canteenDoc.data()! as Map<String, dynamic>);
          user.canteenBasicDetailsModel = canteenBasicDetailsModel;
          return right(user);
        }
        return left(unit);
      }
    } on FirebaseAuthException catch (e) {
      return left(unit);
    } catch (e) {
      return left(unit);
    }
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  @override
  Future<Either<FirebaseFailure, String>> updateUserImage(File file) async {
    // TODO: implement updateUserImage
    try {
      String uid = FirebaseAuth.instance.currentUser!.uid;

      final UploadTask uploadTask = _storageReference
          .child("User Images")
          .child(uid)
          .child('Profile')
          .putFile(file);
      final TaskSnapshot storageSnap = await uploadTask.whenComplete(() {});
      String fileUrl = await storageSnap.ref.getDownloadURL();

      await _firestore.usersCollection.doc(uid).update(
        {
          'imageUrl': fileUrl,
        },
      );

      //everything worked well
      return right(fileUrl);
    } on FirebaseAuthException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> updateUserDetails(
      CoolUser coolUser) async {
    // TODO: implement updateUserDetails
    try {
      String uid = FirebaseAuth.instance.currentUser!.uid;

      await _firestore.usersCollection.doc(uid).update(coolUser.toMap());
      //everything worked well
      return right(unit);
    } on FirebaseAuthException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, CanteenBasicDetailsModel>>
      updateCanteenDetails(
          {CanteenBasicDetailsModel? canteenModel, File? file}) async {
    // TODO: implement updateCanteenDetails
    try {
      String uid = FirebaseAuth.instance.currentUser!.uid;
      bool isUpdating = canteenModel!.canteenId != null;
      CollectionReference query = _firestore.canteenBasicDetailsCollection;
      DocumentReference canteenDoc;
      if (isUpdating) {
        canteenDoc = query.doc(canteenModel.canteenId);
      } else {
        canteenDoc = query.doc();
      }
      canteenModel.canteenId = canteenDoc.id;

      String fileUrl = '';
      if (file != null) {
        final UploadTask uploadTask = _storageReference
            .child("Canteen Images")
            .child(canteenDoc.id)
            .child("1")
            .putFile(file);
        final TaskSnapshot storageSnap = await uploadTask.whenComplete(() {});
        fileUrl = await storageSnap.ref.getDownloadURL();
      }
      final deviceToken = await FirebaseMessaging.instance.getToken();
      if (canteenModel.deviceTokensMap != null) {
        canteenModel.deviceTokensMap!.putIfAbsent(uid, () => deviceToken!);
      } else {
        final Map<String, String> map = {};
        map.putIfAbsent(uid, () => deviceToken!);
        canteenModel.deviceTokensMap = map;
      }
      canteenModel.image = fileUrl;
      await canteenDoc.set(
        canteenModel.toMap(),
        SetOptions(merge: true),
      );
      //if only adding
      if (!isUpdating) {
        await _firestore.usersCollection.doc(uid).set(
          {
            'canteenId': canteenDoc.id,
            'isCanteenAdmin': true,
          },
          SetOptions(merge: true),
        );
      }

      //everything worked well
      return right(canteenModel);
    } on FirebaseAuthException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }
}
