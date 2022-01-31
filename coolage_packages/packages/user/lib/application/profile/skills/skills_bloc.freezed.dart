// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'skills_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SkillsEventTearOff {
  const _$SkillsEventTearOff();

  _AddSkill addSkill(
      {required Map<String, SkillsModel> skillsMap, required Function onAdd}) {
    return _AddSkill(
      skillsMap: skillsMap,
      onAdd: onAdd,
    );
  }

  _ChangeSkillVisibility changeSkillVisibility(
      {required SkillsModel skillModel, required Function onChange}) {
    return _ChangeSkillVisibility(
      skillModel: skillModel,
      onChange: onChange,
    );
  }

  _Delete delete({required SkillsModel model, required Function onDelete}) {
    return _Delete(
      model: model,
      onDelete: onDelete,
    );
  }
}

/// @nodoc
const $SkillsEvent = _$SkillsEventTearOff();

/// @nodoc
mixin _$SkillsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Map<String, SkillsModel> skillsMap, Function onAdd)
        addSkill,
    required TResult Function(SkillsModel skillModel, Function onChange)
        changeSkillVisibility,
    required TResult Function(SkillsModel model, Function onDelete) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, SkillsModel> skillsMap, Function onAdd)?
        addSkill,
    TResult Function(SkillsModel skillModel, Function onChange)?
        changeSkillVisibility,
    TResult Function(SkillsModel model, Function onDelete)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddSkill value) addSkill,
    required TResult Function(_ChangeSkillVisibility value)
        changeSkillVisibility,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddSkill value)? addSkill,
    TResult Function(_ChangeSkillVisibility value)? changeSkillVisibility,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkillsEventCopyWith<$Res> {
  factory $SkillsEventCopyWith(
          SkillsEvent value, $Res Function(SkillsEvent) then) =
      _$SkillsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SkillsEventCopyWithImpl<$Res> implements $SkillsEventCopyWith<$Res> {
  _$SkillsEventCopyWithImpl(this._value, this._then);

  final SkillsEvent _value;
  // ignore: unused_field
  final $Res Function(SkillsEvent) _then;
}

/// @nodoc
abstract class _$AddSkillCopyWith<$Res> {
  factory _$AddSkillCopyWith(_AddSkill value, $Res Function(_AddSkill) then) =
      __$AddSkillCopyWithImpl<$Res>;
  $Res call({Map<String, SkillsModel> skillsMap, Function onAdd});
}

/// @nodoc
class __$AddSkillCopyWithImpl<$Res> extends _$SkillsEventCopyWithImpl<$Res>
    implements _$AddSkillCopyWith<$Res> {
  __$AddSkillCopyWithImpl(_AddSkill _value, $Res Function(_AddSkill) _then)
      : super(_value, (v) => _then(v as _AddSkill));

  @override
  _AddSkill get _value => super._value as _AddSkill;

  @override
  $Res call({
    Object? skillsMap = freezed,
    Object? onAdd = freezed,
  }) {
    return _then(_AddSkill(
      skillsMap: skillsMap == freezed
          ? _value.skillsMap
          : skillsMap // ignore: cast_nullable_to_non_nullable
              as Map<String, SkillsModel>,
      onAdd: onAdd == freezed
          ? _value.onAdd
          : onAdd // ignore: cast_nullable_to_non_nullable
              as Function,
    ));
  }
}

/// @nodoc

class _$_AddSkill implements _AddSkill {
  const _$_AddSkill({required this.skillsMap, required this.onAdd});

  @override
  final Map<String, SkillsModel> skillsMap;
  @override
  final Function onAdd;

  @override
  String toString() {
    return 'SkillsEvent.addSkill(skillsMap: $skillsMap, onAdd: $onAdd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddSkill &&
            (identical(other.skillsMap, skillsMap) ||
                const DeepCollectionEquality()
                    .equals(other.skillsMap, skillsMap)) &&
            (identical(other.onAdd, onAdd) ||
                const DeepCollectionEquality().equals(other.onAdd, onAdd)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(skillsMap) ^
      const DeepCollectionEquality().hash(onAdd);

  @JsonKey(ignore: true)
  @override
  _$AddSkillCopyWith<_AddSkill> get copyWith =>
      __$AddSkillCopyWithImpl<_AddSkill>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Map<String, SkillsModel> skillsMap, Function onAdd)
        addSkill,
    required TResult Function(SkillsModel skillModel, Function onChange)
        changeSkillVisibility,
    required TResult Function(SkillsModel model, Function onDelete) delete,
  }) {
    return addSkill(skillsMap, onAdd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, SkillsModel> skillsMap, Function onAdd)?
        addSkill,
    TResult Function(SkillsModel skillModel, Function onChange)?
        changeSkillVisibility,
    TResult Function(SkillsModel model, Function onDelete)? delete,
    required TResult orElse(),
  }) {
    if (addSkill != null) {
      return addSkill(skillsMap, onAdd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddSkill value) addSkill,
    required TResult Function(_ChangeSkillVisibility value)
        changeSkillVisibility,
    required TResult Function(_Delete value) delete,
  }) {
    return addSkill(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddSkill value)? addSkill,
    TResult Function(_ChangeSkillVisibility value)? changeSkillVisibility,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (addSkill != null) {
      return addSkill(this);
    }
    return orElse();
  }
}

abstract class _AddSkill implements SkillsEvent {
  const factory _AddSkill(
      {required Map<String, SkillsModel> skillsMap,
      required Function onAdd}) = _$_AddSkill;

  Map<String, SkillsModel> get skillsMap => throw _privateConstructorUsedError;
  Function get onAdd => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddSkillCopyWith<_AddSkill> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeSkillVisibilityCopyWith<$Res> {
  factory _$ChangeSkillVisibilityCopyWith(_ChangeSkillVisibility value,
          $Res Function(_ChangeSkillVisibility) then) =
      __$ChangeSkillVisibilityCopyWithImpl<$Res>;
  $Res call({SkillsModel skillModel, Function onChange});
}

/// @nodoc
class __$ChangeSkillVisibilityCopyWithImpl<$Res>
    extends _$SkillsEventCopyWithImpl<$Res>
    implements _$ChangeSkillVisibilityCopyWith<$Res> {
  __$ChangeSkillVisibilityCopyWithImpl(_ChangeSkillVisibility _value,
      $Res Function(_ChangeSkillVisibility) _then)
      : super(_value, (v) => _then(v as _ChangeSkillVisibility));

  @override
  _ChangeSkillVisibility get _value => super._value as _ChangeSkillVisibility;

  @override
  $Res call({
    Object? skillModel = freezed,
    Object? onChange = freezed,
  }) {
    return _then(_ChangeSkillVisibility(
      skillModel: skillModel == freezed
          ? _value.skillModel
          : skillModel // ignore: cast_nullable_to_non_nullable
              as SkillsModel,
      onChange: onChange == freezed
          ? _value.onChange
          : onChange // ignore: cast_nullable_to_non_nullable
              as Function,
    ));
  }
}

/// @nodoc

class _$_ChangeSkillVisibility implements _ChangeSkillVisibility {
  const _$_ChangeSkillVisibility(
      {required this.skillModel, required this.onChange});

  @override
  final SkillsModel skillModel;
  @override
  final Function onChange;

  @override
  String toString() {
    return 'SkillsEvent.changeSkillVisibility(skillModel: $skillModel, onChange: $onChange)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeSkillVisibility &&
            (identical(other.skillModel, skillModel) ||
                const DeepCollectionEquality()
                    .equals(other.skillModel, skillModel)) &&
            (identical(other.onChange, onChange) ||
                const DeepCollectionEquality()
                    .equals(other.onChange, onChange)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(skillModel) ^
      const DeepCollectionEquality().hash(onChange);

  @JsonKey(ignore: true)
  @override
  _$ChangeSkillVisibilityCopyWith<_ChangeSkillVisibility> get copyWith =>
      __$ChangeSkillVisibilityCopyWithImpl<_ChangeSkillVisibility>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Map<String, SkillsModel> skillsMap, Function onAdd)
        addSkill,
    required TResult Function(SkillsModel skillModel, Function onChange)
        changeSkillVisibility,
    required TResult Function(SkillsModel model, Function onDelete) delete,
  }) {
    return changeSkillVisibility(skillModel, onChange);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, SkillsModel> skillsMap, Function onAdd)?
        addSkill,
    TResult Function(SkillsModel skillModel, Function onChange)?
        changeSkillVisibility,
    TResult Function(SkillsModel model, Function onDelete)? delete,
    required TResult orElse(),
  }) {
    if (changeSkillVisibility != null) {
      return changeSkillVisibility(skillModel, onChange);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddSkill value) addSkill,
    required TResult Function(_ChangeSkillVisibility value)
        changeSkillVisibility,
    required TResult Function(_Delete value) delete,
  }) {
    return changeSkillVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddSkill value)? addSkill,
    TResult Function(_ChangeSkillVisibility value)? changeSkillVisibility,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (changeSkillVisibility != null) {
      return changeSkillVisibility(this);
    }
    return orElse();
  }
}

abstract class _ChangeSkillVisibility implements SkillsEvent {
  const factory _ChangeSkillVisibility(
      {required SkillsModel skillModel,
      required Function onChange}) = _$_ChangeSkillVisibility;

  SkillsModel get skillModel => throw _privateConstructorUsedError;
  Function get onChange => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeSkillVisibilityCopyWith<_ChangeSkillVisibility> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteCopyWith<$Res> {
  factory _$DeleteCopyWith(_Delete value, $Res Function(_Delete) then) =
      __$DeleteCopyWithImpl<$Res>;
  $Res call({SkillsModel model, Function onDelete});
}

/// @nodoc
class __$DeleteCopyWithImpl<$Res> extends _$SkillsEventCopyWithImpl<$Res>
    implements _$DeleteCopyWith<$Res> {
  __$DeleteCopyWithImpl(_Delete _value, $Res Function(_Delete) _then)
      : super(_value, (v) => _then(v as _Delete));

  @override
  _Delete get _value => super._value as _Delete;

  @override
  $Res call({
    Object? model = freezed,
    Object? onDelete = freezed,
  }) {
    return _then(_Delete(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as SkillsModel,
      onDelete: onDelete == freezed
          ? _value.onDelete
          : onDelete // ignore: cast_nullable_to_non_nullable
              as Function,
    ));
  }
}

/// @nodoc

class _$_Delete implements _Delete {
  const _$_Delete({required this.model, required this.onDelete});

  @override
  final SkillsModel model;
  @override
  final Function onDelete;

  @override
  String toString() {
    return 'SkillsEvent.delete(model: $model, onDelete: $onDelete)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Delete &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)) &&
            (identical(other.onDelete, onDelete) ||
                const DeepCollectionEquality()
                    .equals(other.onDelete, onDelete)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(model) ^
      const DeepCollectionEquality().hash(onDelete);

  @JsonKey(ignore: true)
  @override
  _$DeleteCopyWith<_Delete> get copyWith =>
      __$DeleteCopyWithImpl<_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Map<String, SkillsModel> skillsMap, Function onAdd)
        addSkill,
    required TResult Function(SkillsModel skillModel, Function onChange)
        changeSkillVisibility,
    required TResult Function(SkillsModel model, Function onDelete) delete,
  }) {
    return delete(model, onDelete);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, SkillsModel> skillsMap, Function onAdd)?
        addSkill,
    TResult Function(SkillsModel skillModel, Function onChange)?
        changeSkillVisibility,
    TResult Function(SkillsModel model, Function onDelete)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(model, onDelete);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddSkill value) addSkill,
    required TResult Function(_ChangeSkillVisibility value)
        changeSkillVisibility,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddSkill value)? addSkill,
    TResult Function(_ChangeSkillVisibility value)? changeSkillVisibility,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements SkillsEvent {
  const factory _Delete(
      {required SkillsModel model, required Function onDelete}) = _$_Delete;

  SkillsModel get model => throw _privateConstructorUsedError;
  Function get onDelete => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteCopyWith<_Delete> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$SkillsStateTearOff {
  const _$SkillsStateTearOff();

  _SkillsState call(
      {required bool isLoading,
      required bool isDeleteLoading,
      required bool isVisibilityLoading,
      required Option<Either<FirebaseFailure, String>> actionFailureOpt}) {
    return _SkillsState(
      isLoading: isLoading,
      isDeleteLoading: isDeleteLoading,
      isVisibilityLoading: isVisibilityLoading,
      actionFailureOpt: actionFailureOpt,
    );
  }
}

/// @nodoc
const $SkillsState = _$SkillsStateTearOff();

/// @nodoc
mixin _$SkillsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isDeleteLoading => throw _privateConstructorUsedError;
  bool get isVisibilityLoading => throw _privateConstructorUsedError;
  Option<Either<FirebaseFailure, String>> get actionFailureOpt =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SkillsStateCopyWith<SkillsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkillsStateCopyWith<$Res> {
  factory $SkillsStateCopyWith(
          SkillsState value, $Res Function(SkillsState) then) =
      _$SkillsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isDeleteLoading,
      bool isVisibilityLoading,
      Option<Either<FirebaseFailure, String>> actionFailureOpt});
}

/// @nodoc
class _$SkillsStateCopyWithImpl<$Res> implements $SkillsStateCopyWith<$Res> {
  _$SkillsStateCopyWithImpl(this._value, this._then);

  final SkillsState _value;
  // ignore: unused_field
  final $Res Function(SkillsState) _then;

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
abstract class _$SkillsStateCopyWith<$Res>
    implements $SkillsStateCopyWith<$Res> {
  factory _$SkillsStateCopyWith(
          _SkillsState value, $Res Function(_SkillsState) then) =
      __$SkillsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isDeleteLoading,
      bool isVisibilityLoading,
      Option<Either<FirebaseFailure, String>> actionFailureOpt});
}

/// @nodoc
class __$SkillsStateCopyWithImpl<$Res> extends _$SkillsStateCopyWithImpl<$Res>
    implements _$SkillsStateCopyWith<$Res> {
  __$SkillsStateCopyWithImpl(
      _SkillsState _value, $Res Function(_SkillsState) _then)
      : super(_value, (v) => _then(v as _SkillsState));

  @override
  _SkillsState get _value => super._value as _SkillsState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isDeleteLoading = freezed,
    Object? isVisibilityLoading = freezed,
    Object? actionFailureOpt = freezed,
  }) {
    return _then(_SkillsState(
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

class _$_SkillsState implements _SkillsState {
  const _$_SkillsState(
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
    return 'SkillsState(isLoading: $isLoading, isDeleteLoading: $isDeleteLoading, isVisibilityLoading: $isVisibilityLoading, actionFailureOpt: $actionFailureOpt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SkillsState &&
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
  _$SkillsStateCopyWith<_SkillsState> get copyWith =>
      __$SkillsStateCopyWithImpl<_SkillsState>(this, _$identity);
}

abstract class _SkillsState implements SkillsState {
  const factory _SkillsState(
          {required bool isLoading,
          required bool isDeleteLoading,
          required bool isVisibilityLoading,
          required Option<Either<FirebaseFailure, String>> actionFailureOpt}) =
      _$_SkillsState;

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
  _$SkillsStateCopyWith<_SkillsState> get copyWith =>
      throw _privateConstructorUsedError;
}
