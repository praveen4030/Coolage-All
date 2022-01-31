// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'firebase_failure.freezed.dart';

// @freezed
// abstract class FirebaseFailure with _$FirebaseFailure {
//   const factory FirebaseFailure.customError(String error) = _CustomError;
// }

class FirebaseFailure {
  final String? error;
  FirebaseFailure({
    this.error,
  });
  factory FirebaseFailure.customError(String error) {
    return FirebaseFailure(error: error);
  }
}
