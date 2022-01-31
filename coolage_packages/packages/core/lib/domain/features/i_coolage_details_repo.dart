import 'package:core/core.dart';
import 'package:dartz/dartz.dart';

abstract class ICoolageDetailsRepo {
  Future<Either<FirebaseFailure, CoolageDetailsModel>> getCoolageDetails();
}
