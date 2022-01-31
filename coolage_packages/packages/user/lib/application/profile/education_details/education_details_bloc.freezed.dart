// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'education_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EducationDetailsEventTearOff {
  const _$EducationDetailsEventTearOff();

  _AddEducationDetails addEducationDetails(
      {EducationDetailsModel? model, int? index, required Function onAdd}) {
    return _AddEducationDetails(
      model: model,
      index: index,
      onAdd: onAdd,
    );
  }

  _Delete delete(
      {required EducationDetailsModel model,
      required int index,
      required Function onDelete}) {
    return _Delete(
      model: model,
      index: index,
      onDelete: onDelete,
    );
  }
}

/// @nodoc
const $EducationDetailsEvent = _$EducationDetailsEventTearOff();

/// @nodoc
mixin _$EducationDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            EducationDetailsModel? model, int? index, Function onAdd)
        addEducationDetails,
    required TResult Function(
            EducationDetailsModel model, int index, Function onDelete)
        delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EducationDetailsModel? model, int? index, Function onAdd)?
        addEducationDetails,
    TResult Function(EducationDetailsModel model, int index, Function onDelete)?
        delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddEducationDetails value) addEducationDetails,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddEducationDetails value)? addEducationDetails,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EducationDetailsEventCopyWith<$Res> {
  factory $EducationDetailsEventCopyWith(EducationDetailsEvent value,
          $Res Function(EducationDetailsEvent) then) =
      _$EducationDetailsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EducationDetailsEventCopyWithImpl<$Res>
    implements $EducationDetailsEventCopyWith<$Res> {
  _$EducationDetailsEventCopyWithImpl(this._value, this._then);

  final EducationDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(EducationDetailsEvent) _then;
}

/// @nodoc
abstract class _$AddEducationDetailsCopyWith<$Res> {
  factory _$AddEducationDetailsCopyWith(_AddEducationDetails value,
          $Res Function(_AddEducationDetails) then) =
      __$AddEducationDetailsCopyWithImpl<$Res>;
  $Res call({EducationDetailsModel? model, int? index, Function onAdd});
}

/// @nodoc
class __$AddEducationDetailsCopyWithImpl<$Res>
    extends _$EducationDetailsEventCopyWithImpl<$Res>
    implements _$AddEducationDetailsCopyWith<$Res> {
  __$AddEducationDetailsCopyWithImpl(
      _AddEducationDetails _value, $Res Function(_AddEducationDetails) _then)
      : super(_value, (v) => _then(v as _AddEducationDetails));

  @override
  _AddEducationDetails get _value => super._value as _AddEducationDetails;

  @override
  $Res call({
    Object? model = freezed,
    Object? index = freezed,
    Object? onAdd = freezed,
  }) {
    return _then(_AddEducationDetails(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as EducationDetailsModel?,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      onAdd: onAdd == freezed
          ? _value.onAdd
          : onAdd // ignore: cast_nullable_to_non_nullable
              as Function,
    ));
  }
}

/// @nodoc

class _$_AddEducationDetails implements _AddEducationDetails {
  const _$_AddEducationDetails({this.model, this.index, required this.onAdd});

  @override
  final EducationDetailsModel? model;
  @override
  final int? index;
  @override
  final Function onAdd;

  @override
  String toString() {
    return 'EducationDetailsEvent.addEducationDetails(model: $model, index: $index, onAdd: $onAdd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddEducationDetails &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.onAdd, onAdd) ||
                const DeepCollectionEquality().equals(other.onAdd, onAdd)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(model) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(onAdd);

  @JsonKey(ignore: true)
  @override
  _$AddEducationDetailsCopyWith<_AddEducationDetails> get copyWith =>
      __$AddEducationDetailsCopyWithImpl<_AddEducationDetails>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            EducationDetailsModel? model, int? index, Function onAdd)
        addEducationDetails,
    required TResult Function(
            EducationDetailsModel model, int index, Function onDelete)
        delete,
  }) {
    return addEducationDetails(model, index, onAdd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EducationDetailsModel? model, int? index, Function onAdd)?
        addEducationDetails,
    TResult Function(EducationDetailsModel model, int index, Function onDelete)?
        delete,
    required TResult orElse(),
  }) {
    if (addEducationDetails != null) {
      return addEducationDetails(model, index, onAdd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddEducationDetails value) addEducationDetails,
    required TResult Function(_Delete value) delete,
  }) {
    return addEducationDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddEducationDetails value)? addEducationDetails,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (addEducationDetails != null) {
      return addEducationDetails(this);
    }
    return orElse();
  }
}

abstract class _AddEducationDetails implements EducationDetailsEvent {
  const factory _AddEducationDetails(
      {EducationDetailsModel? model,
      int? index,
      required Function onAdd}) = _$_AddEducationDetails;

  EducationDetailsModel? get model => throw _privateConstructorUsedError;
  int? get index => throw _privateConstructorUsedError;
  Function get onAdd => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddEducationDetailsCopyWith<_AddEducationDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteCopyWith<$Res> {
  factory _$DeleteCopyWith(_Delete value, $Res Function(_Delete) then) =
      __$DeleteCopyWithImpl<$Res>;
  $Res call({EducationDetailsModel model, int index, Function onDelete});
}

/// @nodoc
class __$DeleteCopyWithImpl<$Res>
    extends _$EducationDetailsEventCopyWithImpl<$Res>
    implements _$DeleteCopyWith<$Res> {
  __$DeleteCopyWithImpl(_Delete _value, $Res Function(_Delete) _then)
      : super(_value, (v) => _then(v as _Delete));

  @override
  _Delete get _value => super._value as _Delete;

  @override
  $Res call({
    Object? model = freezed,
    Object? index = freezed,
    Object? onDelete = freezed,
  }) {
    return _then(_Delete(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as EducationDetailsModel,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      onDelete: onDelete == freezed
          ? _value.onDelete
          : onDelete // ignore: cast_nullable_to_non_nullable
              as Function,
    ));
  }
}

/// @nodoc

class _$_Delete implements _Delete {
  const _$_Delete(
      {required this.model, required this.index, required this.onDelete});

  @override
  final EducationDetailsModel model;
  @override
  final int index;
  @override
  final Function onDelete;

  @override
  String toString() {
    return 'EducationDetailsEvent.delete(model: $model, index: $index, onDelete: $onDelete)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Delete &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.onDelete, onDelete) ||
                const DeepCollectionEquality()
                    .equals(other.onDelete, onDelete)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(model) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(onDelete);

  @JsonKey(ignore: true)
  @override
  _$DeleteCopyWith<_Delete> get copyWith =>
      __$DeleteCopyWithImpl<_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            EducationDetailsModel? model, int? index, Function onAdd)
        addEducationDetails,
    required TResult Function(
            EducationDetailsModel model, int index, Function onDelete)
        delete,
  }) {
    return delete(model, index, onDelete);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EducationDetailsModel? model, int? index, Function onAdd)?
        addEducationDetails,
    TResult Function(EducationDetailsModel model, int index, Function onDelete)?
        delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(model, index, onDelete);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddEducationDetails value) addEducationDetails,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddEducationDetails value)? addEducationDetails,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements EducationDetailsEvent {
  const factory _Delete(
      {required EducationDetailsModel model,
      required int index,
      required Function onDelete}) = _$_Delete;

  EducationDetailsModel get model => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  Function get onDelete => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteCopyWith<_Delete> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$EducationDetailsStateTearOff {
  const _$EducationDetailsStateTearOff();

  _EducationDetailsState call(
      {required bool isLoading,
      required bool isDeleteLoading,
      required bool isVisibilityLoading,
      required Option<Either<FirebaseFailure, String>> actionFailureOpt}) {
    return _EducationDetailsState(
      isLoading: isLoading,
      isDeleteLoading: isDeleteLoading,
      isVisibilityLoading: isVisibilityLoading,
      actionFailureOpt: actionFailureOpt,
    );
  }
}

/// @nodoc
const $EducationDetailsState = _$EducationDetailsStateTearOff();

/// @nodoc
mixin _$EducationDetailsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isDeleteLoading => throw _privateConstructorUsedError;
  bool get isVisibilityLoading => throw _privateConstructorUsedError;
  Option<Either<FirebaseFailure, String>> get actionFailureOpt =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EducationDetailsStateCopyWith<EducationDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EducationDetailsStateCopyWith<$Res> {
  factory $EducationDetailsStateCopyWith(EducationDetailsState value,
          $Res Function(EducationDetailsState) then) =
      _$EducationDetailsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isDeleteLoading,
      bool isVisibilityLoading,
      Option<Either<FirebaseFailure, String>> actionFailureOpt});
}

/// @nodoc
class _$EducationDetailsStateCopyWithImpl<$Res>
    implements $EducationDetailsStateCopyWith<$Res> {
  _$EducationDetailsStateCopyWithImpl(this._value, this._then);

  final EducationDetailsState _value;
  // ignore: unused_field
  final $Res Function(EducationDetailsState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isDeleteLoading = freezed,
    Object? isVisibilityLoading = freezed,
    Object? actionFailureOpt = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleteLoading: isDeleteLoading == freezed
          ? _value.isDeleteLoading
          : isDeleteLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isVisibilityLoading: isVisibilityLoading == freezed
          ? _value.isVisibilityLoading
          : isVisibilityLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      actionFailureOpt: actionFailureOpt == freezed
          ? _value.actionFailureOpt
          : actionFailureOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, String>>,
    ));
  }
}

/// @nodoc
abstract class _$EducationDetailsStateCopyWith<$Res>
    implements $EducationDetailsStateCopyWith<$Res> {
  factory _$EducationDetailsStateCopyWith(_EducationDetailsState value,
          $Res Function(_EducationDetailsState) then) =
      __$EducationDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isDeleteLoading,
      bool isVisibilityLoading,
      Option<Either<FirebaseFailure, String>> actionFailureOpt});
}

/// @nodoc
class __$EducationDetailsStateCopyWithImpl<$Res>
    extends _$EducationDetailsStateCopyWithImpl<$Res>
    implements _$EducationDetailsStateCopyWith<$Res> {
  __$EducationDetailsStateCopyWithImpl(_EducationDetailsState _value,
      $Res Function(_EducationDetailsState) _then)
      : super(_value, (v) => _then(v as _EducationDetailsState));

  @override
  _EducationDetailsState get _value => super._value as _EducationDetailsState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isDeleteLoading = freezed,
    Object? isVisibilityLoading = freezed,
    Object? actionFailureOpt = freezed,
  }) {
    return _then(_EducationDetailsState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleteLoading: isDeleteLoading == freezed
          ? _value.isDeleteLoading
          : isDeleteLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isVisibilityLoading: isVisibilityLoading == freezed
          ? _value.isVisibilityLoading
          : isVisibilityLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      actionFailureOpt: actionFailureOpt == freezed
          ? _value.actionFailureOpt
          : actionFailureOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, String>>,
    ));
  }
}

/// @nodoc

class _$_EducationDetailsState implements _EducationDetailsState {
  const _$_EducationDetailsState(
      {required this.isLoading,
      required this.isDeleteLoading,
      required this.isVisibilityLoading,
      required this.actionFailureOpt});

  @override
  final bool isLoading;
  @override
  final bool isDeleteLoading;
  @override
  final bool isVisibilityLoading;
  @override
  final Option<Either<FirebaseFailure, String>> actionFailureOpt;

  @override
  String toString() {
    return 'EducationDetailsState(isLoading: $isLoading, isDeleteLoading: $isDeleteLoading, isVisibilityLoading: $isVisibilityLoading, actionFailureOpt: $actionFailureOpt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EducationDetailsState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isDeleteLoading, isDeleteLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isDeleteLoading, isDeleteLoading)) &&
            (identical(other.isVisibilityLoading, isVisibilityLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isVisibilityLoading, isVisibilityLoading)) &&
            (identical(other.actionFailureOpt, actionFailureOpt) ||
                const DeepCollectionEquality()
                    .equals(other.actionFailureOpt, actionFailureOpt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isDeleteLoading) ^
      const DeepCollectionEquality().hash(isVisibilityLoading) ^
      const DeepCollectionEquality().hash(actionFailureOpt);

  @JsonKey(ignore: true)
  @override
  _$EducationDetailsStateCopyWith<_EducationDetailsState> get copyWith =>
      __$EducationDetailsStateCopyWithImpl<_EducationDetailsState>(
          this, _$identity);
}

abstract class _EducationDetailsState implements EducationDetailsState {
  const factory _EducationDetailsState(
          {required bool isLoading,
          required bool isDeleteLoading,
          required bool isVisibilityLoading,
          required Option<Either<FirebaseFailure, String>> actionFailureOpt}) =
      _$_EducationDetailsState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isDeleteLoading => throw _privateConstructorUsedError;
  @override
  bool get isVisibilityLoading => throw _privateConstructorUsedError;
  @override
  Option<Either<FirebaseFailure, String>> get actionFailureOpt =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EducationDetailsStateCopyWith<_EducationDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
