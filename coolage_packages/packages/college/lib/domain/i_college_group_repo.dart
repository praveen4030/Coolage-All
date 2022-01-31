import 'dart:io';

import 'package:cards/cards.dart';
import 'package:college/college.dart';
import 'package:college/domain/group_model.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:user/user.dart';

abstract class ICollegeGroupRepo {
  Future<Either<FirebaseFailure, GroupModel>> addGroupDetails(
    String userCollege,
    GroupModel groupModel,
    bool isEdit, {
    String? earlierName,
    File? backgroundImageFile,
    File? logoFile,
  });
  Future<Either<FirebaseFailure, Unit>> deleteGroupDetails(
    String userCollege,
    GroupModel groupModel,
  );
  Future<Either<FirebaseFailure, GroupModel>> getGroupDetails(
      String groupName, String college);
  Future<Either<FirebaseFailure, List<CoolUser>>> getDepartmentFaculties(
      String college, String department);
  Future<Either<FirebaseFailure, List<CoolUser>>> getMoreDepartmentFaculties(
    String college,
    String department,
    CoolUser coolUser,
  );
  Future<Either<FirebaseFailure, List<CoolUser>>> getGroupMembers({
    required String college,
    required String groupName,
  });
  Future<Either<FirebaseFailure, List<CoolUser>>> getMoreGroupMembers({
    required String college,
    required String groupName,
    required CoolUser coolUser,
  });
  Future<Either<FirebaseFailure, List<CoolUser>>>
      getDepartmentStudentsGroupWise({
    required String department,
    required String college,
    required String degree,
    required String year,
  });
  Future<Either<FirebaseFailure, List<CoolUser>>>
      getMoreDepartmentStudentsGroupWise({
    required String department,
    required String college,
    required String degree,
    required String year,
    required CoolUser coolUser,
  });
}
