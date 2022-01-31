import 'dart:io';

import 'package:coolage_merchant/domain/base/canteen/canteen_basic_details_model.dart';
import 'package:coolage_merchant/domain/core/failure/firebase_failure.dart';
import 'package:coolage_merchant/domain/user/cool_user.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

abstract class IAuthFacade {
  Future<Option<Either<Unit, CoolUser>>> getSignedInUser();
  Future<void> signOut();
  Future<Either<FirebaseFailure, String>> updateUserImage(File file);
  Future<Either<FirebaseFailure, CanteenBasicDetailsModel>>
      updateCanteenDetails(
          {CanteenBasicDetailsModel? canteenModel, File? file});

  Future<Either<FirebaseFailure, Unit>> updateUserDetails(CoolUser coolUser);
}
