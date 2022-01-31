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

  UserModified userModified(
      {CanteenBasicDetailsModel? canteenBasicDetailsModel}) {
    return UserModified(
      canteenBasicDetailsModel: canteenBasicDetailsModel,
    );
  }

  _UpdateCanteenDetails updateCanteenDetails(
      {CanteenBasicDetailsModel? canteenBasicDetailsModel, File? file}) {
    return _UpdateCanteenDetails(
      canteenBasicDetailsModel: canteenBasicDetailsModel,
      file: file,
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
    required TResult Function(
            CanteenBasicDetailsModel? canteenBasicDetailsModel)
        userModified,
    required TResult Function(
            CanteenBasicDetailsModel? canteenBasicDetailsModel, File? file)
        updateCanteenDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signedOut,
    TResult Function(CanteenBasicDetailsModel? canteenBasicDetailsModel)?
        userModified,
    TResult Function(
            CanteenBasicDetailsModel? canteenBasicDetailsModel, File? file)?
        updateCanteenDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(UserModified value) userModified,
    required TResult Function(_UpdateCanteenDetails value) updateCanteenDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(UserModified value)? userModified,
    TResult Function(_UpdateCanteenDetails value)? updateCanteenDetails,
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
    required TResult Function(
            CanteenBasicDetailsModel? canteenBasicDetailsModel)
        userModified,
    required TResult Function(
            CanteenBasicDetailsModel? canteenBasicDetailsModel, File? file)
        updateCanteenDetails,
  }) {
    return authCheckRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signedOut,
    TResult Function(CanteenBasicDetailsModel? canteenBasicDetailsModel)?
        userModified,
    TResult Function(
            CanteenBasicDetailsModel? canteenBasicDetailsModel, File? file)?
        updateCanteenDetails,
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
    required TResult Function(_UpdateCanteenDetails value) updateCanteenDetails,
  }) {
    return authCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(UserModified value)? userModified,
    TResult Function(_UpdateCanteenDetails value)? updateCanteenDetails,
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
    required TResult Function(
            CanteenBasicDetailsModel? canteenBasicDetailsModel)
        userModified,
    required TResult Function(
            CanteenBasicDetailsModel? canteenBasicDetailsModel, File? file)
        updateCanteenDetails,
  }) {
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signedOut,
    TResult Function(CanteenBasicDetailsModel? canteenBasicDetailsModel)?
        userModified,
    TResult Function(
            CanteenBasicDetailsModel? canteenBasicDetailsModel, File? file)?
        updateCanteenDetails,
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
    required TResult Function(_UpdateCanteenDetails value) updateCanteenDetails,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(UserModified value)? userModified,
    TResult Function(_UpdateCanteenDetails value)? updateCanteenDetails,
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
  $Res call({CanteenBasicDetailsModel? canteenBasicDetailsModel});
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
    Object? canteenBasicDetailsModel = freezed,
  }) {
    return _then(UserModified(
      canteenBasicDetailsModel: canteenBasicDetailsModel == freezed
          ? _value.canteenBasicDetailsModel
          : canteenBasicDetailsModel // ignore: cast_nullable_to_non_nullable
              as CanteenBasicDetailsModel?,
    ));
  }
}

/// @nodoc

class _$UserModified implements UserModified {
  const _$UserModified({this.canteenBasicDetailsModel});

  @override
  final CanteenBasicDetailsModel? canteenBasicDetailsModel;

  @override
  String toString() {
    return 'AuthenticationEvent.userModified(canteenBasicDetailsModel: $canteenBasicDetailsModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserModified &&
            (identical(
                    other.canteenBasicDetailsModel, canteenBasicDetailsModel) ||
                const DeepCollectionEquality().equals(
                    other.canteenBasicDetailsModel, canteenBasicDetailsModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(canteenBasicDetailsModel);

  @JsonKey(ignore: true)
  @override
  $UserModifiedCopyWith<UserModified> get copyWith =>
      _$UserModifiedCopyWithImpl<UserModified>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() signedOut,
    required TResult Function(
            CanteenBasicDetailsModel? canteenBasicDetailsModel)
        userModified,
    required TResult Function(
            CanteenBasicDetailsModel? canteenBasicDetailsModel, File? file)
        updateCanteenDetails,
  }) {
    return userModified(canteenBasicDetailsModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signedOut,
    TResult Function(CanteenBasicDetailsModel? canteenBasicDetailsModel)?
        userModified,
    TResult Function(
            CanteenBasicDetailsModel? canteenBasicDetailsModel, File? file)?
        updateCanteenDetails,
    required TResult orElse(),
  }) {
    if (userModified != null) {
      return userModified(canteenBasicDetailsModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(UserModified value) userModified,
    required TResult Function(_UpdateCanteenDetails value) updateCanteenDetails,
  }) {
    return userModified(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(UserModified value)? userModified,
    TResult Function(_UpdateCanteenDetails value)? updateCanteenDetails,
    required TResult orElse(),
  }) {
    if (userModified != null) {
      return userModified(this);
    }
    return orElse();
  }
}

abstract class UserModified implements AuthenticationEvent {
  const factory UserModified(
      {CanteenBasicDetailsModel? canteenBasicDetailsModel}) = _$UserModified;

  CanteenBasicDetailsModel? get canteenBasicDetailsModel =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModifiedCopyWith<UserModified> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateCanteenDetailsCopyWith<$Res> {
  factory _$UpdateCanteenDetailsCopyWith(_UpdateCanteenDetails value,
          $Res Function(_UpdateCanteenDetails) then) =
      __$UpdateCanteenDetailsCopyWithImpl<$Res>;
  $Res call({CanteenBasicDetailsModel? canteenBasicDetailsModel, File? file});
}

/// @nodoc
class __$UpdateCanteenDetailsCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$UpdateCanteenDetailsCopyWith<$Res> {
  __$UpdateCanteenDetailsCopyWithImpl(
      _UpdateCanteenDetails _value, $Res Function(_UpdateCanteenDetails) _then)
      : super(_value, (v) => _then(v as _UpdateCanteenDetails));

  @override
  _UpdateCanteenDetails get _value => super._value as _UpdateCanteenDetails;

  @override
  $Res call({
    Object? canteenBasicDetailsModel = freezed,
    Object? file = freezed,
  }) {
    return _then(_UpdateCanteenDetails(
      canteenBasicDetailsModel: canteenBasicDetailsModel == freezed
          ? _value.canteenBasicDetailsModel
          : canteenBasicDetailsModel // ignore: cast_nullable_to_non_nullable
              as CanteenBasicDetailsModel?,
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$_UpdateCanteenDetails implements _UpdateCanteenDetails {
  const _$_UpdateCanteenDetails({this.canteenBasicDetailsModel, this.file});

  @override
  final CanteenBasicDetailsModel? canteenBasicDetailsModel;
  @override
  final File? file;

  @override
  String toString() {
    return 'AuthenticationEvent.updateCanteenDetails(canteenBasicDetailsModel: $canteenBasicDetailsModel, file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateCanteenDetails &&
            (identical(
                    other.canteenBasicDetailsModel, canteenBasicDetailsModel) ||
                const DeepCollectionEquality().equals(
                    other.canteenBasicDetailsModel,
                    canteenBasicDetailsModel)) &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(canteenBasicDetailsModel) ^
      const DeepCollectionEquality().hash(file);

  @JsonKey(ignore: true)
  @override
  _$UpdateCanteenDetailsCopyWith<_UpdateCanteenDetails> get copyWith =>
      __$UpdateCanteenDetailsCopyWithImpl<_UpdateCanteenDetails>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() signedOut,
    required TResult Function(
            CanteenBasicDetailsModel? canteenBasicDetailsModel)
        userModified,
    required TResult Function(
            CanteenBasicDetailsModel? canteenBasicDetailsModel, File? file)
        updateCanteenDetails,
  }) {
    return updateCanteenDetails(canteenBasicDetailsModel, file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signedOut,
    TResult Function(CanteenBasicDetailsModel? canteenBasicDetailsModel)?
        userModified,
    TResult Function(
            CanteenBasicDetailsModel? canteenBasicDetailsModel, File? file)?
        updateCanteenDetails,
    required TResult orElse(),
  }) {
    if (updateCanteenDetails != null) {
      return updateCanteenDetails(canteenBasicDetailsModel, file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(UserModified value) userModified,
    required TResult Function(_UpdateCanteenDetails value) updateCanteenDetails,
  }) {
    return updateCanteenDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(UserModified value)? userModified,
    TResult Function(_UpdateCanteenDetails value)? updateCanteenDetails,
    required TResult orElse(),
  }) {
    if (updateCanteenDetails != null) {
      return updateCanteenDetails(this);
    }
    return orElse();
  }
}

abstract class _UpdateCanteenDetails implements AuthenticationEvent {
  const factory _UpdateCanteenDetails(
      {CanteenBasicDetailsModel? canteenBasicDetailsModel,
      File? file}) = _$_UpdateCanteenDetails;

  CanteenBasicDetailsModel? get canteenBasicDetailsModel =>
      throw _privateConstructorUsedError;
  File? get file => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateCanteenDetailsCopyWith<_UpdateCanteenDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AuthenticationStateTearOff {
  const _$AuthenticationStateTearOff();

  _AuthenticationState call(
      {CoolUser? coolUser,
      CanteenBasicDetailsModel? canteenBasicDetailsModel,
      bool? isSignedIn,
      bool? isDetailsAvailable,
      bool? isUpdatingProfileLoading,
      bool? isCheckingAuthState,
      Option<Either<FirebaseFailure, Unit>>? updateProfileFailureOrSuccess}) {
    return _AuthenticationState(
      coolUser: coolUser,
      canteenBasicDetailsModel: canteenBasicDetailsModel,
      isSignedIn: isSignedIn,
      isDetailsAvailable: isDetailsAvailable,
      isUpdatingProfileLoading: isUpdatingProfileLoading,
      isCheckingAuthState: isCheckingAuthState,
      updateProfileFailureOrSuccess: updateProfileFailureOrSuccess,
    );
  }
}

/// @nodoc
const $AuthenticationState = _$AuthenticationStateTearOff();

/// @nodoc
mixin _$AuthenticationState {
  CoolUser? get coolUser => throw _privateConstructorUsedError;
  CanteenBasicDetailsModel? get canteenBasicDetailsModel =>
      throw _privateConstructorUsedError;
  bool? get isSignedIn => throw _privateConstructorUsedError;
  bool? get isDetailsAvailable => throw _privateConstructorUsedError;
  bool? get isUpdatingProfileLoading => throw _privateConstructorUsedError;
  bool? get isCheckingAuthState => throw _privateConstructorUsedError;
  Option<Either<FirebaseFailure, Unit>>? get updateProfileFailureOrSuccess =>
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
      CanteenBasicDetailsModel? canteenBasicDetailsModel,
      bool? isSignedIn,
      bool? isDetailsAvailable,
      bool? isUpdatingProfileLoading,
      bool? isCheckingAuthState,
      Option<Either<FirebaseFailure, Unit>>? updateProfileFailureOrSuccess});
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
    Object? canteenBasicDetailsModel = freezed,
    Object? isSignedIn = freezed,
    Object? isDetailsAvailable = freezed,
    Object? isUpdatingProfileLoading = freezed,
    Object? isCheckingAuthState = freezed,
    Object? updateProfileFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      coolUser: coolUser == freezed
          ? _value.coolUser
          : coolUser // ignore: cast_nullable_to_non_nullable
              as CoolUser?,
      canteenBasicDetailsModel: canteenBasicDetailsModel == freezed
          ? _value.canteenBasicDetailsModel
          : canteenBasicDetailsModel // ignore: cast_nullable_to_non_nullable
              as CanteenBasicDetailsModel?,
      isSignedIn: isSignedIn == freezed
          ? _value.isSignedIn
          : isSignedIn // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDetailsAvailable: isDetailsAvailable == freezed
          ? _value.isDetailsAvailable
          : isDetailsAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      isUpdatingProfileLoading: isUpdatingProfileLoading == freezed
          ? _value.isUpdatingProfileLoading
          : isUpdatingProfileLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCheckingAuthState: isCheckingAuthState == freezed
          ? _value.isCheckingAuthState
          : isCheckingAuthState // ignore: cast_nullable_to_non_nullable
              as bool?,
      updateProfileFailureOrSuccess: updateProfileFailureOrSuccess == freezed
          ? _value.updateProfileFailureOrSuccess
          : updateProfileFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, Unit>>?,
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
      CanteenBasicDetailsModel? canteenBasicDetailsModel,
      bool? isSignedIn,
      bool? isDetailsAvailable,
      bool? isUpdatingProfileLoading,
      bool? isCheckingAuthState,
      Option<Either<FirebaseFailure, Unit>>? updateProfileFailureOrSuccess});
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
    Object? canteenBasicDetailsModel = freezed,
    Object? isSignedIn = freezed,
    Object? isDetailsAvailable = freezed,
    Object? isUpdatingProfileLoading = freezed,
    Object? isCheckingAuthState = freezed,
    Object? updateProfileFailureOrSuccess = freezed,
  }) {
    return _then(_AuthenticationState(
      coolUser: coolUser == freezed
          ? _value.coolUser
          : coolUser // ignore: cast_nullable_to_non_nullable
              as CoolUser?,
      canteenBasicDetailsModel: canteenBasicDetailsModel == freezed
          ? _value.canteenBasicDetailsModel
          : canteenBasicDetailsModel // ignore: cast_nullable_to_non_nullable
              as CanteenBasicDetailsModel?,
      isSignedIn: isSignedIn == freezed
          ? _value.isSignedIn
          : isSignedIn // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDetailsAvailable: isDetailsAvailable == freezed
          ? _value.isDetailsAvailable
          : isDetailsAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      isUpdatingProfileLoading: isUpdatingProfileLoading == freezed
          ? _value.isUpdatingProfileLoading
          : isUpdatingProfileLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCheckingAuthState: isCheckingAuthState == freezed
          ? _value.isCheckingAuthState
          : isCheckingAuthState // ignore: cast_nullable_to_non_nullable
              as bool?,
      updateProfileFailureOrSuccess: updateProfileFailureOrSuccess == freezed
          ? _value.updateProfileFailureOrSuccess
          : updateProfileFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, Unit>>?,
    ));
  }
}

/// @nodoc

class _$_AuthenticationState implements _AuthenticationState {
  const _$_AuthenticationState(
      {this.coolUser,
      this.canteenBasicDetailsModel,
      this.isSignedIn,
      this.isDetailsAvailable,
      this.isUpdatingProfileLoading,
      this.isCheckingAuthState,
      this.updateProfileFailureOrSuccess});

  @override
  final CoolUser? coolUser;
  @override
  final CanteenBasicDetailsModel? canteenBasicDetailsModel;
  @override
  final bool? isSignedIn;
  @override
  final bool? isDetailsAvailable;
  @override
  final bool? isUpdatingProfileLoading;
  @override
  final bool? isCheckingAuthState;
  @override
  final Option<Either<FirebaseFailure, Unit>>? updateProfileFailureOrSuccess;

  @override
  String toString() {
    return 'AuthenticationState(coolUser: $coolUser, canteenBasicDetailsModel: $canteenBasicDetailsModel, isSignedIn: $isSignedIn, isDetailsAvailable: $isDetailsAvailable, isUpdatingProfileLoading: $isUpdatingProfileLoading, isCheckingAuthState: $isCheckingAuthState, updateProfileFailureOrSuccess: $updateProfileFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthenticationState &&
            (identical(other.coolUser, coolUser) ||
                const DeepCollectionEquality()
                    .equals(other.coolUser, coolUser)) &&
            (identical(
                    other.canteenBasicDetailsModel, canteenBasicDetailsModel) ||
                const DeepCollectionEquality().equals(
                    other.canteenBasicDetailsModel,
                    canteenBasicDetailsModel)) &&
            (identical(other.isSignedIn, isSignedIn) ||
                const DeepCollectionEquality()
                    .equals(other.isSignedIn, isSignedIn)) &&
            (identical(other.isDetailsAvailable, isDetailsAvailable) ||
                const DeepCollectionEquality()
                    .equals(other.isDetailsAvailable, isDetailsAvailable)) &&
            (identical(
                    other.isUpdatingProfileLoading, isUpdatingProfileLoading) ||
                const DeepCollectionEquality().equals(
                    other.isUpdatingProfileLoading,
                    isUpdatingProfileLoading)) &&
            (identical(other.isCheckingAuthState, isCheckingAuthState) ||
                const DeepCollectionEquality()
                    .equals(other.isCheckingAuthState, isCheckingAuthState)) &&
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
      const DeepCollectionEquality().hash(canteenBasicDetailsModel) ^
      const DeepCollectionEquality().hash(isSignedIn) ^
      const DeepCollectionEquality().hash(isDetailsAvailable) ^
      const DeepCollectionEquality().hash(isUpdatingProfileLoading) ^
      const DeepCollectionEquality().hash(isCheckingAuthState) ^
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
      CanteenBasicDetailsModel? canteenBasicDetailsModel,
      bool? isSignedIn,
      bool? isDetailsAvailable,
      bool? isUpdatingProfileLoading,
      bool? isCheckingAuthState,
      Option<Either<FirebaseFailure, Unit>>?
          updateProfileFailureOrSuccess}) = _$_AuthenticationState;

  @override
  CoolUser? get coolUser => throw _privateConstructorUsedError;
  @override
  CanteenBasicDetailsModel? get canteenBasicDetailsModel =>
      throw _privateConstructorUsedError;
  @override
  bool? get isSignedIn => throw _privateConstructorUsedError;
  @override
  bool? get isDetailsAvailable => throw _privateConstructorUsedError;
  @override
  bool? get isUpdatingProfileLoading => throw _privateConstructorUsedError;
  @override
  bool? get isCheckingAuthState => throw _privateConstructorUsedError;
  @override
  Option<Either<FirebaseFailure, Unit>>? get updateProfileFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AuthenticationStateCopyWith<_AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}
