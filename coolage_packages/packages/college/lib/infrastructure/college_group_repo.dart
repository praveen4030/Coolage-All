import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:college/domain/group_model.dart';
import 'package:college/domain/i_college_group_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:core/core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:user/user.dart';

@LazySingleton(as: ICollegeGroupRepo)
class CollegeGroupRepo extends ICollegeGroupRepo {
  final FirebaseFirestore _firestore;
  final Reference _storageReference;

  CollegeGroupRepo(
    this._firestore,
    this._storageReference,
  );

  @override
  Future<Either<FirebaseFailure, GroupModel>> getGroupDetails(
      String groupName, String college) async {
    try {
      final docses = await _firestore.collegesCollection
          .doc(college)
          .groupsCollection
          .where("name", isEqualTo: groupName)
          .limit(1)
          .get();
      if (docses.docs.isNotEmpty) {
        final doc = docses.docs.first;
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
  Future<Either<FirebaseFailure, List<CoolUser>>> getDepartmentFaculties(
      String college, String department) async {
    try {
      Query query = _firestore.usersCollection;
      final facultiesDoc = await query
          .where('branch', isEqualTo: department)
          .where('college', isEqualTo: college)
          .where('userType', isEqualTo: Constants.USER_TYPE_FACULTY)
          .orderBy('name')
          .limit(20)
          .get();

      final List<CoolUser> postsList = facultiesDoc.docs
          .map((snapshot) =>
              CoolUser.fromMap(snapshot.data()! as Map<String, dynamic>))
          .toList();
      return right(postsList);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, List<CoolUser>>> getMoreDepartmentFaculties(
      String college, String department, CoolUser coolUser) async {
    try {
      Query query = _firestore.usersCollection;
      final facultiesDoc = await query
          .where('branch', isEqualTo: department)
          .where('college', isEqualTo: college)
          .where('userType', isEqualTo: Constants.USER_TYPE_FACULTY)
          .orderBy('name')
          .startAfter([coolUser.name])
          .limit(20)
          .get();

      final List<CoolUser> postsList = facultiesDoc.docs
          .map((snapshot) =>
              CoolUser.fromMap(snapshot.data()! as Map<String, dynamic>))
          .toList();

      return right(postsList);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, List<CoolUser>>>
      getDepartmentStudentsGroupWise(
          {required String department,
          required String college,
          required String degree,
          required String year}) async {
    try {
      Query query = _firestore.usersCollection;
      final facultiesDoc = await query
          .where('branch', isEqualTo: department)
          .where('degree', isEqualTo: degree)
          .where('year', isEqualTo: year)
          .where('college', isEqualTo: college)
          .where('userType', isEqualTo: Constants.USER_TYPE_STUDENT)
          .orderBy('name')
          .limit(20)
          .get();

      final List<CoolUser> postsList = facultiesDoc.docs
          .map((snapshot) =>
              CoolUser.fromMap(snapshot.data()! as Map<String, dynamic>))
          .toList();

      return right(postsList);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, List<CoolUser>>>
      getMoreDepartmentStudentsGroupWise(
          {required String department,
          required String college,
          required String degree,
          required String year,
          required CoolUser coolUser}) async {
    try {
      Query query = _firestore.usersCollection;
      final facultiesDoc = await query
          .where('branch', isEqualTo: department)
          .where('degree', isEqualTo: degree)
          .where('year', isEqualTo: year)
          .where('college', isEqualTo: college)
          .where('userType', isEqualTo: Constants.USER_TYPE_STUDENT)
          .orderBy('name')
          .startAfter([coolUser.name])
          .limit(20)
          .get();

      final List<CoolUser> postsList = facultiesDoc.docs
          .map((snapshot) =>
              CoolUser.fromMap(snapshot.data()! as Map<String, dynamic>))
          .toList();

      return right(postsList);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, List<CoolUser>>> getGroupMembers(
      {required String college, required String groupName}) async {
    try {
      Query query = _firestore.usersCollection;
      final facultiesDoc = await query
          .where('groups', arrayContains: groupName)
          .where('college', isEqualTo: college)
          .orderBy('name')
          .limit(20)
          .get();

      final List<CoolUser> postsList = facultiesDoc.docs
          .map((snapshot) =>
              CoolUser.fromMap(snapshot.data()! as Map<String, dynamic>))
          .toList();
      return right(postsList);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, List<CoolUser>>> getMoreGroupMembers(
      {required String college,
      required String groupName,
      required CoolUser coolUser}) async {
    try {
      Query query = _firestore.usersCollection;
      final facultiesDoc = await query
          .where('groups', arrayContains: groupName)
          .where('college', isEqualTo: college)
          .orderBy('name')
          .startAfter([coolUser.name])
          .limit(20)
          .get();

      final List<CoolUser> postsList = facultiesDoc.docs
          .map((snapshot) =>
              CoolUser.fromMap(snapshot.data()! as Map<String, dynamic>))
          .toList();

      return right(postsList);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, GroupModel>> addGroupDetails(
      String userCollege, GroupModel groupModel, bool isEdit,
      {String? earlierName, File? backgroundImageFile, File? logoFile}) async {
    try {
      if (backgroundImageFile != null) {
        final uploadTask = await ImagePickerHelper.getUploadTaskToUploadImage(
            backgroundImageFile,
            _storageReference.collegesStorageCollection
                .child(userCollege)
                .child(groupModel.name!)
                .child(backgroundImageFile.path));
        if (uploadTask != null) {
          final TaskSnapshot storageSnap = await uploadTask.whenComplete(() {});
          groupModel.image = await storageSnap.ref.getDownloadURL();
        }
      }

      if (logoFile != null) {
        final uploadTask = await ImagePickerHelper.getUploadTaskToUploadImage(
            logoFile,
            _storageReference.collegesStorageCollection
                .child(userCollege)
                .child(groupModel.name!)
                .child(logoFile.path));
        if (uploadTask != null) {
          final TaskSnapshot storageSnap = await uploadTask.whenComplete(() {});
          groupModel.logoImage = await storageSnap.ref.getDownloadURL();
        }
      }
      final list = [groupModel.name];
      String id = groupModel.isDepartment! ? 'departments' : 'groups';
      if (isEdit) {
        if (earlierName != groupModel.name) {
          final earlierList = [earlierName];
          await _firestore.collegesCollection.doc(userCollege).update({
            '$id': FieldValue.arrayRemove(earlierList),
          });
          await _firestore.collegesCollection.doc(userCollege).update({
            '$id': FieldValue.arrayUnion(list),
          });
        }
      } else {
        await _firestore.collegesCollection.doc(userCollege).update({
          '$id': FieldValue.arrayUnion(list),
        });
      }

      if (groupModel.docId?.isEmpty ?? true) {
        groupModel.docId = _firestore.collection("For new doc").doc().id;
      }

      await _firestore.collegesCollection
          .doc(userCollege)
          .collection("GroupsDetails")
          .doc(groupModel.docId)
          .set(
              groupModel.toMap(),
              SetOptions(
                merge: true,
              ));

      return right(groupModel);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> deleteGroupDetails(
      String userCollege, GroupModel groupModel) async {
    try {
      final list = [groupModel.name];
      String id = groupModel.isDepartment! ? 'departments' : 'groups';
      await _firestore.collegesCollection.doc(userCollege).update({
        '$id': FieldValue.arrayRemove(list),
      });

      await _firestore.collegesCollection
          .doc(userCollege)
          .collection("GroupsDetails")
          .doc(groupModel.docId)
          .delete();

      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }
}
