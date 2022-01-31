part of 'authentication_bloc.dart';

@freezed
abstract class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.authCheckRequested() = AuthCheckRequested;
  const factory AuthenticationEvent.signedOut() = SignedOut;
  const factory AuthenticationEvent.userModified({CoolUser? user}) =
      UserModified;
  const factory AuthenticationEvent.updateUserImage(File file) =
      _UpdateUserImage;
  const factory AuthenticationEvent.updateUserDetails(
      {@required CoolUser? coolUser, File? file}) = _UpdateUserDetails;
  const factory AuthenticationEvent.modifyAddress({
    @required bool? isEdit,
    @required bool? isDelete,
    @required String? zone,
    @required DeliveryAddressModel? addressModel,
  }) = _AddAddress;
}
