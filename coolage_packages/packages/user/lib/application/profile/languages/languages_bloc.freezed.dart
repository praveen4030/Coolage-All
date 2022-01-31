// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'languages_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LanguagesEventTearOff {
  const _$LanguagesEventTearOff();

  _AddLanguage addLanguage(
      {required Map<String, LanguageModel> languagesMap,
      required Function onAdd}) {
    return _AddLanguage(
      languagesMap: languagesMap,
      onAdd: onAdd,
    );
  }

  _ChangeLanguageVisibility changeLanguageVisibility(
      {required LanguageModel languageModel, required Function onChange}) {
    return _ChangeLanguageVisibility(
      languageModel: languageModel,
      onChange: onChange,
    );
  }

  _Delete delete({required LanguageModel model, required Function onDelete}) {
    return _Delete(
      model: model,
      onDelete: onDelete,
    );
  }
}

/// @nodoc
const $LanguagesEvent = _$LanguagesEventTearOff();

/// @nodoc
mixin _$LanguagesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Map<String, LanguageModel> languagesMap, Function onAdd)
        addLanguage,
    required TResult Function(LanguageModel languageModel, Function onChange)
        changeLanguageVisibility,
    required TResult Function(LanguageModel model, Function onDelete) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, LanguageModel> languagesMap, Function onAdd)?
        addLanguage,
    TResult Function(LanguageModel languageModel, Function onChange)?
        changeLanguageVisibility,
    TResult Function(LanguageModel model, Function onDelete)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddLanguage value) addLanguage,
    required TResult Function(_ChangeLanguageVisibility value)
        changeLanguageVisibility,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddLanguage value)? addLanguage,
    TResult Function(_ChangeLanguageVisibility value)? changeLanguageVisibility,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguagesEventCopyWith<$Res> {
  factory $LanguagesEventCopyWith(
          LanguagesEvent value, $Res Function(LanguagesEvent) then) =
      _$LanguagesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LanguagesEventCopyWithImpl<$Res>
    implements $LanguagesEventCopyWith<$Res> {
  _$LanguagesEventCopyWithImpl(this._value, this._then);

  final LanguagesEvent _value;
  // ignore: unused_field
  final $Res Function(LanguagesEvent) _then;
}

/// @nodoc
abstract class _$AddLanguageCopyWith<$Res> {
  factory _$AddLanguageCopyWith(
          _AddLanguage value, $Res Function(_AddLanguage) then) =
      __$AddLanguageCopyWithImpl<$Res>;
  $Res call({Map<String, LanguageModel> languagesMap, Function onAdd});
}

/// @nodoc
class __$AddLanguageCopyWithImpl<$Res>
    extends _$LanguagesEventCopyWithImpl<$Res>
    implements _$AddLanguageCopyWith<$Res> {
  __$AddLanguageCopyWithImpl(
      _AddLanguage _value, $Res Function(_AddLanguage) _then)
      : super(_value, (v) => _then(v as _AddLanguage));

  @override
  _AddLanguage get _value => super._value as _AddLanguage;

  @override
  $Res call({
    Object? languagesMap = freezed,
    Object? onAdd = freezed,
  }) {
    return _then(_AddLanguage(
      languagesMap: languagesMap == freezed
          ? _value.languagesMap
          : languagesMap // ignore: cast_nullable_to_non_nullable
              as Map<String, LanguageModel>,
      onAdd: onAdd == freezed
          ? _value.onAdd
          : onAdd // ignore: cast_nullable_to_non_nullable
              as Function,
    ));
  }
}

/// @nodoc

class _$_AddLanguage implements _AddLanguage {
  const _$_AddLanguage({required this.languagesMap, required this.onAdd});

  @override
  final Map<String, LanguageModel> languagesMap;
  @override
  final Function onAdd;

  @override
  String toString() {
    return 'LanguagesEvent.addLanguage(languagesMap: $languagesMap, onAdd: $onAdd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddLanguage &&
            (identical(other.languagesMap, languagesMap) ||
                const DeepCollectionEquality()
                    .equals(other.languagesMap, languagesMap)) &&
            (identical(other.onAdd, onAdd) ||
                const DeepCollectionEquality().equals(other.onAdd, onAdd)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(languagesMap) ^
      const DeepCollectionEquality().hash(onAdd);

  @JsonKey(ignore: true)
  @override
  _$AddLanguageCopyWith<_AddLanguage> get copyWith =>
      __$AddLanguageCopyWithImpl<_AddLanguage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Map<String, LanguageModel> languagesMap, Function onAdd)
        addLanguage,
    required TResult Function(LanguageModel languageModel, Function onChange)
        changeLanguageVisibility,
    required TResult Function(LanguageModel model, Function onDelete) delete,
  }) {
    return addLanguage(languagesMap, onAdd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, LanguageModel> languagesMap, Function onAdd)?
        addLanguage,
    TResult Function(LanguageModel languageModel, Function onChange)?
        changeLanguageVisibility,
    TResult Function(LanguageModel model, Function onDelete)? delete,
    required TResult orElse(),
  }) {
    if (addLanguage != null) {
      return addLanguage(languagesMap, onAdd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddLanguage value) addLanguage,
    required TResult Function(_ChangeLanguageVisibility value)
        changeLanguageVisibility,
    required TResult Function(_Delete value) delete,
  }) {
    return addLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddLanguage value)? addLanguage,
    TResult Function(_ChangeLanguageVisibility value)? changeLanguageVisibility,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (addLanguage != null) {
      return addLanguage(this);
    }
    return orElse();
  }
}

abstract class _AddLanguage implements LanguagesEvent {
  const factory _AddLanguage(
      {required Map<String, LanguageModel> languagesMap,
      required Function onAdd}) = _$_AddLanguage;

  Map<String, LanguageModel> get languagesMap =>
      throw _privateConstructorUsedError;
  Function get onAdd => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddLanguageCopyWith<_AddLanguage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeLanguageVisibilityCopyWith<$Res> {
  factory _$ChangeLanguageVisibilityCopyWith(_ChangeLanguageVisibility value,
          $Res Function(_ChangeLanguageVisibility) then) =
      __$ChangeLanguageVisibilityCopyWithImpl<$Res>;
  $Res call({LanguageModel languageModel, Function onChange});
}

/// @nodoc
class __$ChangeLanguageVisibilityCopyWithImpl<$Res>
    extends _$LanguagesEventCopyWithImpl<$Res>
    implements _$ChangeLanguageVisibilityCopyWith<$Res> {
  __$ChangeLanguageVisibilityCopyWithImpl(_ChangeLanguageVisibility _value,
      $Res Function(_ChangeLanguageVisibility) _then)
      : super(_value, (v) => _then(v as _ChangeLanguageVisibility));

  @override
  _ChangeLanguageVisibility get _value =>
      super._value as _ChangeLanguageVisibility;

  @override
  $Res call({
    Object? languageModel = freezed,
    Object? onChange = freezed,
  }) {
    return _then(_ChangeLanguageVisibility(
      languageModel: languageModel == freezed
          ? _value.languageModel
          : languageModel // ignore: cast_nullable_to_non_nullable
              as LanguageModel,
      onChange: onChange == freezed
          ? _value.onChange
          : onChange // ignore: cast_nullable_to_non_nullable
              as Function,
    ));
  }
}

/// @nodoc

class _$_ChangeLanguageVisibility implements _ChangeLanguageVisibility {
  const _$_ChangeLanguageVisibility(
      {required this.languageModel, required this.onChange});

  @override
  final LanguageModel languageModel;
  @override
  final Function onChange;

  @override
  String toString() {
    return 'LanguagesEvent.changeLanguageVisibility(languageModel: $languageModel, onChange: $onChange)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeLanguageVisibility &&
            (identical(other.languageModel, languageModel) ||
                const DeepCollectionEquality()
                    .equals(other.languageModel, languageModel)) &&
            (identical(other.onChange, onChange) ||
                const DeepCollectionEquality()
                    .equals(other.onChange, onChange)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(languageModel) ^
      const DeepCollectionEquality().hash(onChange);

  @JsonKey(ignore: true)
  @override
  _$ChangeLanguageVisibilityCopyWith<_ChangeLanguageVisibility> get copyWith =>
      __$ChangeLanguageVisibilityCopyWithImpl<_ChangeLanguageVisibility>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Map<String, LanguageModel> languagesMap, Function onAdd)
        addLanguage,
    required TResult Function(LanguageModel languageModel, Function onChange)
        changeLanguageVisibility,
    required TResult Function(LanguageModel model, Function onDelete) delete,
  }) {
    return changeLanguageVisibility(languageModel, onChange);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, LanguageModel> languagesMap, Function onAdd)?
        addLanguage,
    TResult Function(LanguageModel languageModel, Function onChange)?
        changeLanguageVisibility,
    TResult Function(LanguageModel model, Function onDelete)? delete,
    required TResult orElse(),
  }) {
    if (changeLanguageVisibility != null) {
      return changeLanguageVisibility(languageModel, onChange);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddLanguage value) addLanguage,
    required TResult Function(_ChangeLanguageVisibility value)
        changeLanguageVisibility,
    required TResult Function(_Delete value) delete,
  }) {
    return changeLanguageVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddLanguage value)? addLanguage,
    TResult Function(_ChangeLanguageVisibility value)? changeLanguageVisibility,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (changeLanguageVisibility != null) {
      return changeLanguageVisibility(this);
    }
    return orElse();
  }
}

abstract class _ChangeLanguageVisibility implements LanguagesEvent {
  const factory _ChangeLanguageVisibility(
      {required LanguageModel languageModel,
      required Function onChange}) = _$_ChangeLanguageVisibility;

  LanguageModel get languageModel => throw _privateConstructorUsedError;
  Function get onChange => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeLanguageVisibilityCopyWith<_ChangeLanguageVisibility> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteCopyWith<$Res> {
  factory _$DeleteCopyWith(_Delete value, $Res Function(_Delete) then) =
      __$DeleteCopyWithImpl<$Res>;
  $Res call({LanguageModel model, Function onDelete});
}

/// @nodoc
class __$DeleteCopyWithImpl<$Res> extends _$LanguagesEventCopyWithImpl<$Res>
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
              as LanguageModel,
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
  final LanguageModel model;
  @override
  final Function onDelete;

  @override
  String toString() {
    return 'LanguagesEvent.delete(model: $model, onDelete: $onDelete)';
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
            Map<String, LanguageModel> languagesMap, Function onAdd)
        addLanguage,
    required TResult Function(LanguageModel languageModel, Function onChange)
        changeLanguageVisibility,
    required TResult Function(LanguageModel model, Function onDelete) delete,
  }) {
    return delete(model, onDelete);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, LanguageModel> languagesMap, Function onAdd)?
        addLanguage,
    TResult Function(LanguageModel languageModel, Function onChange)?
        changeLanguageVisibility,
    TResult Function(LanguageModel model, Function onDelete)? delete,
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
    required TResult Function(_AddLanguage value) addLanguage,
    required TResult Function(_ChangeLanguageVisibility value)
        changeLanguageVisibility,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddLanguage value)? addLanguage,
    TResult Function(_ChangeLanguageVisibility value)? changeLanguageVisibility,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements LanguagesEvent {
  const factory _Delete(
      {required LanguageModel model, required Function onDelete}) = _$_Delete;

  LanguageModel get model => throw _privateConstructorUsedError;
  Function get onDelete => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteCopyWith<_Delete> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$LanguagesStateTearOff {
  const _$LanguagesStateTearOff();

  _LanguagesState call(
      {required bool isLoading,
      required bool isDeleteLoading,
      required bool isVisibilityLoading,
      required Option<Either<FirebaseFailure, String>> actionFailureOpt}) {
    return _LanguagesState(
      isLoading: isLoading,
      isDeleteLoading: isDeleteLoading,
      isVisibilityLoading: isVisibilityLoading,
      actionFailureOpt: actionFailureOpt,
    );
  }
}

/// @nodoc
const $LanguagesState = _$LanguagesStateTearOff();

/// @nodoc
mixin _$LanguagesState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isDeleteLoading => throw _privateConstructorUsedError;
  bool get isVisibilityLoading => throw _privateConstructorUsedError;
  Option<Either<FirebaseFailure, String>> get actionFailureOpt =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LanguagesStateCopyWith<LanguagesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguagesStateCopyWith<$Res> {
  factory $LanguagesStateCopyWith(
          LanguagesState value, $Res Function(LanguagesState) then) =
      _$LanguagesStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isDeleteLoading,
      bool isVisibilityLoading,
      Option<Either<FirebaseFailure, String>> actionFailureOpt});
}

/// @nodoc
class _$LanguagesStateCopyWithImpl<$Res>
    implements $LanguagesStateCopyWith<$Res> {
  _$LanguagesStateCopyWithImpl(this._value, this._then);

  final LanguagesState _value;
  // ignore: unused_field
  final $Res Function(LanguagesState) _then;

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
abstract class _$LanguagesStateCopyWith<$Res>
    implements $LanguagesStateCopyWith<$Res> {
  factory _$LanguagesStateCopyWith(
          _LanguagesState value, $Res Function(_LanguagesState) then) =
      __$LanguagesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isDeleteLoading,
      bool isVisibilityLoading,
      Option<Either<FirebaseFailure, String>> actionFailureOpt});
}

/// @nodoc
class __$LanguagesStateCopyWithImpl<$Res>
    extends _$LanguagesStateCopyWithImpl<$Res>
    implements _$LanguagesStateCopyWith<$Res> {
  __$LanguagesStateCopyWithImpl(
      _LanguagesState _value, $Res Function(_LanguagesState) _then)
      : super(_value, (v) => _then(v as _LanguagesState));

  @override
  _LanguagesState get _value => super._value as _LanguagesState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isDeleteLoading = freezed,
    Object? isVisibilityLoading = freezed,
    Object? actionFailureOpt = freezed,
  }) {
    return _then(_LanguagesState(
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

class _$_LanguagesState implements _LanguagesState {
  const _$_LanguagesState(
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
    return 'LanguagesState(isLoading: $isLoading, isDeleteLoading: $isDeleteLoading, isVisibilityLoading: $isVisibilityLoading, actionFailureOpt: $actionFailureOpt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LanguagesState &&
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
  _$LanguagesStateCopyWith<_LanguagesState> get copyWith =>
      __$LanguagesStateCopyWithImpl<_LanguagesState>(this, _$identity);
}

abstract class _LanguagesState implements LanguagesState {
  const factory _LanguagesState(
          {required bool isLoading,
          required bool isDeleteLoading,
          required bool isVisibilityLoading,
          required Option<Either<FirebaseFailure, String>> actionFailureOpt}) =
      _$_LanguagesState;

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
  _$LanguagesStateCopyWith<_LanguagesState> get copyWith =>
      throw _privateConstructorUsedError;
}
