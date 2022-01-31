part of 'projects_bloc.dart';

@freezed
class ProjectsEvent with _$ProjectsEvent {
  const factory ProjectsEvent.addProject({
    ProjectsModel? model,
    int? index,
    required Function onAdd,
  }) = _AddAchievement;

  const factory ProjectsEvent.delete({
    required ProjectsModel model,
    required int index,
    required Function onDelete,
  }) = _Delete;
}
