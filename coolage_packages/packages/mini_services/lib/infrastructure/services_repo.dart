import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:mini_services/domain/i_services_repo.dart';
import 'package:core/core.dart';
import 'package:mini_services/mini_services.dart';

@LazySingleton(as: IServicesRepo)
class ServicesRepo extends IServicesRepo {
  final FirebaseFirestore _firestore;
  final Reference _storageReference;

  ServicesRepo(
    this._firestore,
    this._storageReference,
  );

  @override
  Future<Either<FirebaseFailure, List<ServiceProviderModel>>>
      getServiceProviders(String userCollege, String serviceCategory) async {
    try {
      final doc = await _firestore.collegesCollection
          .doc(userCollege)
          .serviceProvidersCollection
          .doc(serviceCategory)
          .get();
      if (doc.data() != null) {
        final map =
            (doc.data()! as Map<String, dynamic>)['serviceProviders'] as Map;
        final List<ServiceProviderModel> list = [];
        map.forEach((key, value) {
          list.add(ServiceProviderModel.fromMap(value as Map<String, dynamic>));
        });
        return right(list);
      }
      return right([]);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, ServiceProviderModel>> addServiceProvider(
      String userCollege,
      {ServiceProviderModel? serviceProviderModel,
      File? file}) async {
    try {
      String fileUrl = '';
      String docId = '';
      if (serviceProviderModel!.docId != null) {
        docId = serviceProviderModel.docId!;
      } else {
        docId = _firestore.collegesCollection
            .doc(userCollege)
            .serviceProvidersCollection
            .doc(serviceProviderModel.category)
            .collection("Dummy")
            .doc()
            .id;
      }
      if (file != null) {
        final uploadTask = await ImagePickerHelper.getUploadTaskToUploadImage(
            file,
            _storageReference.collegesStorageCollection
                .child(userCollege)
                .child("ServiceProviders")
                .child(serviceProviderModel.category!)
                .child(docId));
        if (uploadTask != null) {
          final TaskSnapshot storageSnap = await uploadTask.whenComplete(() {});
          fileUrl = await storageSnap.ref.getDownloadURL();
        }
      }
      serviceProviderModel.docId = docId;
      if (file != null) {
        serviceProviderModel.image = fileUrl;
      }

      await _firestore.collegesCollection
          .doc(userCollege)
          .serviceProvidersCollection
          .doc(serviceProviderModel.category)
          .set(
              {
            'serviceProviders': {docId: serviceProviderModel.toMap()},
          },
              SetOptions(
                merge: true,
              ));
      //everything worked well
      return right(serviceProviderModel);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> deleteServiceProvider(
      String userCollege, ServiceProviderModel? serviceProviderModel) async {
    try {
      await _firestore.collegesCollection
          .doc(userCollege)
          .serviceProvidersCollection
          .doc(serviceProviderModel!.category)
          .set(
              {
            'serviceProviders': {
              serviceProviderModel.docId: FieldValue.delete()
            },
          },
              SetOptions(
                merge: true,
              ));
      //everything worked well
      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }
}
