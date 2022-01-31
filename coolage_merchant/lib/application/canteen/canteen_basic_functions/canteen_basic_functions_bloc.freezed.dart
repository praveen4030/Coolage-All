// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'canteen_basic_functions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CanteenBasicFunctionsEventTearOff {
  const _$CanteenBasicFunctionsEventTearOff();

  _SwitchDeliveryStatus switchDeliveryStatus(
      bool isDelivery, String canteenId) {
    return _SwitchDeliveryStatus(
      isDelivery,
      canteenId,
    );
  }

  _SwitchOpenStatus switchOpenStatus(bool isOpen, String canteenId) {
    return _SwitchOpenStatus(
      isOpen,
      canteenId,
    );
  }
}

/// @nodoc
const $CanteenBasicFunctionsEvent = _$CanteenBasicFunctionsEventTearOff();

/// @nodoc
mixin _$CanteenBasicFunctionsEvent {
  String get canteenId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isDelivery, String canteenId)
        switchDeliveryStatus,
    required TResult Function(bool isOpen, String canteenId) switchOpenStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isDelivery, String canteenId)? switchDeliveryStatus,
    TResult Function(bool isOpen, String canteenId)? switchOpenStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SwitchDeliveryStatus value) switchDeliveryStatus,
    required TResult Function(_SwitchOpenStatus value) switchOpenStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SwitchDeliveryStatus value)? switchDeliveryStatus,
    TResult Function(_SwitchOpenStatus value)? switchOpenStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CanteenBasicFunctionsEventCopyWith<CanteenBasicFunctionsEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CanteenBasicFunctionsEventCopyWith<$Res> {
  factory $CanteenBasicFunctionsEventCopyWith(CanteenBasicFunctionsEvent value,
          $Res Function(CanteenBasicFunctionsEvent) then) =
      _$CanteenBasicFunctionsEventCopyWithImpl<$Res>;
  $Res call({String canteenId});
}

/// @nodoc
class _$CanteenBasicFunctionsEventCopyWithImpl<$Res>
    implements $CanteenBasicFunctionsEventCopyWith<$Res> {
  _$CanteenBasicFunctionsEventCopyWithImpl(this._value, this._then);

  final CanteenBasicFunctionsEvent _value;
  // ignore: unused_field
  final $Res Function(CanteenBasicFunctionsEvent) _then;

  @override
  $Res call({
    Object? canteenId = freezed,
  }) {
    return _then(_value.copyWith(
      canteenId: canteenId == freezed
          ? _value.canteenId
          : canteenId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SwitchDeliveryStatusCopyWith<$Res>
    implements $CanteenBasicFunctionsEventCopyWith<$Res> {
  factory _$SwitchDeliveryStatusCopyWith(_SwitchDeliveryStatus value,
          $Res Function(_SwitchDeliveryStatus) then) =
      __$SwitchDeliveryStatusCopyWithImpl<$Res>;
  @override
  $Res call({bool isDelivery, String canteenId});
}

/// @nodoc
class __$SwitchDeliveryStatusCopyWithImpl<$Res>
    extends _$CanteenBasicFunctionsEventCopyWithImpl<$Res>
    implements _$SwitchDeliveryStatusCopyWith<$Res> {
  __$SwitchDeliveryStatusCopyWithImpl(
      _SwitchDeliveryStatus _value, $Res Function(_SwitchDeliveryStatus) _then)
      : super(_value, (v) => _then(v as _SwitchDeliveryStatus));

  @override
  _SwitchDeliveryStatus get _value => super._value as _SwitchDeliveryStatus;

  @override
  $Res call({
    Object? isDelivery = freezed,
    Object? canteenId = freezed,
  }) {
    return _then(_SwitchDeliveryStatus(
      isDelivery == freezed
          ? _value.isDelivery
          : isDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      canteenId == freezed
          ? _value.canteenId
          : canteenId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SwitchDeliveryStatus implements _SwitchDeliveryStatus {
  const _$_SwitchDeliveryStatus(this.isDelivery, this.canteenId);

  @override
  final bool isDelivery;
  @override
  final String canteenId;

  @override
  String toString() {
    return 'CanteenBasicFunctionsEvent.switchDeliveryStatus(isDelivery: $isDelivery, canteenId: $canteenId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SwitchDeliveryStatus &&
            (identical(other.isDelivery, isDelivery) ||
                const DeepCollectionEquality()
                    .equals(other.isDelivery, isDelivery)) &&
            (identical(other.canteenId, canteenId) ||
                const DeepCollectionEquality()
                    .equals(other.canteenId, canteenId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isDelivery) ^
      const DeepCollectionEquality().hash(canteenId);

  @JsonKey(ignore: true)
  @override
  _$SwitchDeliveryStatusCopyWith<_SwitchDeliveryStatus> get copyWith =>
      __$SwitchDeliveryStatusCopyWithImpl<_SwitchDeliveryStatus>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isDelivery, String canteenId)
        switchDeliveryStatus,
    required TResult Function(bool isOpen, String canteenId) switchOpenStatus,
  }) {
    return switchDeliveryStatus(isDelivery, canteenId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isDelivery, String canteenId)? switchDeliveryStatus,
    TResult Function(bool isOpen, String canteenId)? switchOpenStatus,
    required TResult orElse(),
  }) {
    if (switchDeliveryStatus != null) {
      return switchDeliveryStatus(isDelivery, canteenId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SwitchDeliveryStatus value) switchDeliveryStatus,
    required TResult Function(_SwitchOpenStatus value) switchOpenStatus,
  }) {
    return switchDeliveryStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SwitchDeliveryStatus value)? switchDeliveryStatus,
    TResult Function(_SwitchOpenStatus value)? switchOpenStatus,
    required TResult orElse(),
  }) {
    if (switchDeliveryStatus != null) {
      return switchDeliveryStatus(this);
    }
    return orElse();
  }
}

abstract class _SwitchDeliveryStatus implements CanteenBasicFunctionsEvent {
  const factory _SwitchDeliveryStatus(bool isDelivery, String canteenId) =
      _$_SwitchDeliveryStatus;

  bool get isDelivery => throw _privateConstructorUsedError;
  @override
  String get canteenId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SwitchDeliveryStatusCopyWith<_SwitchDeliveryStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SwitchOpenStatusCopyWith<$Res>
    implements $CanteenBasicFunctionsEventCopyWith<$Res> {
  factory _$SwitchOpenStatusCopyWith(
          _SwitchOpenStatus value, $Res Function(_SwitchOpenStatus) then) =
      __$SwitchOpenStatusCopyWithImpl<$Res>;
  @override
  $Res call({bool isOpen, String canteenId});
}

/// @nodoc
class __$SwitchOpenStatusCopyWithImpl<$Res>
    extends _$CanteenBasicFunctionsEventCopyWithImpl<$Res>
    implements _$SwitchOpenStatusCopyWith<$Res> {
  __$SwitchOpenStatusCopyWithImpl(
      _SwitchOpenStatus _value, $Res Function(_SwitchOpenStatus) _then)
      : super(_value, (v) => _then(v as _SwitchOpenStatus));

  @override
  _SwitchOpenStatus get _value => super._value as _SwitchOpenStatus;

  @override
  $Res call({
    Object? isOpen = freezed,
    Object? canteenId = freezed,
  }) {
    return _then(_SwitchOpenStatus(
      isOpen == freezed
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      canteenId == freezed
          ? _value.canteenId
          : canteenId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SwitchOpenStatus implements _SwitchOpenStatus {
  const _$_SwitchOpenStatus(this.isOpen, this.canteenId);

  @override
  final bool isOpen;
  @override
  final String canteenId;

  @override
  String toString() {
    return 'CanteenBasicFunctionsEvent.switchOpenStatus(isOpen: $isOpen, canteenId: $canteenId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SwitchOpenStatus &&
            (identical(other.isOpen, isOpen) ||
                const DeepCollectionEquality().equals(other.isOpen, isOpen)) &&
            (identical(other.canteenId, canteenId) ||
                const DeepCollectionEquality()
                    .equals(other.canteenId, canteenId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isOpen) ^
      const DeepCollectionEquality().hash(canteenId);

  @JsonKey(ignore: true)
  @override
  _$SwitchOpenStatusCopyWith<_SwitchOpenStatus> get copyWith =>
      __$SwitchOpenStatusCopyWithImpl<_SwitchOpenStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isDelivery, String canteenId)
        switchDeliveryStatus,
    required TResult Function(bool isOpen, String canteenId) switchOpenStatus,
  }) {
    return switchOpenStatus(isOpen, canteenId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isDelivery, String canteenId)? switchDeliveryStatus,
    TResult Function(bool isOpen, String canteenId)? switchOpenStatus,
    required TResult orElse(),
  }) {
    if (switchOpenStatus != null) {
      return switchOpenStatus(isOpen, canteenId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SwitchDeliveryStatus value) switchDeliveryStatus,
    required TResult Function(_SwitchOpenStatus value) switchOpenStatus,
  }) {
    return switchOpenStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SwitchDeliveryStatus value)? switchDeliveryStatus,
    TResult Function(_SwitchOpenStatus value)? switchOpenStatus,
    required TResult orElse(),
  }) {
    if (switchOpenStatus != null) {
      return switchOpenStatus(this);
    }
    return orElse();
  }
}

abstract class _SwitchOpenStatus implements CanteenBasicFunctionsEvent {
  const factory _SwitchOpenStatus(bool isOpen, String canteenId) =
      _$_SwitchOpenStatus;

  bool get isOpen => throw _privateConstructorUsedError;
  @override
  String get canteenId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SwitchOpenStatusCopyWith<_SwitchOpenStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CanteenBasicFunctionsStateTearOff {
  const _$CanteenBasicFunctionsStateTearOff();

  _CanteenBasicFunctionsState call(
      {Option<Either<FirebaseFailure, Unit>>? deliveryStatusFailureOrSuccess,
      Option<Either<FirebaseFailure, Unit>>? openStatusFailureOrSuccess}) {
    return _CanteenBasicFunctionsState(
      deliveryStatusFailureOrSuccess: deliveryStatusFailureOrSuccess,
      openStatusFailureOrSuccess: openStatusFailureOrSuccess,
    );
  }
}

/// @nodoc
const $CanteenBasicFunctionsState = _$CanteenBasicFunctionsStateTearOff();

/// @nodoc
mixin _$CanteenBasicFunctionsState {
  Option<Either<FirebaseFailure, Unit>>? get deliveryStatusFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Option<Either<FirebaseFailure, Unit>>? get openStatusFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CanteenBasicFunctionsStateCopyWith<CanteenBasicFunctionsState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CanteenBasicFunctionsStateCopyWith<$Res> {
  factory $CanteenBasicFunctionsStateCopyWith(CanteenBasicFunctionsState value,
          $Res Function(CanteenBasicFunctionsState) then) =
      _$CanteenBasicFunctionsStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<FirebaseFailure, Unit>>? deliveryStatusFailureOrSuccess,
      Option<Either<FirebaseFailure, Unit>>? openStatusFailureOrSuccess});
}

/// @nodoc
class _$CanteenBasicFunctionsStateCopyWithImpl<$Res>
    implements $CanteenBasicFunctionsStateCopyWith<$Res> {
  _$CanteenBasicFunctionsStateCopyWithImpl(this._value, this._then);

  final CanteenBasicFunctionsState _value;
  // ignore: unused_field
  final $Res Function(CanteenBasicFunctionsState) _then;

  @override
  $Res call({
    Object? deliveryStatusFailureOrSuccess = freezed,
    Object? openStatusFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      deliveryStatusFailureOrSuccess: deliveryStatusFailureOrSuccess == freezed
          ? _value.deliveryStatusFailureOrSuccess
          : deliveryStatusFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, Unit>>?,
      openStatusFailureOrSuccess: openStatusFailureOrSuccess == freezed
          ? _value.openStatusFailureOrSuccess
          : openStatusFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, Unit>>?,
    ));
  }
}

/// @nodoc
abstract class _$CanteenBasicFunctionsStateCopyWith<$Res>
    implements $CanteenBasicFunctionsStateCopyWith<$Res> {
  factory _$CanteenBasicFunctionsStateCopyWith(
          _CanteenBasicFunctionsState value,
          $Res Function(_CanteenBasicFunctionsState) then) =
      __$CanteenBasicFunctionsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<FirebaseFailure, Unit>>? deliveryStatusFailureOrSuccess,
      Option<Either<FirebaseFailure, Unit>>? openStatusFailureOrSuccess});
}

/// @nodoc
class __$CanteenBasicFunctionsStateCopyWithImpl<$Res>
    extends _$CanteenBasicFunctionsStateCopyWithImpl<$Res>
    implements _$CanteenBasicFunctionsStateCopyWith<$Res> {
  __$CanteenBasicFunctionsStateCopyWithImpl(_CanteenBasicFunctionsState _value,
      $Res Function(_CanteenBasicFunctionsState) _then)
      : super(_value, (v) => _then(v as _CanteenBasicFunctionsState));

  @override
  _CanteenBasicFunctionsState get _value =>
      super._value as _CanteenBasicFunctionsState;

  @override
  $Res call({
    Object? deliveryStatusFailureOrSuccess = freezed,
    Object? openStatusFailureOrSuccess = freezed,
  }) {
    return _then(_CanteenBasicFunctionsState(
      deliveryStatusFailureOrSuccess: deliveryStatusFailureOrSuccess == freezed
          ? _value.deliveryStatusFailureOrSuccess
          : deliveryStatusFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, Unit>>?,
      openStatusFailureOrSuccess: openStatusFailureOrSuccess == freezed
          ? _value.openStatusFailureOrSuccess
          : openStatusFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, Unit>>?,
    ));
  }
}

/// @nodoc

class _$_CanteenBasicFunctionsState implements _CanteenBasicFunctionsState {
  const _$_CanteenBasicFunctionsState(
      {this.deliveryStatusFailureOrSuccess, this.openStatusFailureOrSuccess});

  @override
  final Option<Either<FirebaseFailure, Unit>>? deliveryStatusFailureOrSuccess;
  @override
  final Option<Either<FirebaseFailure, Unit>>? openStatusFailureOrSuccess;

  @override
  String toString() {
    return 'CanteenBasicFunctionsState(deliveryStatusFailureOrSuccess: $deliveryStatusFailureOrSuccess, openStatusFailureOrSuccess: $openStatusFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CanteenBasicFunctionsState &&
            (identical(other.deliveryStatusFailureOrSuccess,
                    deliveryStatusFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.deliveryStatusFailureOrSuccess,
                    deliveryStatusFailureOrSuccess)) &&
            (identical(other.openStatusFailureOrSuccess,
                    openStatusFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.openStatusFailureOrSuccess,
                    openStatusFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(deliveryStatusFailureOrSuccess) ^
      const DeepCollectionEquality().hash(openStatusFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  _$CanteenBasicFunctionsStateCopyWith<_CanteenBasicFunctionsState>
      get copyWith => __$CanteenBasicFunctionsStateCopyWithImpl<
          _CanteenBasicFunctionsState>(this, _$identity);
}

abstract class _CanteenBasicFunctionsState
    implements CanteenBasicFunctionsState {
  const factory _CanteenBasicFunctionsState(
      {Option<Either<FirebaseFailure, Unit>>? deliveryStatusFailureOrSuccess,
      Option<Either<FirebaseFailure, Unit>>?
          openStatusFailureOrSuccess}) = _$_CanteenBasicFunctionsState;

  @override
  Option<Either<FirebaseFailure, Unit>>? get deliveryStatusFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<FirebaseFailure, Unit>>? get openStatusFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CanteenBasicFunctionsStateCopyWith<_CanteenBasicFunctionsState>
      get copyWith => throw _privateConstructorUsedError;
}
