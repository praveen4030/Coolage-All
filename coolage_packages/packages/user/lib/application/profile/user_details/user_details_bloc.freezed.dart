// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserDetailsEventTearOff {
  const _$UserDetailsEventTearOff();

  _UpdateUserDetails updateUserDetails(
      {required CoolUser model, required Function onUpdate, File? file}) {
    return _UpdateUserDetails(
      model: model,
      onUpdate: onUpdate,
      file: file,
    );
  }

  _SetCurrentUserDetails setCurrentUserDetails(
      {required CoolUser model, required bool isCurrentUser}) {
    return _SetCurrentUserDetails(
      model: model,
      isCurrentUser: isCurrentUser,
    );
  }
}

/// @nodoc
const $UserDetailsEvent = _$UserDetailsEventTearOff();

/// @nodoc
mixin _$UserDetailsEvent {
  CoolUser get model => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CoolUser model, Function onUpdate, File? file)
        updateUserDetails,
    required TResult Function(CoolUser model, bool isCurrentUser)
        setCurrentUserDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CoolUser model, Function onUpdate, File? file)?
        updateUserDetails,
    TResult Function(CoolUser model, bool isCurrentUser)? setCurrentUserDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateUserDetails value) updateUserDetails,
    required TResult Function(_SetCurrentUserDetails value)
        setCurrentUserDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateUserDetails value)? updateUserDetails,
    TResult Function(_SetCurrentUserDetails value)? setCurrentUserDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDetailsEventCopyWith<UserDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsEventCopyWith<$Res> {
  factory $UserDetailsEventCopyWith(
          UserDetailsEvent value, $Res Function(UserDetailsEvent) then) =
      _$UserDetailsEventCopyWithImpl<$Res>;
  $Res call({CoolUser model});
}

/// @nodoc
class _$UserDetailsEventCopyWithImpl<$Res>
    implements $UserDetailsEventCopyWith<$Res> {
  _$UserDetailsEventCopyWithImpl(this._value, this._then);

  final UserDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(UserDetailsEvent) _then;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_value.copyWith(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CoolUser,
    ));
  }
}

/// @nodoc
abstract class _$UpdateUserDetailsCopyWith<$Res>
    implements $UserDetailsEventCopyWith<$Res> {
  factory _$UpdateUserDetailsCopyWith(
          _UpdateUserDetails value, $Res Function(_UpdateUserDetails) then) =
      __$UpdateUserDetailsCopyWithImpl<$Res>;
  @override
  $Res call({CoolUser model, Function onUpdate, File? file});
}

/// @nodoc
class __$UpdateUserDetailsCopyWithImpl<$Res>
    extends _$UserDetailsEventCopyWithImpl<$Res>
    implements _$UpdateUserDetailsCopyWith<$Res> {
  __$UpdateUserDetailsCopyWithImpl(
      _UpdateUserDetails _value, $Res Function(_UpdateUserDetails) _then)
      : super(_value, (v) => _then(v as _UpdateUserDetails));

  @override
  _UpdateUserDetails get _value => super._value as _UpdateUserDetails;

  @override
  $Res call({
    Object? model = freezed,
    Object? onUpdate = freezed,
    Object? file = freezed,
  }) {
    return _then(_UpdateUserDetails(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CoolUser,
      onUpdate: onUpdate == freezed
          ? _value.onUpdate
          : onUpdate // ignore: cast_nullable_to_non_nullable
              as Function,
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$_UpdateUserDetails implements _UpdateUserDetails {
  const _$_UpdateUserDetails(
      {required this.model, required this.onUpdate, this.file});

  @override
  final CoolUser model;
  @override
  final Function onUpdate;
  @override
  final File? file;

  @override
  String toString() {
    return 'UserDetailsEvent.updateUserDetails(model: $model, onUpdate: $onUpdate, file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateUserDetails &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)) &&
            (identical(other.onUpdate, onUpdate) ||
                const DeepCollectionEquality()
                    .equals(other.onUpdate, onUpdate)) &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(model) ^
      const DeepCollectionEquality().hash(onUpdate) ^
      const DeepCollectionEquality().hash(file);

  @JsonKey(ignore: true)
  @override
  _$UpdateUserDetailsCopyWith<_UpdateUserDetails> get copyWith =>
      __$UpdateUserDetailsCopyWithImpl<_UpdateUserDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CoolUser model, Function onUpdate, File? file)
        updateUserDetails,
    required TResult Function(CoolUser model, bool isCurrentUser)
        setCurrentUserDetails,
  }) {
    return updateUserDetails(model, onUpdate, file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CoolUser model, Function onUpdate, File? file)?
        updateUserDetails,
    TResult Function(CoolUser model, bool isCurrentUser)? setCurrentUserDetails,
    required TResult orElse(),
  }) {
    if (updateUserDetails != null) {
      return updateUserDetails(model, onUpdate, file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateUserDetails value) updateUserDetails,
    required TResult Function(_SetCurrentUserDetails value)
        setCurrentUserDetails,
  }) {
    return updateUserDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateUserDetails value)? updateUserDetails,
    TResult Function(_SetCurrentUserDetails value)? setCurrentUserDetails,
    required TResult orElse(),
  }) {
    if (updateUserDetails != null) {
      return updateUserDetails(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserDetails implements UserDetailsEvent {
  const factory _UpdateUserDetails(
      {required CoolUser model,
      required Function onUpdate,
      File? file}) = _$_UpdateUserDetails;

  @override
  CoolUser get model => throw _privateConstructorUsedError;
  Function get onUpdate => throw _privateConstructorUsedError;
  File? get file => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateUserDetailsCopyWith<_UpdateUserDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetCurrentUserDetailsCopyWith<$Res>
    implements $UserDetailsEventCopyWith<$Res> {
  factory _$SetCurrentUserDetailsCopyWith(_SetCurrentUserDetails value,
          $Res Function(_SetCurrentUserDetails) then) =
      __$SetCurrentUserDetailsCopyWithImpl<$Res>;
  @override
  $Res call({CoolUser model, bool isCurrentUser});
}

/// @nodoc
class __$SetCurrentUserDetailsCopyWithImpl<$Res>
    extends _$UserDetailsEventCopyWithImpl<$Res>
    implements _$SetCurrentUserDetailsCopyWith<$Res> {
  __$SetCurrentUserDetailsCopyWithImpl(_SetCurrentUserDetails _value,
      $Res Function(_SetCurrentUserDetails) _then)
      : super(_value, (v) => _then(v as _SetCurrentUserDetails));

  @override
  _SetCurrentUserDetails get _value => super._value as _SetCurrentUserDetails;

  @override
  $Res call({
    Object? model = freezed,
    Object? isCurrentUser = freezed,
  }) {
    return _then(_SetCurrentUserDetails(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CoolUser,
      isCurrentUser: isCurrentUser == freezed
          ? _value.isCurrentUser
          : isCurrentUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SetCurrentUserDetails implements _SetCurrentUserDetails {
  const _$_SetCurrentUserDetails(
      {required this.model, required this.isCurrentUser});

  @override
  final CoolUser model;
  @override
  final bool isCurrentUser;

  @override
  String toString() {
    return 'UserDetailsEvent.setCurrentUserDetails(model: $model, isCurrentUser: $isCurrentUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetCurrentUserDetails &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)) &&
            (identical(other.isCurrentUser, isCurrentUser) ||
                const DeepCollectionEquality()
                    .equals(other.isCurrentUser, isCurrentUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(model) ^
      const DeepCollectionEquality().hash(isCurrentUser);

  @JsonKey(ignore: true)
  @override
  _$SetCurrentUserDetailsCopyWith<_SetCurrentUserDetails> get copyWith =>
      __$SetCurrentUserDetailsCopyWithImpl<_SetCurrentUserDetails>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CoolUser model, Function onUpdate, File? file)
        updateUserDetails,
    required TResult Function(CoolUser model, bool isCurrentUser)
        setCurrentUserDetails,
  }) {
    return setCurrentUserDetails(model, isCurrentUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CoolUser model, Function onUpdate, File? file)?
        updateUserDetails,
    TResult Function(CoolUser model, bool isCurrentUser)? setCurrentUserDetails,
    required TResult orElse(),
  }) {
    if (setCurrentUserDetails != null) {
      return setCurrentUserDetails(model, isCurrentUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateUserDetails value) updateUserDetails,
    required TResult Function(_SetCurrentUserDetails value)
        setCurrentUserDetails,
  }) {
    return setCurrentUserDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateUserDetails value)? updateUserDetails,
    TResult Function(_SetCurrentUserDetails value)? setCurrentUserDetails,
    required TResult orElse(),
  }) {
    if (setCurrentUserDetails != null) {
      return setCurrentUserDetails(this);
    }
    return orElse();
  }
}

abstract class _SetCurrentUserDetails implements UserDetailsEvent {
  const factory _SetCurrentUserDetails(
      {required CoolUser model,
      required bool isCurrentUser}) = _$_SetCurrentUserDetails;

  @override
  CoolUser get model => throw _privateConstructorUsedError;
  bool get isCurrentUser => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SetCurrentUserDetailsCopyWith<_SetCurrentUserDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UserDetailsStateTearOff {
  const _$UserDetailsStateTearOff();

  _UserDetailsState call(
      {required bool isLoading,
      required Option<Either<FirebaseFailure, String>> actionFailureOpt,
      required CoolUser coolUser,
      required bool isCurrentUser}) {
    return _UserDetailsState(
      isLoading: isLoading,
      actionFailureOpt: actionFailureOpt,
      coolUser: coolUser,
      isCurrentUser: isCurrentUser,
    );
  }
}

/// @nodoc
const $UserDetailsState = _$UserDetailsStateTearOff();

/// @nodoc
mixin _$UserDetailsState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<FirebaseFailure, String>> get actionFailureOpt =>
      throw _privateConstructorUsedError;
  CoolUser get coolUser => throw _privateConstructorUsedError;
  bool get isCurrentUser => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDetailsStateCopyWith<UserDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsStateCopyWith<$Res> {
  factory $UserDetailsStateCopyWith(
          UserDetailsState value, $Res Function(UserDetailsState) then) =
      _$UserDetailsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Option<Either<FirebaseFailure, String>> actionFailureOpt,
      CoolUser coolUser,
      bool isCurrentUser});
}

/// @nodoc
class _$UserDetailsStateCopyWithImpl<$Res>
    implements $UserDetailsStateCopyWith<$Res> {
  _$UserDetailsStateCopyWithImpl(this._value, this._then);

  final UserDetailsState _value;
  // ignore: unused_field
  final $Res Function(UserDetailsState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? actionFailureOpt = freezed,
    Object? coolUser = freezed,
    Object? isCurrentUser = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      actionFailureOpt: actionFailureOpt == freezed
          ? _value.actionFailureOpt
          : actionFailureOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, String>>,
      coolUser: coolUser == freezed
          ? _value.coolUser
          : coolUser // ignore: cast_nullable_to_non_nullable
              as CoolUser,
      isCurrentUser: isCurrentUser == freezed
          ? _value.isCurrentUser
          : isCurrentUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$UserDetailsStateCopyWith<$Res>
    implements $UserDetailsStateCopyWith<$Res> {
  factory _$UserDetailsStateCopyWith(
          _UserDetailsState value, $Res Function(_UserDetailsState) then) =
      __$UserDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      Option<Either<FirebaseFailure, String>> actionFailureOpt,
      CoolUser coolUser,
      bool isCurrentUser});
}

/// @nodoc
class __$UserDetailsStateCopyWithImpl<$Res>
    extends _$UserDetailsStateCopyWithImpl<$Res>
    implements _$UserDetailsStateCopyWith<$Res> {
  __$UserDetailsStateCopyWithImpl(
      _UserDetailsState _value, $Res Function(_UserDetailsState) _then)
      : super(_value, (v) => _then(v as _UserDetailsState));

  @override
  _UserDetailsState get _value => super._value as _UserDetailsState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? actionFailureOpt = freezed,
    Object? coolUser = freezed,
    Object? isCurrentUser = freezed,
  }) {
    return _then(_UserDetailsState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      actionFailureOpt: actionFailureOpt == freezed
          ? _value.actionFailureOpt
          : actionFailureOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, String>>,
      coolUser: coolUser == freezed
          ? _value.coolUser
          : coolUser // ignore: cast_nullable_to_non_nullable
              as CoolUser,
      isCurrentUser: isCurrentUser == freezed
          ? _value.isCurrentUser
          : isCurrentUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UserDetailsState implements _UserDetailsState {
  const _$_UserDetailsState(
      {required this.isLoading,
      required this.actionFailureOpt,
      required this.coolUser,
      required this.isCurrentUser});

  @override
  final bool isLoading;
  @override
  final Option<Either<FirebaseFailure, String>> actionFailureOpt;
  @override
  final CoolUser coolUser;
  @override
  final bool isCurrentUser;

  @override
  String toString() {
    return 'UserDetailsState(isLoading: $isLoading, actionFailureOpt: $actionFailureOpt, coolUser: $coolUser, isCurrentUser: $isCurrentUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDetailsState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.actionFailureOpt, actionFailureOpt) ||
                const DeepCollectionEquality()
                    .equals(other.actionFailureOpt, actionFailureOpt)) &&
            (identical(other.coolUser, coolUser) ||
                const DeepCollectionEquality()
                    .equals(other.coolUser, coolUser)) &&
            (identical(other.isCurrentUser, isCurrentUser) ||
                const DeepCollectionEquality()
                    .equals(other.isCurrentUser, isCurrentUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(actionFailureOpt) ^
      const DeepCollectionEquality().hash(coolUser) ^
      const DeepCollectionEquality().hash(isCurrentUser);

  @JsonKey(ignore: true)
  @override
  _$UserDetailsStateCopyWith<_UserDetailsState> get copyWith =>
      __$UserDetailsStateCopyWithImpl<_UserDetailsState>(this, _$identity);
}

abstract class _UserDetailsState implements UserDetailsState {
  const factory _UserDetailsState(
      {required bool isLoading,
      required Option<Either<FirebaseFailure, String>> actionFailureOpt,
      required CoolUser coolUser,
      required bool isCurrentUser}) = _$_UserDetailsState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  Option<Either<FirebaseFailure, String>> get actionFailureOpt =>
      throw _privateConstructorUsedError;
  @override
  CoolUser get coolUser => throw _privateConstructorUsedError;
  @override
  bool get isCurrentUser => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserDetailsStateCopyWith<_UserDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
