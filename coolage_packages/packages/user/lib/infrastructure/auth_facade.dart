import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:user/domain/i_auth_facade.dart';
import 'package:user/user.dart';

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

  /// if authenticated will get user details
  /// if unauthenticated return none()
  /// if authenticated and user details saved return [CoolUser]
  /// else will return unit as it not an error but open page to input user details
  /// as user document is not present in firebase
  @override
  Future<Option<Either<Unit, CoolUser>>> getSignedInUser() async {
    final User? user = _firebaseAuth.currentUser;
    return user != null
        ? some(
            await getUserDocument(user.uid),
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
        final CoolUser coolUser =
            CoolUser.fromMap(userDoc.data()! as Map<String, dynamic>);
        if (coolUser.name?.isEmpty ?? true) {
          return left(unit);
        }

        return right(coolUser);
      }
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
    try {
      String uid = FirebaseAuth.instance.currentUser!.uid;
      final uploadTask = await ImagePickerHelper.getUploadTaskToUploadImage(
          file,
          _storageReference.child("User Images").child(uid).child('Profile'));
      if (uploadTask == null) {
        return left(FirebaseFailure.customError("Something went wrong"));
      }

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
      return left(FirebaseFailure.customError(e.message.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> updateUserDetails(
      {CoolUser? coolUser, File? file}) async {
    // TODO: implement updateUserDetails
    try {
      String uid = FirebaseAuth.instance.currentUser!.uid;
      String fileUrl = '';
      if (file != null) {
        final UploadTask uploadTask =
            _storageReference.child("User Images").child(uid).putFile(file);
        final TaskSnapshot storageSnap = await uploadTask.whenComplete(() {});
        fileUrl = await storageSnap.ref.getDownloadURL();
      }
      coolUser!.imageUrl = fileUrl;
      final deviceToken = await FirebaseMessaging.instance.getToken();
      coolUser.deviceToken = deviceToken;
      final map = await coolUser.toMap();
      await _firestore.usersCollection.doc(uid).set(
            map,
            SetOptions(merge: true),
          );
      //everything worked well
      return right(unit);
    } on FirebaseAuthException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, DeliveryAddressModel>> modifyDeliveryAddress({
    bool? isEdit,
    bool? isDelete,
    String? zone,
    DeliveryAddressModel? deliveryAddressModel,
  }) async {
    try {
      String uid = FirebaseAuth.instance.currentUser!.uid;
      final list = [
        deliveryAddressModel!.toMap(),
      ];
      if (isDelete ?? false) {
        final docid = deliveryAddressModel.key;
        await _firestore.usersCollection.doc(uid).update({
          'deliveryAddressesMap.$zone.$docid': FieldValue.delete(),
        });
      } else if (isEdit ?? false) {
        final docid = deliveryAddressModel.key;
        await _firestore.usersCollection.doc(uid).update({
          'deliveryAddressesMap.$zone.$docid': deliveryAddressModel.toMap(),
        });
      } else {
        final docId = _firestore.collection('Address').doc().id;
        deliveryAddressModel.key = docId;
        await _firestore.usersCollection.doc(uid).update({
          'deliveryAddressesMap.$zone.$docId': deliveryAddressModel.toMap()
        });
      }

      //everything worked well
      return right(deliveryAddressModel);
    } on FirebaseAuthException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }
}
