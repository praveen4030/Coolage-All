// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'coolage_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CoolageDetailsEventTearOff {
  const _$CoolageDetailsEventTearOff();

  _Started started() {
    return const _Started();
  }
}

/// @nodoc
const $CoolageDetailsEvent = _$CoolageDetailsEventTearOff();

/// @nodoc
mixin _$CoolageDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoolageDetailsEventCopyWith<$Res> {
  factory $CoolageDetailsEventCopyWith(
          CoolageDetailsEvent value, $Res Function(CoolageDetailsEvent) then) =
      _$CoolageDetailsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CoolageDetailsEventCopyWithImpl<$Res>
    implements $CoolageDetailsEventCopyWith<$Res> {
  _$CoolageDetailsEventCopyWithImpl(this._value, this._then);

  final CoolageDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(CoolageDetailsEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$CoolageDetailsEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'CoolageDetailsEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CoolageDetailsEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$CoolageDetailsStateTearOff {
  const _$CoolageDetailsStateTearOff();

  _CoolageDetailsState call(
      {CoolageDetailsModel? coolageDetailsModel,
      required bool isLoading,
      required Option<Unit> actionResultOpt}) {
    return _CoolageDetailsState(
      coolageDetailsModel: coolageDetailsModel,
      isLoading: isLoading,
      actionResultOpt: actionResultOpt,
    );
  }
}

/// @nodoc
const $CoolageDetailsState = _$CoolageDetailsStateTearOff();

/// @nodoc
mixin _$CoolageDetailsState {
  CoolageDetailsModel? get coolageDetailsModel =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Unit> get actionResultOpt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoolageDetailsStateCopyWith<CoolageDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoolageDetailsStateCopyWith<$Res> {
  factory $CoolageDetailsStateCopyWith(
          CoolageDetailsState value, $Res Function(CoolageDetailsState) then) =
      _$CoolageDetailsStateCopyWithImpl<$Res>;
  $Res call(
      {CoolageDetailsModel? coolageDetailsModel,
      bool isLoading,
      Option<Unit> actionResultOpt});
}

/// @nodoc
class _$CoolageDetailsStateCopyWithImpl<$Res>
    implements $CoolageDetailsStateCopyWith<$Res> {
  _$CoolageDetailsStateCopyWithImpl(this._value, this._then);

  final CoolageDetailsState _value;
  // ignore: unused_field
  final $Res Function(CoolageDetailsState) _then;

  @override
  $Res call({
    Object? coolageDetailsModel = freezed,
    Object? isLoading = freezed,
    Object? actionResultOpt = freezed,
  }) {
    return _then(_value.copyWith(
      coolageDetailsModel: coolageDetailsModel == freezed
          ? _value.coolageDetailsModel
          : coolageDetailsModel // ignore: cast_nullable_to_non_nullable
              as CoolageDetailsModel?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      actionResultOpt: actionResultOpt == freezed
          ? _value.actionResultOpt
          : actionResultOpt // ignore: cast_nullable_to_non_nullable
              as Option<Unit>,
    ));
  }
}

/// @nodoc
abstract class _$CoolageDetailsStateCopyWith<$Res>
    implements $CoolageDetailsStateCopyWith<$Res> {
  factory _$CoolageDetailsStateCopyWith(_CoolageDetailsState value,
          $Res Function(_CoolageDetailsState) then) =
      __$CoolageDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {CoolageDetailsModel? coolageDetailsModel,
      bool isLoading,
      Option<Unit> actionResultOpt});
}

/// @nodoc
class __$CoolageDetailsStateCopyWithImpl<$Res>
    extends _$CoolageDetailsStateCopyWithImpl<$Res>
    implements _$CoolageDetailsStateCopyWith<$Res> {
  __$CoolageDetailsStateCopyWithImpl(
      _CoolageDetailsState _value, $Res Function(_CoolageDetailsState) _then)
      : super(_value, (v) => _then(v as _CoolageDetailsState));

  @override
  _CoolageDetailsState get _value => super._value as _CoolageDetailsState;

  @override
  $Res call({
    Object? coolageDetailsModel = freezed,
    Object? isLoading = freezed,
    Object? actionResultOpt = freezed,
  }) {
    return _then(_CoolageDetailsState(
      coolageDetailsModel: coolageDetailsModel == freezed
          ? _value.coolageDetailsModel
          : coolageDetailsModel // ignore: cast_nullable_to_non_nullable
              as CoolageDetailsModel?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      actionResultOpt: actionResultOpt == freezed
          ? _value.actionResultOpt
          : actionResultOpt // ignore: cast_nullable_to_non_nullable
              as Option<Unit>,
    ));
  }
}

/// @nodoc

class _$_CoolageDetailsState implements _CoolageDetailsState {
  const _$_CoolageDetailsState(
      {this.coolageDetailsModel,
      required this.isLoading,
      required this.actionResultOpt});

  @override
  final CoolageDetailsModel? coolageDetailsModel;
  @override
  final bool isLoading;
  @override
  final Option<Unit> actionResultOpt;

  @override
  String toString() {
    return 'CoolageDetailsState(coolageDetailsModel: $coolageDetailsModel, isLoading: $isLoading, actionResultOpt: $actionResultOpt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CoolageDetailsState &&
            (identical(other.coolageDetailsModel, coolageDetailsModel) ||
                const DeepCollectionEquality()
                    .equals(other.coolageDetailsModel, coolageDetailsModel)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.actionResultOpt, actionResultOpt) ||
                const DeepCollectionEquality()
                    .equals(other.actionResultOpt, actionResultOpt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(coolageDetailsModel) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(actionResultOpt);

  @JsonKey(ignore: true)
  @override
  _$CoolageDetailsStateCopyWith<_CoolageDetailsState> get copyWith =>
      __$CoolageDetailsStateCopyWithImpl<_CoolageDetailsState>(
          this, _$identity);
}

abstract class _CoolageDetailsState implements CoolageDetailsState {
  const factory _CoolageDetailsState(
      {CoolageDetailsModel? coolageDetailsModel,
      required bool isLoading,
      required Option<Unit> actionResultOpt}) = _$_CoolageDetailsState;

  @override
  CoolageDetailsModel? get coolageDetailsModel =>
      throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  Option<Unit> get actionResultOpt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CoolageDetailsStateCopyWith<_CoolageDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
