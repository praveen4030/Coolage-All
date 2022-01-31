part of 'skills_bloc.dart';

@freezed
class SkillsState with _$SkillsState {
  const factory SkillsState({
    required bool isLoading,
    required bool isDeleteLoading,
    required bool isVisibilityLoading,
    required Option<Either<FirebaseFailure, String>> actionFailureOpt,
  }) = _SkillsState;
  factory SkillsState.initial() => SkillsState(
        isLoading: false,
        isVisibilityLoading: false,
        isDeleteLoading: false,
        actionFailureOpt: none(),
      );
}
