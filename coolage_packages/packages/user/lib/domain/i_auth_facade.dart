import 'dart:io';

import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:user/user.dart';

abstract class IAuthFacade {
  Future<Option<Either<Unit, CoolUser>>> getSignedInUser();
  Future<void> signOut();
  Future<Either<FirebaseFailure, String>> updateUserImage(File file);
  Future<Either<FirebaseFailure, Unit>> updateUserDetails(
      {CoolUser? coolUser, File? file});
  Future<Either<FirebaseFailure, DeliveryAddressModel>> modifyDeliveryAddress({
    @required bool? isEdit,
    @required bool? isDelete,
    @required String? zone,
    @required DeliveryAddressModel? deliveryAddressModel,
  });
}
