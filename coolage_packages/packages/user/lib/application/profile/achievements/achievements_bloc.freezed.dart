// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'achievements_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AchievementsEventTearOff {
  const _$AchievementsEventTearOff();

  _AddAchievement addAchievement(
      {AchievementsModel? model, int? index, required Function onAdd}) {
    return _AddAchievement(
      model: model,
      index: index,
      onAdd: onAdd,
    );
  }

  _Delete delete(
      {required AchievementsModel model,
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
const $AchievementsEvent = _$AchievementsEventTearOff();

/// @nodoc
mixin _$AchievementsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AchievementsModel? model, int? index, Function onAdd)
        addAchievement,
    required TResult Function(
            AchievementsModel model, int index, Function onDelete)
        delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AchievementsModel? model, int? index, Function onAdd)?
        addAchievement,
    TResult Function(AchievementsModel model, int index, Function onDelete)?
        delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddAchievement value) addAchievement,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddAchievement value)? addAchievement,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AchievementsEventCopyWith<$Res> {
  factory $AchievementsEventCopyWith(
          AchievementsEvent value, $Res Function(AchievementsEvent) then) =
      _$AchievementsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AchievementsEventCopyWithImpl<$Res>
    implements $AchievementsEventCopyWith<$Res> {
  _$AchievementsEventCopyWithImpl(this._value, this._then);

  final AchievementsEvent _value;
  // ignore: unused_field
  final $Res Function(AchievementsEvent) _then;
}

/// @nodoc
abstract class _$AddAchievementCopyWith<$Res> {
  factory _$AddAchievementCopyWith(
          _AddAchievement value, $Res Function(_AddAchievement) then) =
      __$AddAchievementCopyWithImpl<$Res>;
  $Res call({AchievementsModel? model, int? index, Function onAdd});
}

/// @nodoc
class __$AddAchievementCopyWithImpl<$Res>
    extends _$AchievementsEventCopyWithImpl<$Res>
    implements _$AddAchievementCopyWith<$Res> {
  __$AddAchievementCopyWithImpl(
      _AddAchievement _value, $Res Function(_AddAchievement) _then)
      : super(_value, (v) => _then(v as _AddAchievement));

  @override
  _AddAchievement get _value => super._value as _AddAchievement;

  @override
  $Res call({
    Object? model = freezed,
    Object? index = freezed,
    Object? onAdd = freezed,
  }) {
    return _then(_AddAchievement(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as AchievementsModel?,
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

class _$_AddAchievement implements _AddAchievement {
  const _$_AddAchievement({this.model, this.index, required this.onAdd});

  @override
  final AchievementsModel? model;
  @override
  final int? index;
  @override
  final Function onAdd;

  @override
  String toString() {
    return 'AchievementsEvent.addAchievement(model: $model, index: $index, onAdd: $onAdd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddAchievement &&
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
  _$AddAchievementCopyWith<_AddAchievement> get copyWith =>
      __$AddAchievementCopyWithImpl<_AddAchievement>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AchievementsModel? model, int? index, Function onAdd)
        addAchievement,
    required TResult Function(
            AchievementsModel model, int index, Function onDelete)
        delete,
  }) {
    return addAchievement(model, index, onAdd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AchievementsModel? model, int? index, Function onAdd)?
        addAchievement,
    TResult Function(AchievementsModel model, int index, Function onDelete)?
        delete,
    required TResult orElse(),
  }) {
    if (addAchievement != null) {
      return addAchievement(model, index, onAdd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddAchievement value) addAchievement,
    required TResult Function(_Delete value) delete,
  }) {
    return addAchievement(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddAchievement value)? addAchievement,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (addAchievement != null) {
      return addAchievement(this);
    }
    return orElse();
  }
}

abstract class _AddAchievement implements AchievementsEvent {
  const factory _AddAchievement(
      {AchievementsModel? model,
      int? index,
      required Function onAdd}) = _$_AddAchievement;

  AchievementsModel? get model => throw _privateConstructorUsedError;
  int? get index => throw _privateConstructorUsedError;
  Function get onAdd => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddAchievementCopyWith<_AddAchievement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteCopyWith<$Res> {
  factory _$DeleteCopyWith(_Delete value, $Res Function(_Delete) then) =
      __$DeleteCopyWithImpl<$Res>;
  $Res call({AchievementsModel model, int index, Function onDelete});
}

/// @nodoc
class __$DeleteCopyWithImpl<$Res> extends _$AchievementsEventCopyWithImpl<$Res>
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
              as AchievementsModel,
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
  final AchievementsModel model;
  @override
  final int index;
  @override
  final Function onDelete;

  @override
  String toString() {
    return 'AchievementsEvent.delete(model: $model, index: $index, onDelete: $onDelete)';
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
            AchievementsModel? model, int? index, Function onAdd)
        addAchievement,
    required TResult Function(
            AchievementsModel model, int index, Function onDelete)
        delete,
  }) {
    return delete(model, index, onDelete);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AchievementsModel? model, int? index, Function onAdd)?
        addAchievement,
    TResult Function(AchievementsModel model, int index, Function onDelete)?
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
    required TResult Function(_AddAchievement value) addAchievement,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddAchievement value)? addAchievement,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements AchievementsEvent {
  const factory _Delete(
      {required AchievementsModel model,
      required int index,
      required Function onDelete}) = _$_Delete;

  AchievementsModel get model => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  Function get onDelete => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteCopyWith<_Delete> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$AchievementsStateTearOff {
  const _$AchievementsStateTearOff();

  _AchievementsState call(
      {required bool isLoading,
      required bool isDeleteLoading,
      required bool isVisibilityLoading,
      required Option<Either<FirebaseFailure, String>> actionFailureOpt}) {
    return _AchievementsState(
      isLoading: isLoading,
      isDeleteLoading: isDeleteLoading,
      isVisibilityLoading: isVisibilityLoading,
      actionFailureOpt: actionFailureOpt,
    );
  }
}

/// @nodoc
const $AchievementsState = _$AchievementsStateTearOff();

/// @nodoc
mixin _$AchievementsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isDeleteLoading => throw _privateConstructorUsedError;
  bool get isVisibilityLoading => throw _privateConstructorUsedError;
  Option<Either<FirebaseFailure, String>> get actionFailureOpt =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AchievementsStateCopyWith<AchievementsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AchievementsStateCopyWith<$Res> {
  factory $AchievementsStateCopyWith(
          AchievementsState value, $Res Function(AchievementsState) then) =
      _$AchievementsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isDeleteLoading,
      bool isVisibilityLoading,
      Option<Either<FirebaseFailure, String>> actionFailureOpt});
}

/// @nodoc
class _$AchievementsStateCopyWithImpl<$Res>
    implements $AchievementsStateCopyWith<$Res> {
  _$AchievementsStateCopyWithImpl(this._value, this._then);

  final AchievementsState _value;
  // ignore: unused_field
  final $Res Function(AchievementsState) _then;

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
abstract class _$AchievementsStateCopyWith<$Res>
    implements $AchievementsStateCopyWith<$Res> {
  factory _$AchievementsStateCopyWith(
          _AchievementsState value, $Res Function(_AchievementsState) then) =
      __$AchievementsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isDeleteLoading,
      bool isVisibilityLoading,
      Option<Either<FirebaseFailure, String>> actionFailureOpt});
}

/// @nodoc
class __$AchievementsStateCopyWithImpl<$Res>
    extends _$AchievementsStateCopyWithImpl<$Res>
    implements _$AchievementsStateCopyWith<$Res> {
  __$AchievementsStateCopyWithImpl(
      _AchievementsState _value, $Res Function(_AchievementsState) _then)
      : super(_value, (v) => _then(v as _AchievementsState));

  @override
  _AchievementsState get _value => super._value as _AchievementsState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isDeleteLoading = freezed,
    Object? isVisibilityLoading = freezed,
    Object? actionFailureOpt = freezed,
  }) {
    return _then(_AchievementsState(
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

class _$_AchievementsState implements _AchievementsState {
  const _$_AchievementsState(
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
    return 'AchievementsState(isLoading: $isLoading, isDeleteLoading: $isDeleteLoading, isVisibilityLoading: $isVisibilityLoading, actionFailureOpt: $actionFailureOpt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AchievementsState &&
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
  _$AchievementsStateCopyWith<_AchievementsState> get copyWith =>
      __$AchievementsStateCopyWithImpl<_AchievementsState>(this, _$identity);
}

abstract class _AchievementsState implements AchievementsState {
  const factory _AchievementsState(
          {required bool isLoading,
          required bool isDeleteLoading,
          required bool isVisibilityLoading,
          required Option<Either<FirebaseFailure, String>> actionFailureOpt}) =
      _$_AchievementsState;

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
  _$AchievementsStateCopyWith<_AchievementsState> get copyWith =>
      throw _privateConstructorUsedError;
}
