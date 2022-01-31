import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/core.dart';
import 'package:core/domain/features/i_coolage_details_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICoolageDetailsRepo)
class CoolageDetailsRepo extends ICoolageDetailsRepo {
  CoolageDetailsRepo();

  @override
  Future<Either<FirebaseFailure, CoolageDetailsModel>>
      getCoolageDetails() async {
    try {
      final doc = await FirebaseFirestore.instance.coolageCollection
          .doc("CoolageDetails")
          .get();
      if (doc.exists) {
        final map = doc.data()! as Map<String, dynamic>;
        CoolageDetailsModel model = CoolageDetailsModel.fromMap(map);
        return right(model);
      }
      return left(FirebaseFailure.customError('Something went wrong!'));
    } on FirebaseException catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    } catch (e) {
      return left(FirebaseFailure.customError(e.toString()));
    }
  }
}
