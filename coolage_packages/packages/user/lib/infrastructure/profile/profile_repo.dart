import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:user/domain/profile/i_profile_repo.dart';
import 'package:user/user.dart';

@LazySingleton(as: IProfileRepo)
class ProfileRepo extends IProfileRepo {
  final FirebaseFirestore _firestore;
  final Reference _storageReference;

  ProfileRepo(
    this._firestore,
    this._storageReference,
  );

  @override
  Future<Either<FirebaseFailure, Unit>> deleteAchievement(
      AchievementsModel model) async {
    try {
      const type = 'achievementsModel';
      await _firestore.usersCollection.doc(Getters.getCurrentUserUid()).update({
        'studentProfileModel.$type.${model.id}': FieldValue.delete(),
      });
      //everything worked well
      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> deleteCampusPor(
      CampusPorsModel model) async {
    try {
      const type = 'campusPorsModel';

      await _firestore.usersCollection.doc(Getters.getCurrentUserUid()).update({
        'studentProfileModel.$type.${model.id}': FieldValue.delete(),
      });
      final list = [model.organisation!];
      await _firestore.usersCollection.doc(Getters.getCurrentUserUid()).update({
        'groups': FieldValue.arrayRemove(list),
      });
      //everything worked well
      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> deleteEducationDetail(
      EducationDetailsModel model) async {
    try {
      const type = 'educationDetailsModel';
      await _firestore.usersCollection.doc(Getters.getCurrentUserUid()).update({
        'studentProfileModel.$type.${model.id}': FieldValue.delete(),
      });
      //everything worked well
      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> deleteProject(
      ProjectsModel model) async {
    try {
      const type = 'projectsModel';
      await _firestore.usersCollection.doc(Getters.getCurrentUserUid()).update({
        'studentProfileModel.$type.${model.id}': FieldValue.delete(),
      });
      //everything worked well
      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> changeSkillVisibility(
      {required SkillsModel model}) async {
    try {
      const type = 'skillsModel';
      final id = model.id!;
      await _firestore.usersCollection.doc(Getters.getCurrentUserUid()).update({
        'studentProfileModel.$type.$id': model.toMap(),
      });
      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> deleteSkill(SkillsModel model) async {
    try {
      const type = 'skillsModel';
      await _firestore.usersCollection.doc(Getters.getCurrentUserUid()).update({
        'studentProfileModel.$type.${model.id}': FieldValue.delete(),
      });
      //everything worked well
      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> deleteWorkExperience(
      WorkExperienceModel model) async {
    try {
      const type = 'workExperienceModel';
      await _firestore.usersCollection.doc(Getters.getCurrentUserUid()).update({
        'studentProfileModel.$type.${model.id}': FieldValue.delete(),
      });
      //everything worked well
      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, AchievementsModel>> addAchievements({
    AchievementsModel? model,
  }) async {
    try {
      String id = '';

      if (model!.id != null) {
        id = model.id!;
      } else {
        id = _firestore.usersCollection.doc().id;
        model.id = id;
      }

      const type = 'achievementsModel';
      await _firestore.usersCollection.doc(Getters.getCurrentUserUid()).update({
        'studentProfileModel.$type.$id': model.toMap(),
      });
      return right(model);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, CampusPorsModel>> addCampusPor({
    CampusPorsModel? model,
    List<String>? groupsList,
  }) async {
    try {
      bool isEdit = true;
      if (model!.id == null) {
        isEdit = false;
        model.id = _firestore.usersCollection.doc().id;
      }

      const type = 'campusPorsModel';
      await _firestore.usersCollection.doc(Getters.getCurrentUserUid()).update({
        'studentProfileModel.$type.${model.id}': model.toMap(),
      });
      await _firestore.usersCollection.doc(Getters.getCurrentUserUid()).update({
        'groups': groupsList,
      });

      return right(model);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, EducationDetailsModel>> addEducationDetails({
    EducationDetailsModel? model,
  }) async {
    try {
      String id = '';

      if (model!.id != null) {
        id = model.id!;
      } else {
        id = _firestore.usersCollection.doc().id;
        model.id = id;
      }

      const type = 'educationDetailsModel';
      await _firestore.usersCollection.doc(Getters.getCurrentUserUid()).update({
        'studentProfileModel.$type.$id': model.toMap(),
      });
      return right(model);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, ProjectsModel>> addProject({
    ProjectsModel? model,
  }) async {
    try {
      String id = '';

      if (model!.id != null) {
        id = model.id!;
      } else {
        id = _firestore.usersCollection.doc().id;
        model.id = id;
      }

      const type = 'projectsModel';
      await _firestore.usersCollection.doc(Getters.getCurrentUserUid()).update({
        'studentProfileModel.$type.$id': model.toMap(),
      });
      return right(model);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> addSkill({
    required Map<String, SkillsModel> skillsMap,
  }) async {
    try {
      final Map<String, dynamic> map = {};
      skillsMap.forEach((key, value) {
        map.putIfAbsent(key, () => value.toMap());
      });

      const type = 'skillsModel';
      await _firestore.usersCollection.doc(Getters.getCurrentUserUid()).update({
        'studentProfileModel.$type': map,
      });
      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, WorkExperienceModel>> addWorkExperience({
    WorkExperienceModel? model,
  }) async {
    try {
      String id = '';

      if (model!.id != null) {
        id = model.id!;
      } else {
        id = _firestore.usersCollection.doc().id;
        model.id = id;
      }

      const type = 'workExperienceModel';
      await _firestore.usersCollection.doc(Getters.getCurrentUserUid()).update({
        'studentProfileModel.$type.$id': model.toMap(),
      });
      return right(model);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> updateGeneralDetails(
      GeneralDetailsModel model) async {
    try {
      const type = 'generalDetailsModel';
      await _firestore.usersCollection.doc(Getters.getCurrentUserUid()).update({
        'studentProfileModel.$type': model.toMap(),
      });
      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, CoolUser>> updateProfileDetails(CoolUser model,
      {File? file, bool isSaving = false}) async {
    try {
      final uid = Getters.getCurrentUserUid();

      if (file != null) {
        final ref =
            _storageReference.child("User Images").child(uid).child('Profile');
        final uploadTask =
            await ImagePickerHelper.getUploadTaskToUploadImage(file, ref);
        if (uploadTask != null) {
          final TaskSnapshot storageSnap = await uploadTask.whenComplete(() {});
          model.imageUrl = await storageSnap.ref.getDownloadURL();
          debugPrint(model.imageUrl);
        }
      }

      final map = await model.toMap();
      if (isSaving) {
        await _firestore.usersCollection
            .doc(Getters.getCurrentUserUid())
            .set(map, SetOptions(merge: true));
      } else {
        await _firestore.usersCollection
            .doc(Getters.getCurrentUserUid())
            .update(map);
      }
      debugPrint('done');

      return right(model);
    } on FirebaseException catch (e) {
      debugPrint('error exception');
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      debugPrint('error here');
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> addLanguage(
      {required Map<String, LanguageModel> skillsMap}) async {
    try {
      final Map<String, dynamic> map = {};
      skillsMap.forEach((key, value) {
        map.putIfAbsent(key, () => value.toMap());
      });

      const type = 'languagesModel';
      await _firestore.usersCollection.doc(Getters.getCurrentUserUid()).update({
        'studentProfileModel.$type': map,
      });
      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> changeLanguageVisibility(
      {required LanguageModel model}) async {
    try {
      const type = 'languagesModel';
      final id = model.id!;
      await _firestore.usersCollection.doc(Getters.getCurrentUserUid()).update({
        'studentProfileModel.$type.$id': model.toMap(),
      });
      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> deleteLanguage(
      LanguageModel model) async {
    try {
      const type = 'languagesModel';
      await _firestore.usersCollection.doc(Getters.getCurrentUserUid()).update({
        'studentProfileModel.$type.${model.id}': FieldValue.delete(),
      });
      //everything worked well
      return right(unit);
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }
}
