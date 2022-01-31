part of 'education_details_bloc.dart';

@freezed
class EducationDetailsEvent with _$EducationDetailsEvent {
  const factory EducationDetailsEvent.addEducationDetails({
    EducationDetailsModel? model,
    int? index,
    required Function onAdd,
  }) = _AddEducationDetails;

  const factory EducationDetailsEvent.delete({
    required EducationDetailsModel model,
    required int index,
    required Function onDelete,
  }) = _Delete;
}
