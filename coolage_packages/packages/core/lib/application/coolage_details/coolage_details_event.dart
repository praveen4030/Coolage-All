part of 'coolage_details_bloc.dart';

@freezed
class CoolageDetailsEvent with _$CoolageDetailsEvent {
  const factory CoolageDetailsEvent.started() = _Started;
}