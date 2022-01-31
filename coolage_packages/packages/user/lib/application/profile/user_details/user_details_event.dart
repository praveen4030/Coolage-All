part of 'user_details_bloc.dart';

@freezed
class UserDetailsEvent with _$UserDetailsEvent {
  const factory UserDetailsEvent.updateUserDetails({
    required CoolUser model,
    required Function onUpdate,
    File? file,
  }) = _UpdateUserDetails;
  const factory UserDetailsEvent.setCurrentUserDetails({
    required CoolUser model,
    required bool isCurrentUser,
  }) = _SetCurrentUserDetails;
}
