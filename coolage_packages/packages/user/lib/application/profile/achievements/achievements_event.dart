part of 'achievements_bloc.dart';

@freezed
class AchievementsEvent with _$AchievementsEvent {
  const factory AchievementsEvent.addAchievement({
    AchievementsModel? model,
    int? index,
    required Function onAdd,
  }) = _AddAchievement;

  const factory AchievementsEvent.delete({
    required AchievementsModel model,
    required int index,
    required Function onDelete,
  }) = _Delete;
}
