part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({
    CoolUser? coolUser,
    CanteenBasicDetailsModel? canteenBasicDetailsModel,
    bool? isSignedIn,
    @required bool? isDetailsAvailable,
    @required bool? isUpdatingProfileLoading,
    @required bool? isCheckingAuthState,
    @required
        Option<Either<FirebaseFailure, Unit>>? updateProfileFailureOrSuccess,
  }) = _AuthenticationState;

  factory AuthenticationState.initial() => AuthenticationState(
        isDetailsAvailable: false,
        isUpdatingProfileLoading: false,
        updateProfileFailureOrSuccess: none(),
        isCheckingAuthState: false,
      );
}
