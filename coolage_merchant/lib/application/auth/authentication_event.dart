part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.authCheckRequested() = AuthCheckRequested;
  const factory AuthenticationEvent.signedOut() = SignedOut;
  const factory AuthenticationEvent.userModified(
      {CanteenBasicDetailsModel? canteenBasicDetailsModel}) = UserModified;
  const factory AuthenticationEvent.updateCanteenDetails(
      {@required CanteenBasicDetailsModel? canteenBasicDetailsModel,
      File? file}) = _UpdateCanteenDetails;
}
