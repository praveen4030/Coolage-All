// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'general_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GeneralDetailsEventTearOff {
  const _$GeneralDetailsEventTearOff();

  _UpdateGeneralDetails updateGeneralDetails(
      {required GeneralDetailsModel model, required Function onUpdate}) {
    return _UpdateGeneralDetails(
      model: model,
      onUpdate: onUpdate,
    );
  }
}

/// @nodoc
const $GeneralDetailsEvent = _$GeneralDetailsEventTearOff();

/// @nodoc
mixin _$GeneralDetailsEvent {
  GeneralDetailsModel get model => throw _privateConstructorUsedError;
  Function get onUpdate => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GeneralDetailsModel model, Function onUpdate)
        updateGeneralDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GeneralDetailsModel model, Function onUpdate)?
        updateGeneralDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateGeneralDetails value) updateGeneralDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateGeneralDetails value)? updateGeneralDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GeneralDetailsEventCopyWith<GeneralDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralDetailsEventCopyWith<$Res> {
  factory $GeneralDetailsEventCopyWith(
          GeneralDetailsEvent value, $Res Function(GeneralDetailsEvent) then) =
      _$GeneralDetailsEventCopyWithImpl<$Res>;
  $Res call({GeneralDetailsModel model, Function onUpdate});
}

/// @nodoc
class _$GeneralDetailsEventCopyWithImpl<$Res>
    implements $GeneralDetailsEventCopyWith<$Res> {
  _$GeneralDetailsEventCopyWithImpl(this._value, this._then);

  final GeneralDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(GeneralDetailsEvent) _then;

  @override
  $Res call({
    Object? model = freezed,
    Object? onUpdate = freezed,
  }) {
    return _then(_value.copyWith(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as GeneralDetailsModel,
      onUpdate: onUpdate == freezed
          ? _value.onUpdate
          : onUpdate // ignore: cast_nullable_to_non_nullable
              as Function,
    ));
  }
}

/// @nodoc
abstract class _$UpdateGeneralDetailsCopyWith<$Res>
    implements $GeneralDetailsEventCopyWith<$Res> {
  factory _$UpdateGeneralDetailsCopyWith(_UpdateGeneralDetails value,
          $Res Function(_UpdateGeneralDetails) then) =
      __$UpdateGeneralDetailsCopyWithImpl<$Res>;
  @override
  $Res call({GeneralDetailsModel model, Function onUpdate});
}

/// @nodoc
class __$UpdateGeneralDetailsCopyWithImpl<$Res>
    extends _$GeneralDetailsEventCopyWithImpl<$Res>
    implements _$UpdateGeneralDetailsCopyWith<$Res> {
  __$UpdateGeneralDetailsCopyWithImpl(
      _UpdateGeneralDetails _value, $Res Function(_UpdateGeneralDetails) _then)
      : super(_value, (v) => _then(v as _UpdateGeneralDetails));

  @override
  _UpdateGeneralDetails get _value => super._value as _UpdateGeneralDetails;

  @override
  $Res call({
    Object? model = freezed,
    Object? onUpdate = freezed,
  }) {
    return _then(_UpdateGeneralDetails(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as GeneralDetailsModel,
      onUpdate: onUpdate == freezed
          ? _value.onUpdate
          : onUpdate // ignore: cast_nullable_to_non_nullable
              as Function,
    ));
  }
}

/// @nodoc

class _$_UpdateGeneralDetails implements _UpdateGeneralDetails {
  const _$_UpdateGeneralDetails({required this.model, required this.onUpdate});

  @override
  final GeneralDetailsModel model;
  @override
  final Function onUpdate;

  @override
  String toString() {
    return 'GeneralDetailsEvent.updateGeneralDetails(model: $model, onUpdate: $onUpdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateGeneralDetails &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)) &&
            (identical(other.onUpdate, onUpdate) ||
                const DeepCollectionEquality()
                    .equals(other.onUpdate, onUpdate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(model) ^
      const DeepCollectionEquality().hash(onUpdate);

  @JsonKey(ignore: true)
  @override
  _$UpdateGeneralDetailsCopyWith<_UpdateGeneralDetails> get copyWith =>
      __$UpdateGeneralDetailsCopyWithImpl<_UpdateGeneralDetails>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GeneralDetailsModel model, Function onUpdate)
        updateGeneralDetails,
  }) {
    return updateGeneralDetails(model, onUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GeneralDetailsModel model, Function onUpdate)?
        updateGeneralDetails,
    required TResult orElse(),
  }) {
    if (updateGeneralDetails != null) {
      return updateGeneralDetails(model, onUpdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateGeneralDetails value) updateGeneralDetails,
  }) {
    return updateGeneralDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateGeneralDetails value)? updateGeneralDetails,
    required TResult orElse(),
  }) {
    if (updateGeneralDetails != null) {
      return updateGeneralDetails(this);
    }
    return orElse();
  }
}

abstract class _UpdateGeneralDetails implements GeneralDetailsEvent {
  const factory _UpdateGeneralDetails(
      {required GeneralDetailsModel model,
      required Function onUpdate}) = _$_UpdateGeneralDetails;

  @override
  GeneralDetailsModel get model => throw _privateConstructorUsedError;
  @override
  Function get onUpdate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateGeneralDetailsCopyWith<_UpdateGeneralDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GeneralDetailsStateTearOff {
  const _$GeneralDetailsStateTearOff();

  _GeneralDetailsState call(
      {required bool isLoading,
      required Option<Either<FirebaseFailure, String>> actionFailureOpt}) {
    return _GeneralDetailsState(
      isLoading: isLoading,
      actionFailureOpt: actionFailureOpt,
    );
  }
}

/// @nodoc
const $GeneralDetailsState = _$GeneralDetailsStateTearOff();

/// @nodoc
mixin _$GeneralDetailsState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<FirebaseFailure, String>> get actionFailureOpt =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GeneralDetailsStateCopyWith<GeneralDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralDetailsStateCopyWith<$Res> {
  factory $GeneralDetailsStateCopyWith(
          GeneralDetailsState value, $Res Function(GeneralDetailsState) then) =
      _$GeneralDetailsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Option<Either<FirebaseFailure, String>> actionFailureOpt});
}

/// @nodoc
class _$GeneralDetailsStateCopyWithImpl<$Res>
    implements $GeneralDetailsStateCopyWith<$Res> {
  _$GeneralDetailsStateCopyWithImpl(this._value, this._then);

  final GeneralDetailsState _value;
  // ignore: unused_field
  final $Res Function(GeneralDetailsState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? actionFailureOpt = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$GeneralDetailsStateCopyWith<$Res>
    implements $GeneralDetailsStateCopyWith<$Res> {
  factory _$GeneralDetailsStateCopyWith(_GeneralDetailsState value,
          $Res Function(_GeneralDetailsState) then) =
      __$GeneralDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      Option<Either<FirebaseFailure, String>> actionFailureOpt});
}

/// @nodoc
class __$GeneralDetailsStateCopyWithImpl<$Res>
    extends _$GeneralDetailsStateCopyWithImpl<$Res>
    implements _$GeneralDetailsStateCopyWith<$Res> {
  __$GeneralDetailsStateCopyWithImpl(
      _GeneralDetailsState _value, $Res Function(_GeneralDetailsState) _then)
      : super(_value, (v) => _then(v as _GeneralDetailsState));

  @override
  _GeneralDetailsState get _value => super._value as _GeneralDetailsState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? actionFailureOpt = freezed,
  }) {
    return _then(_GeneralDetailsState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      actionFailureOpt: actionFailureOpt == freezed
          ? _value.actionFailureOpt
          : actionFailureOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, String>>,
    ));
  }
}

/// @nodoc

class _$_GeneralDetailsState implements _GeneralDetailsState {
  const _$_GeneralDetailsState(
      {required this.isLoading, required this.actionFailureOpt});

  @override
  final bool isLoading;
  @override
  final Option<Either<FirebaseFailure, String>> actionFailureOpt;

  @override
  String toString() {
    return 'GeneralDetailsState(isLoading: $isLoading, actionFailureOpt: $actionFailureOpt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GeneralDetailsState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.actionFailureOpt, actionFailureOpt) ||
                const DeepCollectionEquality()
                    .equals(other.actionFailureOpt, actionFailureOpt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(actionFailureOpt);

  @JsonKey(ignore: true)
  @override
  _$GeneralDetailsStateCopyWith<_GeneralDetailsState> get copyWith =>
      __$GeneralDetailsStateCopyWithImpl<_GeneralDetailsState>(
          this, _$identity);
}

abstract class _GeneralDetailsState implements GeneralDetailsState {
  const factory _GeneralDetailsState(
          {required bool isLoading,
          required Option<Either<FirebaseFailure, String>> actionFailureOpt}) =
      _$_GeneralDetailsState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  Option<Either<FirebaseFailure, String>> get actionFailureOpt =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GeneralDetailsStateCopyWith<_GeneralDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
