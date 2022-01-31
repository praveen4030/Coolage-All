import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:user/user.dart';

import '../feed.dart';

abstract class IFeedRepository {
  Future<Either<FirebaseFailure, List<FeedModel>>> getPosts(
    String userCollege, {
    String? status,
    DateTime? date,
  });
  Future<Either<FirebaseFailure, List<FeedModel>>> getMorePosts(
    String userCollege,
    FeedModel feed, {
    String? status,
    DateTime? date,
  });
  Future<Either<FirebaseFailure, List<FeedModel>>> getUserPosts(
    CoolUser coolUser, {
    String? status,
    DateTime? date,
  });
  Future<Either<FirebaseFailure, List<FeedModel>>> getMoreUserPosts(
    CoolUser coolUser,
    FeedModel feed, {
    String? status,
    DateTime? date,
  });
  Future<Either<FirebaseFailure, FeedModel>> addFeed(
    String userCollege, {
    FeedModel? feedModel,
    File? feedImageFile,
    File? logoImageFile,
  });
  Future<Either<FirebaseFailure, Unit>> deleteFeed(
    String userCollege,
    FeedModel feedModel,
  );
  Future<Either<FirebaseFailure, Unit>> declineFeed(
    String userCollege,
    FeedModel feedModel,
  );
  Future<Either<FirebaseFailure, Unit>> publishFeed(
    String userCollege,
    FeedModel feedModel,
  );
}
