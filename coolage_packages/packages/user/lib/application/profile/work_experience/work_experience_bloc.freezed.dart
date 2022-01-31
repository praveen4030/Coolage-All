// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'work_experience_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WorkExperienceEventTearOff {
  const _$WorkExperienceEventTearOff();

  _AddWorkExperience addWorkExperience(
      {WorkExperienceModel? model, int? index, required Function onAdd}) {
    return _AddWorkExperience(
      model: model,
      index: index,
      onAdd: onAdd,
    );
  }

  _Delete delete(
      {required WorkExperienceModel model,
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
const $WorkExperienceEvent = _$WorkExperienceEventTearOff();

/// @nodoc
mixin _$WorkExperienceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            WorkExperienceModel? model, int? index, Function onAdd)
        addWorkExperience,
    required TResult Function(
            WorkExperienceModel model, int index, Function onDelete)
        delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorkExperienceModel? model, int? index, Function onAdd)?
        addWorkExperience,
    TResult Function(WorkExperienceModel model, int index, Function onDelete)?
        delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddWorkExperience value) addWorkExperience,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddWorkExperience value)? addWorkExperience,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkExperienceEventCopyWith<$Res> {
  factory $WorkExperienceEventCopyWith(
          WorkExperienceEvent value, $Res Function(WorkExperienceEvent) then) =
      _$WorkExperienceEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WorkExperienceEventCopyWithImpl<$Res>
    implements $WorkExperienceEventCopyWith<$Res> {
  _$WorkExperienceEventCopyWithImpl(this._value, this._then);

  final WorkExperienceEvent _value;
  // ignore: unused_field
  final $Res Function(WorkExperienceEvent) _then;
}

/// @nodoc
abstract class _$AddWorkExperienceCopyWith<$Res> {
  factory _$AddWorkExperienceCopyWith(
          _AddWorkExperience value, $Res Function(_AddWorkExperience) then) =
      __$AddWorkExperienceCopyWithImpl<$Res>;
  $Res call({WorkExperienceModel? model, int? index, Function onAdd});
}

/// @nodoc
class __$AddWorkExperienceCopyWithImpl<$Res>
    extends _$WorkExperienceEventCopyWithImpl<$Res>
    implements _$AddWorkExperienceCopyWith<$Res> {
  __$AddWorkExperienceCopyWithImpl(
      _AddWorkExperience _value, $Res Function(_AddWorkExperience) _then)
      : super(_value, (v) => _then(v as _AddWorkExperience));

  @override
  _AddWorkExperience get _value => super._value as _AddWorkExperience;

  @override
  $Res call({
    Object? model = freezed,
    Object? index = freezed,
    Object? onAdd = freezed,
  }) {
    return _then(_AddWorkExperience(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as WorkExperienceModel?,
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

class _$_AddWorkExperience implements _AddWorkExperience {
  const _$_AddWorkExperience({this.model, this.index, required this.onAdd});

  @override
  final WorkExperienceModel? model;
  @override
  final int? index;
  @override
  final Function onAdd;

  @override
  String toString() {
    return 'WorkExperienceEvent.addWorkExperience(model: $model, index: $index, onAdd: $onAdd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddWorkExperience &&
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
  _$AddWorkExperienceCopyWith<_AddWorkExperience> get copyWith =>
      __$AddWorkExperienceCopyWithImpl<_AddWorkExperience>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            WorkExperienceModel? model, int? index, Function onAdd)
        addWorkExperience,
    required TResult Function(
            WorkExperienceModel model, int index, Function onDelete)
        delete,
  }) {
    return addWorkExperience(model, index, onAdd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorkExperienceModel? model, int? index, Function onAdd)?
        addWorkExperience,
    TResult Function(WorkExperienceModel model, int index, Function onDelete)?
        delete,
    required TResult orElse(),
  }) {
    if (addWorkExperience != null) {
      return addWorkExperience(model, index, onAdd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddWorkExperience value) addWorkExperience,
    required TResult Function(_Delete value) delete,
  }) {
    return addWorkExperience(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddWorkExperience value)? addWorkExperience,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (addWorkExperience != null) {
      return addWorkExperience(this);
    }
    return orElse();
  }
}

abstract class _AddWorkExperience implements WorkExperienceEvent {
  const factory _AddWorkExperience(
      {WorkExperienceModel? model,
      int? index,
      required Function onAdd}) = _$_AddWorkExperience;

  WorkExperienceModel? get model => throw _privateConstructorUsedError;
  int? get index => throw _privateConstructorUsedError;
  Function get onAdd => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddWorkExperienceCopyWith<_AddWorkExperience> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteCopyWith<$Res> {
  factory _$DeleteCopyWith(_Delete value, $Res Function(_Delete) then) =
      __$DeleteCopyWithImpl<$Res>;
  $Res call({WorkExperienceModel model, int index, Function onDelete});
}

/// @nodoc
class __$DeleteCopyWithImpl<$Res>
    extends _$WorkExperienceEventCopyWithImpl<$Res>
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
              as WorkExperienceModel,
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
  final WorkExperienceModel model;
  @override
  final int index;
  @override
  final Function onDelete;

  @override
  String toString() {
    return 'WorkExperienceEvent.delete(model: $model, index: $index, onDelete: $onDelete)';
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
            WorkExperienceModel? model, int? index, Function onAdd)
        addWorkExperience,
    required TResult Function(
            WorkExperienceModel model, int index, Function onDelete)
        delete,
  }) {
    return delete(model, index, onDelete);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorkExperienceModel? model, int? index, Function onAdd)?
        addWorkExperience,
    TResult Function(WorkExperienceModel model, int index, Function onDelete)?
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
    required TResult Function(_AddWorkExperience value) addWorkExperience,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddWorkExperience value)? addWorkExperience,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements WorkExperienceEvent {
  const factory _Delete(
      {required WorkExperienceModel model,
      required int index,
      required Function onDelete}) = _$_Delete;

  WorkExperienceModel get model => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  Function get onDelete => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteCopyWith<_Delete> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$WorkExperienceStateTearOff {
  const _$WorkExperienceStateTearOff();

  _WorkExperienceState call(
      {required bool isLoading,
      required bool isDeleteLoading,
      required bool isVisibilityLoading,
      required Option<Either<FirebaseFailure, String>> actionFailureOpt}) {
    return _WorkExperienceState(
      isLoading: isLoading,
      isDeleteLoading: isDeleteLoading,
      isVisibilityLoading: isVisibilityLoading,
      actionFailureOpt: actionFailureOpt,
    );
  }
}

/// @nodoc
const $WorkExperienceState = _$WorkExperienceStateTearOff();

/// @nodoc
mixin _$WorkExperienceState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isDeleteLoading => throw _privateConstructorUsedError;
  bool get isVisibilityLoading => throw _privateConstructorUsedError;
  Option<Either<FirebaseFailure, String>> get actionFailureOpt =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkExperienceStateCopyWith<WorkExperienceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkExperienceStateCopyWith<$Res> {
  factory $WorkExperienceStateCopyWith(
          WorkExperienceState value, $Res Function(WorkExperienceState) then) =
      _$WorkExperienceStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isDeleteLoading,
      bool isVisibilityLoading,
      Option<Either<FirebaseFailure, String>> actionFailureOpt});
}

/// @nodoc
class _$WorkExperienceStateCopyWithImpl<$Res>
    implements $WorkExperienceStateCopyWith<$Res> {
  _$WorkExperienceStateCopyWithImpl(this._value, this._then);

  final WorkExperienceState _value;
  // ignore: unused_field
  final $Res Function(WorkExperienceState) _then;

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
abstract class _$WorkExperienceStateCopyWith<$Res>
    implements $WorkExperienceStateCopyWith<$Res> {
  factory _$WorkExperienceStateCopyWith(_WorkExperienceState value,
          $Res Function(_WorkExperienceState) then) =
      __$WorkExperienceStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isDeleteLoading,
      bool isVisibilityLoading,
      Option<Either<FirebaseFailure, String>> actionFailureOpt});
}

/// @nodoc
class __$WorkExperienceStateCopyWithImpl<$Res>
    extends _$WorkExperienceStateCopyWithImpl<$Res>
    implements _$WorkExperienceStateCopyWith<$Res> {
  __$WorkExperienceStateCopyWithImpl(
      _WorkExperienceState _value, $Res Function(_WorkExperienceState) _then)
      : super(_value, (v) => _then(v as _WorkExperienceState));

  @override
  _WorkExperienceState get _value => super._value as _WorkExperienceState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isDeleteLoading = freezed,
    Object? isVisibilityLoading = freezed,
    Object? actionFailureOpt = freezed,
  }) {
    return _then(_WorkExperienceState(
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

class _$_WorkExperienceState implements _WorkExperienceState {
  const _$_WorkExperienceState(
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
    return 'WorkExperienceState(isLoading: $isLoading, isDeleteLoading: $isDeleteLoading, isVisibilityLoading: $isVisibilityLoading, actionFailureOpt: $actionFailureOpt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkExperienceState &&
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
  _$WorkExperienceStateCopyWith<_WorkExperienceState> get copyWith =>
      __$WorkExperienceStateCopyWithImpl<_WorkExperienceState>(
          this, _$identity);
}

abstract class _WorkExperienceState implements WorkExperienceState {
  const factory _WorkExperienceState(
          {required bool isLoading,
          required bool isDeleteLoading,
          required bool isVisibilityLoading,
          required Option<Either<FirebaseFailure, String>> actionFailureOpt}) =
      _$_WorkExperienceState;

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
  _$WorkExperienceStateCopyWith<_WorkExperienceState> get copyWith =>
      throw _privateConstructorUsedError;
}
