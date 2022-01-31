import 'dart:io';

import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:user/user.dart';

abstract class IProfileRepo {
  Future<Either<FirebaseFailure, CoolUser>> updateProfileDetails(CoolUser model,
      {File? file, bool isSaving = false});
  Future<Either<FirebaseFailure, Unit>> updateGeneralDetails(
    GeneralDetailsModel model,
  );
  Future<Either<FirebaseFailure, AchievementsModel>> addAchievements({
    AchievementsModel? model,
  });
  Future<Either<FirebaseFailure, Unit>> deleteAchievement(
    AchievementsModel model,
  );

  Future<Either<FirebaseFailure, CampusPorsModel>> addCampusPor({
    CampusPorsModel? model,
  });
  Future<Either<FirebaseFailure, Unit>> deleteCampusPor(
    CampusPorsModel model,
  );

  Future<Either<FirebaseFailure, SkillsModel>> addSkill({
    SkillsModel? model,
  });
  Future<Either<FirebaseFailure, Unit>> deleteSkill(
    SkillsModel model,
  );

  Future<Either<FirebaseFailure, WorkExperienceModel>> addWorkExperience({
    WorkExperienceModel? model,
  });
  Future<Either<FirebaseFailure, Unit>> deleteWorkExperience(
    WorkExperienceModel model,
  );

  Future<Either<FirebaseFailure, ProjectsModel>> addProject({
    ProjectsModel? model,
  });
  Future<Either<FirebaseFailure, Unit>> deleteProject(
    ProjectsModel model,
  );

  Future<Either<FirebaseFailure, EducationDetailsModel>> addEducationDetails({
    EducationDetailsModel? model,
  });
  Future<Either<FirebaseFailure, Unit>> deleteEducationDetail(
    EducationDetailsModel model,
  );
}
