part of 'user_details_bloc.dart';

@freezed
class UserDetailsState with _$UserDetailsState {
  const factory UserDetailsState({
    required bool isLoading,
    required Option<Either<FirebaseFailure, String>> actionFailureOpt,
    required CoolUser coolUser,
    required bool isCurrentUser,
  }) = _UserDetailsState;
  factory UserDetailsState.initial() => UserDetailsState(
        isLoading: false,
        actionFailureOpt: none(),
        isCurrentUser: false,
        coolUser: CoolUser.empty(),
      );
}
