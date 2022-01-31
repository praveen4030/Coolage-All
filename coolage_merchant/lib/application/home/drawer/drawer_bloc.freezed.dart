// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'drawer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DrawerEventTearOff {
  const _$DrawerEventTearOff();

  _OpenCloseDrawer openCloseDrawer() {
    return const _OpenCloseDrawer();
  }
}

/// @nodoc
const $DrawerEvent = _$DrawerEventTearOff();

/// @nodoc
mixin _$DrawerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() openCloseDrawer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? openCloseDrawer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenCloseDrawer value) openCloseDrawer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenCloseDrawer value)? openCloseDrawer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawerEventCopyWith<$Res> {
  factory $DrawerEventCopyWith(
          DrawerEvent value, $Res Function(DrawerEvent) then) =
      _$DrawerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DrawerEventCopyWithImpl<$Res> implements $DrawerEventCopyWith<$Res> {
  _$DrawerEventCopyWithImpl(this._value, this._then);

  final DrawerEvent _value;
  // ignore: unused_field
  final $Res Function(DrawerEvent) _then;
}

/// @nodoc
abstract class _$OpenCloseDrawerCopyWith<$Res> {
  factory _$OpenCloseDrawerCopyWith(
          _OpenCloseDrawer value, $Res Function(_OpenCloseDrawer) then) =
      __$OpenCloseDrawerCopyWithImpl<$Res>;
}

/// @nodoc
class __$OpenCloseDrawerCopyWithImpl<$Res>
    extends _$DrawerEventCopyWithImpl<$Res>
    implements _$OpenCloseDrawerCopyWith<$Res> {
  __$OpenCloseDrawerCopyWithImpl(
      _OpenCloseDrawer _value, $Res Function(_OpenCloseDrawer) _then)
      : super(_value, (v) => _then(v as _OpenCloseDrawer));

  @override
  _OpenCloseDrawer get _value => super._value as _OpenCloseDrawer;
}

/// @nodoc

class _$_OpenCloseDrawer implements _OpenCloseDrawer {
  const _$_OpenCloseDrawer();

  @override
  String toString() {
    return 'DrawerEvent.openCloseDrawer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OpenCloseDrawer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() openCloseDrawer,
  }) {
    return openCloseDrawer();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? openCloseDrawer,
    required TResult orElse(),
  }) {
    if (openCloseDrawer != null) {
      return openCloseDrawer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenCloseDrawer value) openCloseDrawer,
  }) {
    return openCloseDrawer(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenCloseDrawer value)? openCloseDrawer,
    required TResult orElse(),
  }) {
    if (openCloseDrawer != null) {
      return openCloseDrawer(this);
    }
    return orElse();
  }
}

abstract class _OpenCloseDrawer implements DrawerEvent {
  const factory _OpenCloseDrawer() = _$_OpenCloseDrawer;
}

/// @nodoc
class _$DrawerStateTearOff {
  const _$DrawerStateTearOff();

  _DrawerState call({bool? isDrawerOpen}) {
    return _DrawerState(
      isDrawerOpen: isDrawerOpen,
    );
  }
}

/// @nodoc
const $DrawerState = _$DrawerStateTearOff();

/// @nodoc
mixin _$DrawerState {
  bool? get isDrawerOpen => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DrawerStateCopyWith<DrawerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawerStateCopyWith<$Res> {
  factory $DrawerStateCopyWith(
          DrawerState value, $Res Function(DrawerState) then) =
      _$DrawerStateCopyWithImpl<$Res>;
  $Res call({bool? isDrawerOpen});
}

/// @nodoc
class _$DrawerStateCopyWithImpl<$Res> implements $DrawerStateCopyWith<$Res> {
  _$DrawerStateCopyWithImpl(this._value, this._then);

  final DrawerState _value;
  // ignore: unused_field
  final $Res Function(DrawerState) _then;

  @override
  $Res call({
    Object? isDrawerOpen = freezed,
  }) {
    return _then(_value.copyWith(
      isDrawerOpen: isDrawerOpen == freezed
          ? _value.isDrawerOpen
          : isDrawerOpen // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$DrawerStateCopyWith<$Res>
    implements $DrawerStateCopyWith<$Res> {
  factory _$DrawerStateCopyWith(
          _DrawerState value, $Res Function(_DrawerState) then) =
      __$DrawerStateCopyWithImpl<$Res>;
  @override
  $Res call({bool? isDrawerOpen});
}

/// @nodoc
class __$DrawerStateCopyWithImpl<$Res> extends _$DrawerStateCopyWithImpl<$Res>
    implements _$DrawerStateCopyWith<$Res> {
  __$DrawerStateCopyWithImpl(
      _DrawerState _value, $Res Function(_DrawerState) _then)
      : super(_value, (v) => _then(v as _DrawerState));

  @override
  _DrawerState get _value => super._value as _DrawerState;

  @override
  $Res call({
    Object? isDrawerOpen = freezed,
  }) {
    return _then(_DrawerState(
      isDrawerOpen: isDrawerOpen == freezed
          ? _value.isDrawerOpen
          : isDrawerOpen // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_DrawerState implements _DrawerState {
  const _$_DrawerState({this.isDrawerOpen});

  @override
  final bool? isDrawerOpen;

  @override
  String toString() {
    return 'DrawerState(isDrawerOpen: $isDrawerOpen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DrawerState &&
            (identical(other.isDrawerOpen, isDrawerOpen) ||
                const DeepCollectionEquality()
                    .equals(other.isDrawerOpen, isDrawerOpen)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isDrawerOpen);

  @JsonKey(ignore: true)
  @override
  _$DrawerStateCopyWith<_DrawerState> get copyWith =>
      __$DrawerStateCopyWithImpl<_DrawerState>(this, _$identity);
}

abstract class _DrawerState implements DrawerState {
  const factory _DrawerState({bool? isDrawerOpen}) = _$_DrawerState;

  @override
  bool? get isDrawerOpen => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DrawerStateCopyWith<_DrawerState> get copyWith =>
      throw _privateConstructorUsedError;
}
