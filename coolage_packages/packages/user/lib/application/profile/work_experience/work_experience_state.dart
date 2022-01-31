part of 'work_experience_bloc.dart';

@freezed
class WorkExperienceState with _$WorkExperienceState {
  const factory WorkExperienceState({
    required bool isLoading,
    required bool isDeleteLoading,
    required bool isVisibilityLoading,
    required Option<Either<FirebaseFailure, String>> actionFailureOpt,
  }) = _WorkExperienceState;
  factory WorkExperienceState.initial() => WorkExperienceState(
        isLoading: false,
        isVisibilityLoading: false,
        isDeleteLoading: false,
        actionFailureOpt: none(),
      );
}
