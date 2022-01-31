// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'campus_pors_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CampusPorsEventTearOff {
  const _$CampusPorsEventTearOff();

  _AddCampusPor addCampusPor(
      {CampusPorsModel? model, int? index, required Function onAdd}) {
    return _AddCampusPor(
      model: model,
      index: index,
      onAdd: onAdd,
    );
  }

  _Delete delete(
      {required CampusPorsModel model,
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
const $CampusPorsEvent = _$CampusPorsEventTearOff();

/// @nodoc
mixin _$CampusPorsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CampusPorsModel? model, int? index, Function onAdd)
        addCampusPor,
    required TResult Function(
            CampusPorsModel model, int index, Function onDelete)
        delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CampusPorsModel? model, int? index, Function onAdd)?
        addCampusPor,
    TResult Function(CampusPorsModel model, int index, Function onDelete)?
        delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCampusPor value) addCampusPor,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCampusPor value)? addCampusPor,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampusPorsEventCopyWith<$Res> {
  factory $CampusPorsEventCopyWith(
          CampusPorsEvent value, $Res Function(CampusPorsEvent) then) =
      _$CampusPorsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CampusPorsEventCopyWithImpl<$Res>
    implements $CampusPorsEventCopyWith<$Res> {
  _$CampusPorsEventCopyWithImpl(this._value, this._then);

  final CampusPorsEvent _value;
  // ignore: unused_field
  final $Res Function(CampusPorsEvent) _then;
}

/// @nodoc
abstract class _$AddCampusPorCopyWith<$Res> {
  factory _$AddCampusPorCopyWith(
          _AddCampusPor value, $Res Function(_AddCampusPor) then) =
      __$AddCampusPorCopyWithImpl<$Res>;
  $Res call({CampusPorsModel? model, int? index, Function onAdd});
}

/// @nodoc
class __$AddCampusPorCopyWithImpl<$Res>
    extends _$CampusPorsEventCopyWithImpl<$Res>
    implements _$AddCampusPorCopyWith<$Res> {
  __$AddCampusPorCopyWithImpl(
      _AddCampusPor _value, $Res Function(_AddCampusPor) _then)
      : super(_value, (v) => _then(v as _AddCampusPor));

  @override
  _AddCampusPor get _value => super._value as _AddCampusPor;

  @override
  $Res call({
    Object? model = freezed,
    Object? index = freezed,
    Object? onAdd = freezed,
  }) {
    return _then(_AddCampusPor(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CampusPorsModel?,
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

class _$_AddCampusPor implements _AddCampusPor {
  const _$_AddCampusPor({this.model, this.index, required this.onAdd});

  @override
  final CampusPorsModel? model;
  @override
  final int? index;
  @override
  final Function onAdd;

  @override
  String toString() {
    return 'CampusPorsEvent.addCampusPor(model: $model, index: $index, onAdd: $onAdd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddCampusPor &&
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
  _$AddCampusPorCopyWith<_AddCampusPor> get copyWith =>
      __$AddCampusPorCopyWithImpl<_AddCampusPor>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CampusPorsModel? model, int? index, Function onAdd)
        addCampusPor,
    required TResult Function(
            CampusPorsModel model, int index, Function onDelete)
        delete,
  }) {
    return addCampusPor(model, index, onAdd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CampusPorsModel? model, int? index, Function onAdd)?
        addCampusPor,
    TResult Function(CampusPorsModel model, int index, Function onDelete)?
        delete,
    required TResult orElse(),
  }) {
    if (addCampusPor != null) {
      return addCampusPor(model, index, onAdd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCampusPor value) addCampusPor,
    required TResult Function(_Delete value) delete,
  }) {
    return addCampusPor(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCampusPor value)? addCampusPor,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (addCampusPor != null) {
      return addCampusPor(this);
    }
    return orElse();
  }
}

abstract class _AddCampusPor implements CampusPorsEvent {
  const factory _AddCampusPor(
      {CampusPorsModel? model,
      int? index,
      required Function onAdd}) = _$_AddCampusPor;

  CampusPorsModel? get model => throw _privateConstructorUsedError;
  int? get index => throw _privateConstructorUsedError;
  Function get onAdd => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddCampusPorCopyWith<_AddCampusPor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteCopyWith<$Res> {
  factory _$DeleteCopyWith(_Delete value, $Res Function(_Delete) then) =
      __$DeleteCopyWithImpl<$Res>;
  $Res call({CampusPorsModel model, int index, Function onDelete});
}

/// @nodoc
class __$DeleteCopyWithImpl<$Res> extends _$CampusPorsEventCopyWithImpl<$Res>
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
              as CampusPorsModel,
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
  final CampusPorsModel model;
  @override
  final int index;
  @override
  final Function onDelete;

  @override
  String toString() {
    return 'CampusPorsEvent.delete(model: $model, index: $index, onDelete: $onDelete)';
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
            CampusPorsModel? model, int? index, Function onAdd)
        addCampusPor,
    required TResult Function(
            CampusPorsModel model, int index, Function onDelete)
        delete,
  }) {
    return delete(model, index, onDelete);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CampusPorsModel? model, int? index, Function onAdd)?
        addCampusPor,
    TResult Function(CampusPorsModel model, int index, Function onDelete)?
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
    required TResult Function(_AddCampusPor value) addCampusPor,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCampusPor value)? addCampusPor,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements CampusPorsEvent {
  const factory _Delete(
      {required CampusPorsModel model,
      required int index,
      required Function onDelete}) = _$_Delete;

  CampusPorsModel get model => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  Function get onDelete => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteCopyWith<_Delete> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CampusPorsStateTearOff {
  const _$CampusPorsStateTearOff();

  _CampusPorsState call(
      {required bool isLoading,
      required bool isDeleteLoading,
      required bool isVisibilityLoading,
      required Option<Either<FirebaseFailure, String>> actionFailureOpt}) {
    return _CampusPorsState(
      isLoading: isLoading,
      isDeleteLoading: isDeleteLoading,
      isVisibilityLoading: isVisibilityLoading,
      actionFailureOpt: actionFailureOpt,
    );
  }
}

/// @nodoc
const $CampusPorsState = _$CampusPorsStateTearOff();

/// @nodoc
mixin _$CampusPorsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isDeleteLoading => throw _privateConstructorUsedError;
  bool get isVisibilityLoading => throw _privateConstructorUsedError;
  Option<Either<FirebaseFailure, String>> get actionFailureOpt =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CampusPorsStateCopyWith<CampusPorsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampusPorsStateCopyWith<$Res> {
  factory $CampusPorsStateCopyWith(
          CampusPorsState value, $Res Function(CampusPorsState) then) =
      _$CampusPorsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isDeleteLoading,
      bool isVisibilityLoading,
      Option<Either<FirebaseFailure, String>> actionFailureOpt});
}

/// @nodoc
class _$CampusPorsStateCopyWithImpl<$Res>
    implements $CampusPorsStateCopyWith<$Res> {
  _$CampusPorsStateCopyWithImpl(this._value, this._then);

  final CampusPorsState _value;
  // ignore: unused_field
  final $Res Function(CampusPorsState) _then;

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
abstract class _$CampusPorsStateCopyWith<$Res>
    implements $CampusPorsStateCopyWith<$Res> {
  factory _$CampusPorsStateCopyWith(
          _CampusPorsState value, $Res Function(_CampusPorsState) then) =
      __$CampusPorsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isDeleteLoading,
      bool isVisibilityLoading,
      Option<Either<FirebaseFailure, String>> actionFailureOpt});
}

/// @nodoc
class __$CampusPorsStateCopyWithImpl<$Res>
    extends _$CampusPorsStateCopyWithImpl<$Res>
    implements _$CampusPorsStateCopyWith<$Res> {
  __$CampusPorsStateCopyWithImpl(
      _CampusPorsState _value, $Res Function(_CampusPorsState) _then)
      : super(_value, (v) => _then(v as _CampusPorsState));

  @override
  _CampusPorsState get _value => super._value as _CampusPorsState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isDeleteLoading = freezed,
    Object? isVisibilityLoading = freezed,
    Object? actionFailureOpt = freezed,
  }) {
    return _then(_CampusPorsState(
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

class _$_CampusPorsState implements _CampusPorsState {
  const _$_CampusPorsState(
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
    return 'CampusPorsState(isLoading: $isLoading, isDeleteLoading: $isDeleteLoading, isVisibilityLoading: $isVisibilityLoading, actionFailureOpt: $actionFailureOpt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CampusPorsState &&
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
  _$CampusPorsStateCopyWith<_CampusPorsState> get copyWith =>
      __$CampusPorsStateCopyWithImpl<_CampusPorsState>(this, _$identity);
}

abstract class _CampusPorsState implements CampusPorsState {
  const factory _CampusPorsState(
          {required bool isLoading,
          required bool isDeleteLoading,
          required bool isVisibilityLoading,
          required Option<Either<FirebaseFailure, String>> actionFailureOpt}) =
      _$_CampusPorsState;

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
  _$CampusPorsStateCopyWith<_CampusPorsState> get copyWith =>
      throw _privateConstructorUsedError;
}
