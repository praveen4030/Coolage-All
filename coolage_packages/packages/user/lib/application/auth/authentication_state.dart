part of 'authentication_bloc.dart';

@freezed
abstract class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({
    CoolUser? coolUser,
    required bool? isUpdatingProfileLoading,
    required Option<Either<FirebaseFailure, bool>> userDetailOptResult,
    required Option<Either<FirebaseFailure, Unit>>
        updateProfileFailureOrSuccess,
  }) = _AuthenticationState;

  factory AuthenticationState.initial() => AuthenticationState(
        isUpdatingProfileLoading: false,
        updateProfileFailureOrSuccess: none(),
        userDetailOptResult : none(),
      );
}
