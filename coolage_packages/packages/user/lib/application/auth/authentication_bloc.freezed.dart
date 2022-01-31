// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthenticationEventTearOff {
  const _$AuthenticationEventTearOff();

  AuthCheckRequested authCheckRequested() {
    return const AuthCheckRequested();
  }

  SignedOut signedOut() {
    return const SignedOut();
  }

  UserModified userModified({CoolUser? user}) {
    return UserModified(
      user: user,
    );
  }

  _UpdateUserImage updateUserImage(File file) {
    return _UpdateUserImage(
      file,
    );
  }

  _UpdateUserDetails updateUserDetails({CoolUser? coolUser, File? file}) {
    return _UpdateUserDetails(
      coolUser: coolUser,
      file: file,
    );
  }

  _AddAddress modifyAddress(
      {bool? isEdit,
      bool? isDelete,
      String? zone,
      DeliveryAddressModel? addressModel}) {
    return _AddAddress(
      isEdit: isEdit,
      isDelete: isDelete,
      zone: zone,
      addressModel: addressModel,
    );
  }
}

/// @nodoc
const $AuthenticationEvent = _$AuthenticationEventTearOff();

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() signedOut,
    required TResult Function(CoolUser? user) userModified,
    required TResult Function(File file) updateUserImage,
    required TResult Function(CoolUser? coolUser, File? file) updateUserDetails,
    required TResult Function(bool? isEdit, bool? isDelete, String? zone,
            DeliveryAddressModel? addressModel)
        modifyAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signedOut,
    TResult Function(CoolUser? user)? userModified,
    TResult Function(File file)? updateUserImage,
    TResult Function(CoolUser? coolUser, File? file)? updateUserDetails,
    TResult Function(bool? isEdit, bool? isDelete, String? zone,
            DeliveryAddressModel? addressModel)?
        modifyAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(UserModified value) userModified,
    required TResult Function(_UpdateUserImage value) updateUserImage,
    required TResult Function(_UpdateUserDetails value) updateUserDetails,
    required TResult Function(_AddAddress value) modifyAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(UserModified value)? userModified,
    TResult Function(_UpdateUserImage value)? updateUserImage,
    TResult Function(_UpdateUserDetails value)? updateUserDetails,
    TResult Function(_AddAddress value)? modifyAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;
}

/// @nodoc
abstract class $AuthCheckRequestedCopyWith<$Res> {
  factory $AuthCheckRequestedCopyWith(
          AuthCheckRequested value, $Res Function(AuthCheckRequested) then) =
      _$AuthCheckRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthCheckRequestedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthCheckRequestedCopyWith<$Res> {
  _$AuthCheckRequestedCopyWithImpl(
      AuthCheckRequested _value, $Res Function(AuthCheckRequested) _then)
      : super(_value, (v) => _then(v as AuthCheckRequested));

  @override
  AuthCheckRequested get _value => super._value as AuthCheckRequested;
}

/// @nodoc

class _$AuthCheckRequested implements AuthCheckRequested {
  const _$AuthCheckRequested();

  @override
  String toString() {
    return 'AuthenticationEvent.authCheckRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthCheckRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() signedOut,
    required TResult Function(CoolUser? user) userModified,
    required TResult Function(File file) updateUserImage,
    required TResult Function(CoolUser? coolUser, File? file) updateUserDetails,
    required TResult Function(bool? isEdit, bool? isDelete, String? zone,
            DeliveryAddressModel? addressModel)
        modifyAddress,
  }) {
    return authCheckRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signedOut,
    TResult Function(CoolUser? user)? userModified,
    TResult Function(File file)? updateUserImage,
    TResult Function(CoolUser? coolUser, File? file)? updateUserDetails,
    TResult Function(bool? isEdit, bool? isDelete, String? zone,
            DeliveryAddressModel? addressModel)?
        modifyAddress,
    required TResult orElse(),
  }) {
    if (authCheckRequested != null) {
      return authCheckRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(UserModified value) userModified,
    required TResult Function(_UpdateUserImage value) updateUserImage,
    required TResult Function(_UpdateUserDetails value) updateUserDetails,
    required TResult Function(_AddAddress value) modifyAddress,
  }) {
    return authCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(UserModified value)? userModified,
    TResult Function(_UpdateUserImage value)? updateUserImage,
    TResult Function(_UpdateUserDetails value)? updateUserDetails,
    TResult Function(_AddAddress value)? modifyAddress,
    required TResult orElse(),
  }) {
    if (authCheckRequested != null) {
      return authCheckRequested(this);
    }
    return orElse();
  }
}

abstract class AuthCheckRequested implements AuthenticationEvent {
  const factory AuthCheckRequested() = _$AuthCheckRequested;
}

/// @nodoc
abstract class $SignedOutCopyWith<$Res> {
  factory $SignedOutCopyWith(SignedOut value, $Res Function(SignedOut) then) =
      _$SignedOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignedOutCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $SignedOutCopyWith<$Res> {
  _$SignedOutCopyWithImpl(SignedOut _value, $Res Function(SignedOut) _then)
      : super(_value, (v) => _then(v as SignedOut));

  @override
  SignedOut get _value => super._value as SignedOut;
}

/// @nodoc

class _$SignedOut implements SignedOut {
  const _$SignedOut();

  @override
  String toString() {
    return 'AuthenticationEvent.signedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() signedOut,
    required TResult Function(CoolUser? user) userModified,
    required TResult Function(File file) updateUserImage,
    required TResult Function(CoolUser? coolUser, File? file) updateUserDetails,
    required TResult Function(bool? isEdit, bool? isDelete, String? zone,
            DeliveryAddressModel? addressModel)
        modifyAddress,
  }) {
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signedOut,
    TResult Function(CoolUser? user)? userModified,
    TResult Function(File file)? updateUserImage,
    TResult Function(CoolUser? coolUser, File? file)? updateUserDetails,
    TResult Function(bool? isEdit, bool? isDelete, String? zone,
            DeliveryAddressModel? addressModel)?
        modifyAddress,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(UserModified value) userModified,
    required TResult Function(_UpdateUserImage value) updateUserImage,
    required TResult Function(_UpdateUserDetails value) updateUserDetails,
    required TResult Function(_AddAddress value) modifyAddress,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(UserModified value)? userModified,
    TResult Function(_UpdateUserImage value)? updateUserImage,
    TResult Function(_UpdateUserDetails value)? updateUserDetails,
    TResult Function(_AddAddress value)? modifyAddress,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class SignedOut implements AuthenticationEvent {
  const factory SignedOut() = _$SignedOut;
}

/// @nodoc
abstract class $UserModifiedCopyWith<$Res> {
  factory $UserModifiedCopyWith(
          UserModified value, $Res Function(UserModified) then) =
      _$UserModifiedCopyWithImpl<$Res>;
  $Res call({CoolUser? user});
}

/// @nodoc
class _$UserModifiedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $UserModifiedCopyWith<$Res> {
  _$UserModifiedCopyWithImpl(
      UserModified _value, $Res Function(UserModified) _then)
      : super(_value, (v) => _then(v as UserModified));

  @override
  UserModified get _value => super._value as UserModified;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(UserModified(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as CoolUser?,
    ));
  }
}

/// @nodoc

class _$UserModified implements UserModified {
  const _$UserModified({this.user});

  @override
  final CoolUser? user;

  @override
  String toString() {
    return 'AuthenticationEvent.userModified(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserModified &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $UserModifiedCopyWith<UserModified> get copyWith =>
      _$UserModifiedCopyWithImpl<UserModified>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() signedOut,
    required TResult Function(CoolUser? user) userModified,
    required TResult Function(File file) updateUserImage,
    required TResult Function(CoolUser? coolUser, File? file) updateUserDetails,
    required TResult Function(bool? isEdit, bool? isDelete, String? zone,
            DeliveryAddressModel? addressModel)
        modifyAddress,
  }) {
    return userModified(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signedOut,
    TResult Function(CoolUser? user)? userModified,
    TResult Function(File file)? updateUserImage,
    TResult Function(CoolUser? coolUser, File? file)? updateUserDetails,
    TResult Function(bool? isEdit, bool? isDelete, String? zone,
            DeliveryAddressModel? addressModel)?
        modifyAddress,
    required TResult orElse(),
  }) {
    if (userModified != null) {
      return userModified(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(UserModified value) userModified,
    required TResult Function(_UpdateUserImage value) updateUserImage,
    required TResult Function(_UpdateUserDetails value) updateUserDetails,
    required TResult Function(_AddAddress value) modifyAddress,
  }) {
    return userModified(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(UserModified value)? userModified,
    TResult Function(_UpdateUserImage value)? updateUserImage,
    TResult Function(_UpdateUserDetails value)? updateUserDetails,
    TResult Function(_AddAddress value)? modifyAddress,
    required TResult orElse(),
  }) {
    if (userModified != null) {
      return userModified(this);
    }
    return orElse();
  }
}

abstract class UserModified implements AuthenticationEvent {
  const factory UserModified({CoolUser? user}) = _$UserModified;

  CoolUser? get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModifiedCopyWith<UserModified> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateUserImageCopyWith<$Res> {
  factory _$UpdateUserImageCopyWith(
          _UpdateUserImage value, $Res Function(_UpdateUserImage) then) =
      __$UpdateUserImageCopyWithImpl<$Res>;
  $Res call({File file});
}

/// @nodoc
class __$UpdateUserImageCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$UpdateUserImageCopyWith<$Res> {
  __$UpdateUserImageCopyWithImpl(
      _UpdateUserImage _value, $Res Function(_UpdateUserImage) _then)
      : super(_value, (v) => _then(v as _UpdateUserImage));

  @override
  _UpdateUserImage get _value => super._value as _UpdateUserImage;

  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(_UpdateUserImage(
      file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$_UpdateUserImage implements _UpdateUserImage {
  const _$_UpdateUserImage(this.file);

  @override
  final File file;

  @override
  String toString() {
    return 'AuthenticationEvent.updateUserImage(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateUserImage &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(file);

  @JsonKey(ignore: true)
  @override
  _$UpdateUserImageCopyWith<_UpdateUserImage> get copyWith =>
      __$UpdateUserImageCopyWithImpl<_UpdateUserImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() signedOut,
    required TResult Function(CoolUser? user) userModified,
    required TResult Function(File file) updateUserImage,
    required TResult Function(CoolUser? coolUser, File? file) updateUserDetails,
    required TResult Function(bool? isEdit, bool? isDelete, String? zone,
            DeliveryAddressModel? addressModel)
        modifyAddress,
  }) {
    return updateUserImage(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signedOut,
    TResult Function(CoolUser? user)? userModified,
    TResult Function(File file)? updateUserImage,
    TResult Function(CoolUser? coolUser, File? file)? updateUserDetails,
    TResult Function(bool? isEdit, bool? isDelete, String? zone,
            DeliveryAddressModel? addressModel)?
        modifyAddress,
    required TResult orElse(),
  }) {
    if (updateUserImage != null) {
      return updateUserImage(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(UserModified value) userModified,
    required TResult Function(_UpdateUserImage value) updateUserImage,
    required TResult Function(_UpdateUserDetails value) updateUserDetails,
    required TResult Function(_AddAddress value) modifyAddress,
  }) {
    return updateUserImage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(UserModified value)? userModified,
    TResult Function(_UpdateUserImage value)? updateUserImage,
    TResult Function(_UpdateUserDetails value)? updateUserDetails,
    TResult Function(_AddAddress value)? modifyAddress,
    required TResult orElse(),
  }) {
    if (updateUserImage != null) {
      return updateUserImage(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserImage implements AuthenticationEvent {
  const factory _UpdateUserImage(File file) = _$_UpdateUserImage;

  File get file => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateUserImageCopyWith<_UpdateUserImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateUserDetailsCopyWith<$Res> {
  factory _$UpdateUserDetailsCopyWith(
          _UpdateUserDetails value, $Res Function(_UpdateUserDetails) then) =
      __$UpdateUserDetailsCopyWithImpl<$Res>;
  $Res call({CoolUser? coolUser, File? file});
}

/// @nodoc
class __$UpdateUserDetailsCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$UpdateUserDetailsCopyWith<$Res> {
  __$UpdateUserDetailsCopyWithImpl(
      _UpdateUserDetails _value, $Res Function(_UpdateUserDetails) _then)
      : super(_value, (v) => _then(v as _UpdateUserDetails));

  @override
  _UpdateUserDetails get _value => super._value as _UpdateUserDetails;

  @override
  $Res call({
    Object? coolUser = freezed,
    Object? file = freezed,
  }) {
    return _then(_UpdateUserDetails(
      coolUser: coolUser == freezed
          ? _value.coolUser
          : coolUser // ignore: cast_nullable_to_non_nullable
              as CoolUser?,
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$_UpdateUserDetails implements _UpdateUserDetails {
  const _$_UpdateUserDetails({this.coolUser, this.file});

  @override
  final CoolUser? coolUser;
  @override
  final File? file;

  @override
  String toString() {
    return 'AuthenticationEvent.updateUserDetails(coolUser: $coolUser, file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateUserDetails &&
            (identical(other.coolUser, coolUser) ||
                const DeepCollectionEquality()
                    .equals(other.coolUser, coolUser)) &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(coolUser) ^
      const DeepCollectionEquality().hash(file);

  @JsonKey(ignore: true)
  @override
  _$UpdateUserDetailsCopyWith<_UpdateUserDetails> get copyWith =>
      __$UpdateUserDetailsCopyWithImpl<_UpdateUserDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() signedOut,
    required TResult Function(CoolUser? user) userModified,
    required TResult Function(File file) updateUserImage,
    required TResult Function(CoolUser? coolUser, File? file) updateUserDetails,
    required TResult Function(bool? isEdit, bool? isDelete, String? zone,
            DeliveryAddressModel? addressModel)
        modifyAddress,
  }) {
    return updateUserDetails(coolUser, file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signedOut,
    TResult Function(CoolUser? user)? userModified,
    TResult Function(File file)? updateUserImage,
    TResult Function(CoolUser? coolUser, File? file)? updateUserDetails,
    TResult Function(bool? isEdit, bool? isDelete, String? zone,
            DeliveryAddressModel? addressModel)?
        modifyAddress,
    required TResult orElse(),
  }) {
    if (updateUserDetails != null) {
      return updateUserDetails(coolUser, file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(UserModified value) userModified,
    required TResult Function(_UpdateUserImage value) updateUserImage,
    required TResult Function(_UpdateUserDetails value) updateUserDetails,
    required TResult Function(_AddAddress value) modifyAddress,
  }) {
    return updateUserDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(UserModified value)? userModified,
    TResult Function(_UpdateUserImage value)? updateUserImage,
    TResult Function(_UpdateUserDetails value)? updateUserDetails,
    TResult Function(_AddAddress value)? modifyAddress,
    required TResult orElse(),
  }) {
    if (updateUserDetails != null) {
      return updateUserDetails(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserDetails implements AuthenticationEvent {
  const factory _UpdateUserDetails({CoolUser? coolUser, File? file}) =
      _$_UpdateUserDetails;

  CoolUser? get coolUser => throw _privateConstructorUsedError;
  File? get file => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateUserDetailsCopyWith<_UpdateUserDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddAddressCopyWith<$Res> {
  factory _$AddAddressCopyWith(
          _AddAddress value, $Res Function(_AddAddress) then) =
      __$AddAddressCopyWithImpl<$Res>;
  $Res call(
      {bool? isEdit,
      bool? isDelete,
      String? zone,
      DeliveryAddressModel? addressModel});
}

/// @nodoc
class __$AddAddressCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$AddAddressCopyWith<$Res> {
  __$AddAddressCopyWithImpl(
      _AddAddress _value, $Res Function(_AddAddress) _then)
      : super(_value, (v) => _then(v as _AddAddress));

  @override
  _AddAddress get _value => super._value as _AddAddress;

  @override
  $Res call({
    Object? isEdit = freezed,
    Object? isDelete = freezed,
    Object? zone = freezed,
    Object? addressModel = freezed,
  }) {
    return _then(_AddAddress(
      isEdit: isEdit == freezed
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDelete: isDelete == freezed
          ? _value.isDelete
          : isDelete // ignore: cast_nullable_to_non_nullable
              as bool?,
      zone: zone == freezed
          ? _value.zone
          : zone // ignore: cast_nullable_to_non_nullable
              as String?,
      addressModel: addressModel == freezed
          ? _value.addressModel
          : addressModel // ignore: cast_nullable_to_non_nullable
              as DeliveryAddressModel?,
    ));
  }
}

/// @nodoc

class _$_AddAddress implements _AddAddress {
  const _$_AddAddress(
      {this.isEdit, this.isDelete, this.zone, this.addressModel});

  @override
  final bool? isEdit;
  @override
  final bool? isDelete;
  @override
  final String? zone;
  @override
  final DeliveryAddressModel? addressModel;

  @override
  String toString() {
    return 'AuthenticationEvent.modifyAddress(isEdit: $isEdit, isDelete: $isDelete, zone: $zone, addressModel: $addressModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddAddress &&
            (identical(other.isEdit, isEdit) ||
                const DeepCollectionEquality().equals(other.isEdit, isEdit)) &&
            (identical(other.isDelete, isDelete) ||
                const DeepCollectionEquality()
                    .equals(other.isDelete, isDelete)) &&
            (identical(other.zone, zone) ||
                const DeepCollectionEquality().equals(other.zone, zone)) &&
            (identical(other.addressModel, addressModel) ||
                const DeepCollectionEquality()
                    .equals(other.addressModel, addressModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isEdit) ^
      const DeepCollectionEquality().hash(isDelete) ^
      const DeepCollectionEquality().hash(zone) ^
      const DeepCollectionEquality().hash(addressModel);

  @JsonKey(ignore: true)
  @override
  _$AddAddressCopyWith<_AddAddress> get copyWith =>
      __$AddAddressCopyWithImpl<_AddAddress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() signedOut,
    required TResult Function(CoolUser? user) userModified,
    required TResult Function(File file) updateUserImage,
    required TResult Function(CoolUser? coolUser, File? file) updateUserDetails,
    required TResult Function(bool? isEdit, bool? isDelete, String? zone,
            DeliveryAddressModel? addressModel)
        modifyAddress,
  }) {
    return modifyAddress(isEdit, isDelete, zone, addressModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signedOut,
    TResult Function(CoolUser? user)? userModified,
    TResult Function(File file)? updateUserImage,
    TResult Function(CoolUser? coolUser, File? file)? updateUserDetails,
    TResult Function(bool? isEdit, bool? isDelete, String? zone,
            DeliveryAddressModel? addressModel)?
        modifyAddress,
    required TResult orElse(),
  }) {
    if (modifyAddress != null) {
      return modifyAddress(isEdit, isDelete, zone, addressModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(UserModified value) userModified,
    required TResult Function(_UpdateUserImage value) updateUserImage,
    required TResult Function(_UpdateUserDetails value) updateUserDetails,
    required TResult Function(_AddAddress value) modifyAddress,
  }) {
    return modifyAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(UserModified value)? userModified,
    TResult Function(_UpdateUserImage value)? updateUserImage,
    TResult Function(_UpdateUserDetails value)? updateUserDetails,
    TResult Function(_AddAddress value)? modifyAddress,
    required TResult orElse(),
  }) {
    if (modifyAddress != null) {
      return modifyAddress(this);
    }
    return orElse();
  }
}

abstract class _AddAddress implements AuthenticationEvent {
  const factory _AddAddress(
      {bool? isEdit,
      bool? isDelete,
      String? zone,
      DeliveryAddressModel? addressModel}) = _$_AddAddress;

  bool? get isEdit => throw _privateConstructorUsedError;
  bool? get isDelete => throw _privateConstructorUsedError;
  String? get zone => throw _privateConstructorUsedError;
  DeliveryAddressModel? get addressModel => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddAddressCopyWith<_AddAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AuthenticationStateTearOff {
  const _$AuthenticationStateTearOff();

  _AuthenticationState call(
      {CoolUser? coolUser,
      required bool? isUpdatingProfileLoading,
      required Option<Either<FirebaseFailure, bool>> userDetailOptResult,
      required Option<Either<FirebaseFailure, Unit>>
          updateProfileFailureOrSuccess}) {
    return _AuthenticationState(
      coolUser: coolUser,
      isUpdatingProfileLoading: isUpdatingProfileLoading,
      userDetailOptResult: userDetailOptResult,
      updateProfileFailureOrSuccess: updateProfileFailureOrSuccess,
    );
  }
}

/// @nodoc
const $AuthenticationState = _$AuthenticationStateTearOff();

/// @nodoc
mixin _$AuthenticationState {
  CoolUser? get coolUser => throw _privateConstructorUsedError;
  bool? get isUpdatingProfileLoading => throw _privateConstructorUsedError;
  Option<Either<FirebaseFailure, bool>> get userDetailOptResult =>
      throw _privateConstructorUsedError;
  Option<Either<FirebaseFailure, Unit>> get updateProfileFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationStateCopyWith<AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
  $Res call(
      {CoolUser? coolUser,
      bool? isUpdatingProfileLoading,
      Option<Either<FirebaseFailure, bool>> userDetailOptResult,
      Option<Either<FirebaseFailure, Unit>> updateProfileFailureOrSuccess});
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;

  @override
  $Res call({
    Object? coolUser = freezed,
    Object? isUpdatingProfileLoading = freezed,
    Object? userDetailOptResult = freezed,
    Object? updateProfileFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      coolUser: coolUser == freezed
          ? _value.coolUser
          : coolUser // ignore: cast_nullable_to_non_nullable
              as CoolUser?,
      isUpdatingProfileLoading: isUpdatingProfileLoading == freezed
          ? _value.isUpdatingProfileLoading
          : isUpdatingProfileLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      userDetailOptResult: userDetailOptResult == freezed
          ? _value.userDetailOptResult
          : userDetailOptResult // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, bool>>,
      updateProfileFailureOrSuccess: updateProfileFailureOrSuccess == freezed
          ? _value.updateProfileFailureOrSuccess
          : updateProfileFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$AuthenticationStateCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$AuthenticationStateCopyWith(_AuthenticationState value,
          $Res Function(_AuthenticationState) then) =
      __$AuthenticationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {CoolUser? coolUser,
      bool? isUpdatingProfileLoading,
      Option<Either<FirebaseFailure, bool>> userDetailOptResult,
      Option<Either<FirebaseFailure, Unit>> updateProfileFailureOrSuccess});
}

/// @nodoc
class __$AuthenticationStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$AuthenticationStateCopyWith<$Res> {
  __$AuthenticationStateCopyWithImpl(
      _AuthenticationState _value, $Res Function(_AuthenticationState) _then)
      : super(_value, (v) => _then(v as _AuthenticationState));

  @override
  _AuthenticationState get _value => super._value as _AuthenticationState;

  @override
  $Res call({
    Object? coolUser = freezed,
    Object? isUpdatingProfileLoading = freezed,
    Object? userDetailOptResult = freezed,
    Object? updateProfileFailureOrSuccess = freezed,
  }) {
    return _then(_AuthenticationState(
      coolUser: coolUser == freezed
          ? _value.coolUser
          : coolUser // ignore: cast_nullable_to_non_nullable
              as CoolUser?,
      isUpdatingProfileLoading: isUpdatingProfileLoading == freezed
          ? _value.isUpdatingProfileLoading
          : isUpdatingProfileLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      userDetailOptResult: userDetailOptResult == freezed
          ? _value.userDetailOptResult
          : userDetailOptResult // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, bool>>,
      updateProfileFailureOrSuccess: updateProfileFailureOrSuccess == freezed
          ? _value.updateProfileFailureOrSuccess
          : updateProfileFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_AuthenticationState implements _AuthenticationState {
  const _$_AuthenticationState(
      {this.coolUser,
      required this.isUpdatingProfileLoading,
      required this.userDetailOptResult,
      required this.updateProfileFailureOrSuccess});

  @override
  final CoolUser? coolUser;
  @override
  final bool? isUpdatingProfileLoading;
  @override
  final Option<Either<FirebaseFailure, bool>> userDetailOptResult;
  @override
  final Option<Either<FirebaseFailure, Unit>> updateProfileFailureOrSuccess;

  @override
  String toString() {
    return 'AuthenticationState(coolUser: $coolUser, isUpdatingProfileLoading: $isUpdatingProfileLoading, userDetailOptResult: $userDetailOptResult, updateProfileFailureOrSuccess: $updateProfileFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthenticationState &&
            (identical(other.coolUser, coolUser) ||
                const DeepCollectionEquality()
                    .equals(other.coolUser, coolUser)) &&
            (identical(
                    other.isUpdatingProfileLoading, isUpdatingProfileLoading) ||
                const DeepCollectionEquality().equals(
                    other.isUpdatingProfileLoading,
                    isUpdatingProfileLoading)) &&
            (identical(other.userDetailOptResult, userDetailOptResult) ||
                const DeepCollectionEquality()
                    .equals(other.userDetailOptResult, userDetailOptResult)) &&
            (identical(other.updateProfileFailureOrSuccess,
                    updateProfileFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.updateProfileFailureOrSuccess,
                    updateProfileFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(coolUser) ^
      const DeepCollectionEquality().hash(isUpdatingProfileLoading) ^
      const DeepCollectionEquality().hash(userDetailOptResult) ^
      const DeepCollectionEquality().hash(updateProfileFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  _$AuthenticationStateCopyWith<_AuthenticationState> get copyWith =>
      __$AuthenticationStateCopyWithImpl<_AuthenticationState>(
          this, _$identity);
}

abstract class _AuthenticationState implements AuthenticationState {
  const factory _AuthenticationState(
      {CoolUser? coolUser,
      required bool? isUpdatingProfileLoading,
      required Option<Either<FirebaseFailure, bool>> userDetailOptResult,
      required Option<Either<FirebaseFailure, Unit>>
          updateProfileFailureOrSuccess}) = _$_AuthenticationState;

  @override
  CoolUser? get coolUser => throw _privateConstructorUsedError;
  @override
  bool? get isUpdatingProfileLoading => throw _privateConstructorUsedError;
  @override
  Option<Either<FirebaseFailure, bool>> get userDetailOptResult =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<FirebaseFailure, Unit>> get updateProfileFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AuthenticationStateCopyWith<_AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}
