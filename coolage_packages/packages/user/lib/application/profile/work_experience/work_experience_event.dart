part of 'work_experience_bloc.dart';

@freezed
class WorkExperienceEvent with _$WorkExperienceEvent {
  const factory WorkExperienceEvent.addWorkExperience({
    WorkExperienceModel? model,
    int? index,
    required Function onAdd,

  }) = _AddWorkExperience;

  const factory WorkExperienceEvent.delete({
    required WorkExperienceModel model,
    required int index,
    required Function onDelete,

  }) = _Delete;
}
