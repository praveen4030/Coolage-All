import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:feed/domain/feed_functions.dart';
import 'package:feed/domain/i_feed_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:core/core.dart';
import 'package:user/user.dart';

import '../feed.dart';

@LazySingleton(as: IFeedRepository)
class FeedRepository extends IFeedRepository {
  final FirebaseFirestore _firestore;
  final Reference _storageReference;

  FeedRepository(
    this._firestore,
    this._storageReference,
  );

  @override
  Future<Either<FirebaseFailure, List<FeedModel>>> getMorePosts(
    String userCollege,
    FeedModel feed, {
    String? status,
    DateTime? date,
  }) async {
    try {
      Query query =
          _firestore.collegesCollection.doc(userCollege).feedCollection;
      query = query.where('publishTags',
          arrayContainsAny: FeedFunctions.getUserRelatedTag());
      if (date != null) {
        final afterTimestamp = date.add(const Duration(days: 1));
        query = query.where('timestamp',
            isGreaterThanOrEqualTo: date, isLessThan: afterTimestamp);
      }
      if (status != null) {
        if (status == Constants.EXPIRED) {
          query = query.where('expiryDateTime', isLessThan: DateTime.now());
          query = query.orderBy('expiryDateTime', descending: true);
        } else {
          query = query.where(Constants.APPROVAL_STATUS, isEqualTo: status);
        }
      }
      if (status != Constants.EXPIRED) {
        query = query
            .orderBy('timestamp', descending: true)
            .startAfter([feed.timestamp]);
      } else {
        query = query.startAfter([feed.expiryDateTime]);
      }

      final postsDoc = await query.limit(20).get();
      final List<FeedModel> postsList = postsDoc.docs
          .map((snapshot) =>
              FeedModel.fromMap(snapshot.data()! as Map<String, dynamic>))
          .toList();
      final List<FeedModel> updatedPostsList = [];
      if (status != null) {
        if (status == Constants.APPROVED || status == Constants.PENDING) {
          //remove posts which are expired need to do client side as query not supported

          for (final post in postsList) {
            if (!post.isExpired()) {
              updatedPostsList.add(post);
            }
          }
          return right(updatedPostsList);
        }
      }

      return right(postsList);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, List<FeedModel>>> getPosts(
    String userCollege, {
    String? status,
    DateTime? date,
  }) async {
    try {
      Query query =
          _firestore.collegesCollection.doc(userCollege).feedCollection;
      if (!FeedCoreFunctionality.isAdmin) {
        query = query.where('publishTags',
            arrayContainsAny: FeedFunctions.getUserRelatedTag());
      }

      if (date != null) {
        final afterTimestamp = date.add(const Duration(days: 1));
        query = query.where('timestamp',
            isGreaterThanOrEqualTo: date, isLessThan: afterTimestamp);
      }
      if (status != null) {
        if (status == Constants.EXPIRED) {
          query = query.where('expiryDateTime', isLessThan: DateTime.now());
          query = query.orderBy('expiryDateTime', descending: true);
        } else {
          query = query.where(Constants.APPROVAL_STATUS, isEqualTo: status);
        }
      }
      if (status != Constants.EXPIRED) {
        query = query.orderBy('timestamp', descending: true);
      }

      final postsDoc = await query.limit(20).get();
      final List<FeedModel> postsList = postsDoc.docs
          .map((snapshot) =>
              FeedModel.fromMap(snapshot.data()! as Map<String, dynamic>))
          .toList();
      final List<FeedModel> updatedPostsList = [];
      if (status != null) {
        if (status == Constants.APPROVED || status == Constants.PENDING) {
          //remove posts which are expired need to do client side as query not supported

          for (final post in postsList) {
            if (!post.isExpired()) {
              updatedPostsList.add(post);
            }
          }
          return right(updatedPostsList);
        }
      }

      return right(postsList);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, List<FeedModel>>> getUserPosts(
      CoolUser coolUser,
      {String? status,
      DateTime? date}) async {
    try {
      Query query =
          _firestore.collegesCollection.doc(coolUser.college).feedCollection;
      if (status != null) {
        if (status == Constants.EXPIRED) {
          query = query
              .where('expiryDateTime', isLessThan: DateTime.now())
              .orderBy('expiryDateTime', descending: true);
        } else {
          query = query
              .where(Constants.APPROVAL_STATUS, isEqualTo: status)
              .orderBy('timestamp', descending: true);
        }
      }
      if (date != null) {
        final afterTimestamp = date.add(const Duration(days: 1));
        query = query
            .where('timestamp',
                isGreaterThanOrEqualTo: date, isLessThan: afterTimestamp)
            .orderBy('timestamp', descending: true);
      }
      if (status == null && date == null) {
        query = query.orderBy('timestamp', descending: true);
      }

      final postsDoc = await query
          .where("postedByUid", isEqualTo: coolUser.uid)
          .limit(20)
          .get();
      final List<FeedModel> postsList = postsDoc.docs
          .map((snapshot) =>
              FeedModel.fromMap(snapshot.data()! as Map<String, dynamic>))
          .toList();

      return right(postsList);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, List<FeedModel>>> getMoreUserPosts(
      CoolUser coolUser, FeedModel feed,
      {String? status, DateTime? date}) async {
    try {
      Query query =
          _firestore.collegesCollection.doc(coolUser.college).feedCollection;
      if (status != null) {
        if (status == Constants.EXPIRED) {
          query = query
              .where('expiryDateTime', isLessThan: DateTime.now())
              .orderBy('expiryDateTime', descending: true);
        } else {
          query = query
              .where(Constants.APPROVAL_STATUS, isEqualTo: status)
              .orderBy('timestamp', descending: true);
        }
      }
      if (date != null) {
        final afterTimestamp = date.add(const Duration(days: 1));
        query = query
            .where('timestamp',
                isGreaterThanOrEqualTo: date, isLessThan: afterTimestamp)
            .orderBy('timestamp', descending: true);
      }

      if (status == null && date == null) {
        query = query.orderBy('timestamp', descending: true);
      }

      final postsDoc = await query
          .where("postedByUid", isEqualTo: coolUser.uid)
          .startAfter([feed.timestamp])
          .limit(20)
          .get();
      final List<FeedModel> postsList = postsDoc.docs
          .map((snapshot) =>
              FeedModel.fromMap(snapshot.data()! as Map<String, dynamic>))
          .toList();

      return right(postsList);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, FeedModel>> addFeed(
    String userCollege, {
    FeedModel? feedModel,
    File? feedImageFile,
    File? logoImageFile,
  }) async {
    try {
      String fileUrl = '';
      String logoUrl = '';
      String docId = '';
      if (feedModel!.docId != null) {
        docId = feedModel.docId!;
      } else {
        docId = _firestore.blogsCollection.doc().id;
      }
      if (feedImageFile != null) {
        final uploadTask = await ImagePickerHelper.getUploadTaskToUploadImage(
            feedImageFile,
            _storageReference.feedStorageCollection
                .child(docId)
                .child("FeedImage"));
        if (uploadTask != null) {
          final TaskSnapshot storageSnap = await uploadTask.whenComplete(() {});
          fileUrl = await storageSnap.ref.getDownloadURL();
        }
      }
      if (logoImageFile != null) {
        final uploadTask = await ImagePickerHelper.getUploadTaskToUploadImage(
            logoImageFile,
            _storageReference.feedStorageCollection
                .child(docId)
                .child("LogoImage"));
        if (uploadTask != null) {
          final TaskSnapshot storageSnap = await uploadTask.whenComplete(() {});
          logoUrl = await storageSnap.ref.getDownloadURL();
        }
      }
      feedModel.docId = docId;
      if (feedImageFile != null) {
        feedModel.image = fileUrl;
      }
      if (logoImageFile != null) {
        feedModel.categoryIcon = logoUrl;
      } else {
        feedModel.categoryIcon =
            Functions.getCategoryIconUrl(feedModel.addedByCategory ?? '');
      }

      String tagIndividual = Constants.INDIVIDUAL_GROUP;
      tagIndividual += "_";
      tagIndividual += feedModel.postedByUid!;
      if (!feedModel.publishTags!.contains(tagIndividual) &&
          !feedModel.publishTags!.contains("All")) {
        feedModel.publishTags!.add(tagIndividual);
      }
      await _firestore.collegesCollection
          .doc(userCollege)
          .feedCollection
          .doc(docId)
          .set(
              feedModel.toMap(),
              SetOptions(
                merge: true,
              ));
      //everything worked well
      return right(feedModel);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> deleteFeed(
      String userCollege, FeedModel? feedModel) async {
    try {
      await _firestore.collegesCollection
          .doc(userCollege)
          .feedCollection
          .doc(feedModel!.docId)
          .delete();
      //everything worked well
      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> publishFeed(
      String userCollege, FeedModel feedModel) async {
    try {
      await _firestore.collegesCollection
          .doc(userCollege)
          .feedCollection
          .doc(feedModel.docId)
          .update({
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
  Future<Either<FirebaseFailure, Unit>> declineFeed(
      String userCollege, FeedModel feedModel) async {
    try {
      await _firestore.collegesCollection
          .doc(userCollege)
          .feedCollection
          .doc(feedModel.docId)
          .update({
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
}
