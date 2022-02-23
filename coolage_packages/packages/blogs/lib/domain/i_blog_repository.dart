import 'dart:io';

import 'package:blogs/blogs.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:user/user.dart';

abstract class IBlogRepository {
  Future<Either<FirebaseFailure, List<BlogsModel>>> getBlogs(
    List<String> selectedTags, {
    bool? isGettingPostedByCollegeBlogs,
    String? city,
    String? college,
    String? status,
    DateTime? date,
  });
  Future<Either<FirebaseFailure, List<BlogsModel>>> getMoreBlogs(
    List<String> selectedTags,
    BlogsModel model, {
    bool? isGettingPostedByCollegeBlogs,
    String? city,
    String? college,
    String? status,
    DateTime? date,
  });
  Future<Either<FirebaseFailure, List<BlogsModel>>> getUserBlogs(
    CoolUser coolUser, {
    String? status,
    DateTime? date,
  });
  Future<Either<FirebaseFailure, List<BlogsModel>>> getMoreUserBlogs(
    CoolUser coolUser,
    BlogsModel model, {
    String? status,
    DateTime? date,
  });
  Future<Either<FirebaseFailure, BlogsModel>> addBlog(
    String userCollege, {
    BlogsModel? blogsModel,
    File? file,
  });
  Future<Either<FirebaseFailure, Unit>> deleteBlog(
    String userCollege,
    BlogsModel? blogsModel,
  );
  Future<Either<FirebaseFailure, Unit>> declineBlog(
    String userCollege,
    BlogsModel blogsModel,
  );
  Future<Either<FirebaseFailure, Unit>> publishBlog(
    String userCollege,
    BlogsModel blogsModel,
  );
  Future<Either<FirebaseFailure, Unit>> likePost(
    BlogsModel blogsModel,
    bool isLike,
  );
}
