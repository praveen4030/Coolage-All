part of core;

class FirebaseFailure {
  final String? error;
  FirebaseFailure({
    this.error,
  });
  factory FirebaseFailure.customError(String error) {
    return FirebaseFailure(error: error);
  }
}
