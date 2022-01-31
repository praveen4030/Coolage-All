import 'dart:io';

import 'package:cards/cards.dart';
import 'package:college/college.dart';
import 'package:college/domain/group_model.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart';

abstract class ICollegeRepo {
  Future<Either<FirebaseFailure, GroupModel>> getGroupDetails(
      String groupName, String college);

  Future<Either<FirebaseFailure, AboutCollegeModel>> getAboutCollege(
      String userCollege);
  Future<Either<FirebaseFailure, CollegeModel>> getCollegeDetails(
      String userCollege);

  Future<Either<FirebaseFailure, OfficialLinks>> addOfficialLink(
      String userCollege, String title, String link,
      {File? file});
  Future<Either<FirebaseFailure, OfficialLinks>> editOfficialLink(
      String userCollege, OfficialLinks officialLinks,
      {File? file});
  Future<Either<FirebaseFailure, Unit>> deleteOfficialLink(
    String userCollege,
    OfficialLinks officialLinks,
  );
  Future<Either<FirebaseFailure, String>> modifyAboutCollege(
    String userCollege, {
    String? about,
    String? logoUrl,
    File? file,
  });

  Future<Either<FirebaseFailure, Cards>> addCollegeCard(
      String userCollege, File file);
  Future<Either<FirebaseFailure, Unit>> deleteCollegeCard(
      String userCollege, Cards cards);

  Future<Either<FirebaseFailure, String>> addCollegeImage(
      String userCollege, File file);
  Future<Either<FirebaseFailure, Unit>> deleteCollegeImage(
      String userCollege, String image);
}
