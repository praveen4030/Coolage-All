part of 'skills_bloc.dart';

@freezed
class SkillsEvent with _$SkillsEvent {
  const factory SkillsEvent.addSkill({
    required Map<String, SkillsModel> skillsMap,
    required Function onAdd,
  }) = _AddSkill;

  const factory SkillsEvent.changeSkillVisibility({
    required SkillsModel skillModel,
    required Function onChange,
  }) = _ChangeSkillVisibility;

  const factory SkillsEvent.delete({
    required SkillsModel model,
    required Function onDelete,
  }) = _Delete;
}
