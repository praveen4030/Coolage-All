part of 'achievements_bloc.dart';

@freezed
class AchievementsState with _$AchievementsState {
  const factory AchievementsState({
    required bool isLoading,
    required bool isDeleteLoading,
    required bool isVisibilityLoading,
    required Option<Either<FirebaseFailure, String>> actionFailureOpt,
  }) = _AchievementsState;
  factory AchievementsState.initial() => AchievementsState(
        isLoading: false,
        isVisibilityLoading: false,
        isDeleteLoading: false,
        actionFailureOpt: none(),
      );
}
