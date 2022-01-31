part of 'general_details_bloc.dart';

@freezed
class GeneralDetailsEvent with _$GeneralDetailsEvent {
  const factory GeneralDetailsEvent.updateGeneralDetails({
    required GeneralDetailsModel model,
    required Function onUpdate,
  }) = _UpdateGeneralDetails;
}
