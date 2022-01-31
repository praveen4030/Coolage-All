import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:store/domain/refurbished_model.dart';

abstract class IRefurbishedRepo {
  Future<Either<FirebaseFailure, List<RefurbishedModel>>> getRefurbishedItems(
      String college);
  Future<Either<FirebaseFailure, List<RefurbishedModel>>>
      getMoreRefurbishedItems(String college, RefurbishedModel model);
}
