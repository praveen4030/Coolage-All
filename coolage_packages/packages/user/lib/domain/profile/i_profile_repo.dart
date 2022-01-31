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
    //if editing document and changed group then delete from users group joined
    List<String>? groupsList,
  });
  Future<Either<FirebaseFailure, Unit>> deleteCampusPor(
    CampusPorsModel model,
  );

  Future<Either<FirebaseFailure, Unit>> addSkill({
    required Map<String, SkillsModel> skillsMap,
  });

  Future<Either<FirebaseFailure, Unit>> changeSkillVisibility({
    required SkillsModel model,
  });
  Future<Either<FirebaseFailure, Unit>> deleteSkill(
    SkillsModel model,
  );

  Future<Either<FirebaseFailure, Unit>> addLanguage({
    required Map<String, LanguageModel> skillsMap,
  });

  Future<Either<FirebaseFailure, Unit>> changeLanguageVisibility({
    required LanguageModel model,
  });
  Future<Either<FirebaseFailure, Unit>> deleteLanguage(
    LanguageModel model,
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
