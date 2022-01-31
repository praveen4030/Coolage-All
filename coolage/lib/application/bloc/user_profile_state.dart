part of 'user_profile_bloc.dart';

@freezed
class UserProfileState with _$UserProfileState {
  // const factory UserProfileState({
  //   required StudentProfileModel studentProfileModel,
  // }) = _UserProfileState;
  const factory UserProfileState.initial() = _Initial;
}
