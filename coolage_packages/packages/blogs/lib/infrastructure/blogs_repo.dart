import 'dart:io';

import 'package:blogs/blogs.dart';
import 'package:blogs/domain/i_blog_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/core.dart';

import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:user/user.dart';

@LazySingleton(as: IBlogRepository)
class BlogsRepo extends IBlogRepository {
  final FirebaseFirestore _firestore;
  final Reference _storageReference;

  BlogsRepo(
    this._firestore,
    this._storageReference,
  );

  @override
  Future<Either<FirebaseFailure, List<BlogsModel>>> getBlogs(
    List<String> selectedTags, {
    bool? isGettingPostedByCollegeBlogs,
    String? city,
    String? college,
    String? status,
    DateTime? date,
  }) async {
    try {
      Query query = _firestore.blogsCollection;
      if (status != null) {
        query = query.where(Constants.APPROVAL_STATUS, isEqualTo: status);
      }
      if (date != null) {
        final afterTimestamp = date.add(const Duration(days: 1));
        query = query.where('timestamp',
            isGreaterThanOrEqualTo: date, isLessThan: afterTimestamp);
      }

      if (selectedTags.isNotEmpty) {
        query = query.where('filterTags', arrayContainsAny: selectedTags);
      }

      if (city != null) {
        query = query.where('city', isEqualTo: city);
      }
      if (college != null) {
        if (isGettingPostedByCollegeBlogs ?? false) {
          query = query.where('postedByUserCollege', isEqualTo: college);
        } else {
          query = query.where('college', isEqualTo: college);
        }
      }

      if (city == null &&
          college == null &&
          !selectedTags.contains("Public") &&
          !(isGettingPostedByCollegeBlogs ?? false)) {
        query = query.where("isPublic", isEqualTo: true);
      }
      final docs = await query
          .orderBy('timestamp', descending: true)
          .limit(Constants.BLOGS_LIMIT)
          .get();
      final List<BlogsModel> blogsModelList = docs.docs
          .map((snapshot) =>
              BlogsModel.fromMap(snapshot.data()! as Map<String, dynamic>))
          .toList();
      return right(blogsModelList);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, List<BlogsModel>>> getMoreBlogs(
    List<String> selectedTags,
    BlogsModel model, {
    bool? isGettingPostedByCollegeBlogs,
    String? city,
    String? college,
    String? status,
    DateTime? date,
  }) async {
    try {
      Query query = _firestore.blogsCollection;

      if (status != null) {
        query = query.where(Constants.APPROVAL_STATUS, isEqualTo: status);
      }
      if (date != null) {
        final afterTimestamp = date.add(const Duration(days: 1));
        query = query.where('timestamp',
            isGreaterThanOrEqualTo: date, isLessThan: afterTimestamp);
      }
      if (selectedTags.isNotEmpty) {
        query = query.where('filterTags', arrayContainsAny: selectedTags);
      }

      if (city != null) {
        query = query.where('city', isEqualTo: city);
      }
      if (college != null) {
        if (isGettingPostedByCollegeBlogs ?? false) {
          query = query.where('postedByUserCollege', isEqualTo: college);
        } else {
          query = query.where('college', isEqualTo: college);
        }
      }

      if (city == null &&
          college == null &&
          !selectedTags.contains("Public") &&
          !(isGettingPostedByCollegeBlogs ?? false)) {
        query = query.where("isPublic", isEqualTo: true);
      }
      final docs = await query
          .orderBy('timestamp', descending: true)
          .startAfter([model.timestamp])
          .limit(Constants.BLOGS_LIMIT)
          .get();
      final List<BlogsModel> blogsModelList = docs.docs
          .map((snapshot) =>
              BlogsModel.fromMap(snapshot.data()! as Map<String, dynamic>))
          .toList();
      return right(blogsModelList);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, BlogsModel>> addBlog(String userCollege,
      {BlogsModel? blogsModel, File? file}) async {
    try {
      String fileUrl = '';
      String docId = '';
      if (blogsModel!.docId != null) {
        docId = blogsModel.docId!;
      } else {
        docId = _firestore.blogsCollection.doc().id;
      }
      if (file != null) {
        final uploadTask = await ImagePickerHelper.getUploadTaskToUploadImage(
            file, _storageReference.blogsStorageCollection.child(docId));
        if (uploadTask != null) {
          final TaskSnapshot storageSnap = await uploadTask.whenComplete(() {});
          fileUrl = await storageSnap.ref.getDownloadURL();
        }
      }
      blogsModel.docId = docId;
      if (file != null) {
        blogsModel.image = fileUrl;
      }

      await _firestore.blogsCollection.doc(docId).set(
          blogsModel.toMap(),
          SetOptions(
            merge: true,
          ));
      //everything worked well
      return right(blogsModel);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> deleteBlog(
      String userCollege, BlogsModel? blogsModel) async {
    try {
      await _firestore.blogsCollection.doc(blogsModel!.docId).delete();
      //everything worked well
      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> declineBlog(
      String userCollege, BlogsModel blogsModel) async {
    try {
      await _firestore.blogsCollection.doc(blogsModel.docId).update({
        Constants.APPROVAL_STATUS: Constants.DECLINED,
        'declinedTimestamp': Timestamp.now(),
      });

      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> publishBlog(
      String userCollege, BlogsModel blogsModel) async {
    try {
      await _firestore.blogsCollection.doc(blogsModel.docId).update({
        Constants.APPROVAL_STATUS: Constants.APPROVED,
        'publishedTimestamp': Timestamp.now(),
      });

      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, List<BlogsModel>>> getUserBlogs(
      CoolUser coolUser,
      {String? status,
      DateTime? date}) async {
    try {
      Query query = _firestore.blogsCollection;
      if (status != null) {
        query = query.where(Constants.APPROVAL_STATUS, isEqualTo: status);
      }
      if (date != null) {
        final afterTimestamp = date.add(const Duration(days: 1));
        query = query.where('timestamp',
            isGreaterThanOrEqualTo: date, isLessThan: afterTimestamp);
      }

      final docs = await query
          .where('postedByUid', isEqualTo: coolUser.uid)
          .orderBy('timestamp', descending: true)
          .limit(Constants.BLOGS_LIMIT)
          .get();
      final List<BlogsModel> blogsModelList = docs.docs
          .map((snapshot) =>
              BlogsModel.fromMap(snapshot.data()! as Map<String, dynamic>))
          .toList();
      return right(blogsModelList);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, List<BlogsModel>>> getMoreUserBlogs(
      CoolUser coolUser, BlogsModel model,
      {String? status, DateTime? date}) async {
    try {
      Query query = _firestore.blogsCollection;

      if (status != null) {
        query = query.where(Constants.APPROVAL_STATUS, isEqualTo: status);
      }
      if (date != null) {
        final afterTimestamp = date.add(const Duration(days: 1));
        query = query.where('timestamp',
            isGreaterThanOrEqualTo: date, isLessThan: afterTimestamp);
      }

      final docs = await query
          .where('postedByUid', isEqualTo: coolUser.uid)
          .orderBy('timestamp', descending: true)
          .startAfter([model.timestamp])
          .limit(Constants.BLOGS_LIMIT)
          .get();
      final List<BlogsModel> blogsModelList = docs.docs
          .map((snapshot) =>
              BlogsModel.fromMap(snapshot.data()! as Map<String, dynamic>))
          .toList();
      return right(blogsModelList);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }
}
