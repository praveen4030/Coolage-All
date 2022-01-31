part of 'campus_pors_bloc.dart';

@freezed
class CampusPorsEvent with _$CampusPorsEvent {
  const factory CampusPorsEvent.addCampusPor({
    CampusPorsModel? model,
    int? index,
    required Function onAdd,
  }) = _AddCampusPor;

  const factory CampusPorsEvent.delete({
    required CampusPorsModel model,
    required int index,
    required Function onDelete,
  }) = _Delete;
}
