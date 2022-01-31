// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'orders_finished_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OrdersFinishedEventTearOff {
  const _$OrdersFinishedEventTearOff();

  _GetCompletedOrders getCompletedOrders(String canteenId) {
    return _GetCompletedOrders(
      canteenId,
    );
  }

  _GetMoreCompletedOrders getMoreCompletedOrders(String canteenId) {
    return _GetMoreCompletedOrders(
      canteenId,
    );
  }

  _GetDateWiseOrders getDateWiseOrders(String canteenId, DateTime dateTime) {
    return _GetDateWiseOrders(
      canteenId,
      dateTime,
    );
  }

  _GetMoreDateWiseOrders getMoreDateWiseOrders(
      String canteenId, DateTime dateTime) {
    return _GetMoreDateWiseOrders(
      canteenId,
      dateTime,
    );
  }
}

/// @nodoc
const $OrdersFinishedEvent = _$OrdersFinishedEventTearOff();

/// @nodoc
mixin _$OrdersFinishedEvent {
  String get canteenId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String canteenId) getCompletedOrders,
    required TResult Function(String canteenId) getMoreCompletedOrders,
    required TResult Function(String canteenId, DateTime dateTime)
        getDateWiseOrders,
    required TResult Function(String canteenId, DateTime dateTime)
        getMoreDateWiseOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getCompletedOrders,
    TResult Function(String canteenId)? getMoreCompletedOrders,
    TResult Function(String canteenId, DateTime dateTime)? getDateWiseOrders,
    TResult Function(String canteenId, DateTime dateTime)?
        getMoreDateWiseOrders,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCompletedOrders value) getCompletedOrders,
    required TResult Function(_GetMoreCompletedOrders value)
        getMoreCompletedOrders,
    required TResult Function(_GetDateWiseOrders value) getDateWiseOrders,
    required TResult Function(_GetMoreDateWiseOrders value)
        getMoreDateWiseOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCompletedOrders value)? getCompletedOrders,
    TResult Function(_GetMoreCompletedOrders value)? getMoreCompletedOrders,
    TResult Function(_GetDateWiseOrders value)? getDateWiseOrders,
    TResult Function(_GetMoreDateWiseOrders value)? getMoreDateWiseOrders,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrdersFinishedEventCopyWith<OrdersFinishedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersFinishedEventCopyWith<$Res> {
  factory $OrdersFinishedEventCopyWith(
          OrdersFinishedEvent value, $Res Function(OrdersFinishedEvent) then) =
      _$OrdersFinishedEventCopyWithImpl<$Res>;
  $Res call({String canteenId});
}

/// @nodoc
class _$OrdersFinishedEventCopyWithImpl<$Res>
    implements $OrdersFinishedEventCopyWith<$Res> {
  _$OrdersFinishedEventCopyWithImpl(this._value, this._then);

  final OrdersFinishedEvent _value;
  // ignore: unused_field
  final $Res Function(OrdersFinishedEvent) _then;

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
abstract class _$GetCompletedOrdersCopyWith<$Res>
    implements $OrdersFinishedEventCopyWith<$Res> {
  factory _$GetCompletedOrdersCopyWith(
          _GetCompletedOrders value, $Res Function(_GetCompletedOrders) then) =
      __$GetCompletedOrdersCopyWithImpl<$Res>;
  @override
  $Res call({String canteenId});
}

/// @nodoc
class __$GetCompletedOrdersCopyWithImpl<$Res>
    extends _$OrdersFinishedEventCopyWithImpl<$Res>
    implements _$GetCompletedOrdersCopyWith<$Res> {
  __$GetCompletedOrdersCopyWithImpl(
      _GetCompletedOrders _value, $Res Function(_GetCompletedOrders) _then)
      : super(_value, (v) => _then(v as _GetCompletedOrders));

  @override
  _GetCompletedOrders get _value => super._value as _GetCompletedOrders;

  @override
  $Res call({
    Object? canteenId = freezed,
  }) {
    return _then(_GetCompletedOrders(
      canteenId == freezed
          ? _value.canteenId
          : canteenId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetCompletedOrders implements _GetCompletedOrders {
  const _$_GetCompletedOrders(this.canteenId);

  @override
  final String canteenId;

  @override
  String toString() {
    return 'OrdersFinishedEvent.getCompletedOrders(canteenId: $canteenId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetCompletedOrders &&
            (identical(other.canteenId, canteenId) ||
                const DeepCollectionEquality()
                    .equals(other.canteenId, canteenId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(canteenId);

  @JsonKey(ignore: true)
  @override
  _$GetCompletedOrdersCopyWith<_GetCompletedOrders> get copyWith =>
      __$GetCompletedOrdersCopyWithImpl<_GetCompletedOrders>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String canteenId) getCompletedOrders,
    required TResult Function(String canteenId) getMoreCompletedOrders,
    required TResult Function(String canteenId, DateTime dateTime)
        getDateWiseOrders,
    required TResult Function(String canteenId, DateTime dateTime)
        getMoreDateWiseOrders,
  }) {
    return getCompletedOrders(canteenId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getCompletedOrders,
    TResult Function(String canteenId)? getMoreCompletedOrders,
    TResult Function(String canteenId, DateTime dateTime)? getDateWiseOrders,
    TResult Function(String canteenId, DateTime dateTime)?
        getMoreDateWiseOrders,
    required TResult orElse(),
  }) {
    if (getCompletedOrders != null) {
      return getCompletedOrders(canteenId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCompletedOrders value) getCompletedOrders,
    required TResult Function(_GetMoreCompletedOrders value)
        getMoreCompletedOrders,
    required TResult Function(_GetDateWiseOrders value) getDateWiseOrders,
    required TResult Function(_GetMoreDateWiseOrders value)
        getMoreDateWiseOrders,
  }) {
    return getCompletedOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCompletedOrders value)? getCompletedOrders,
    TResult Function(_GetMoreCompletedOrders value)? getMoreCompletedOrders,
    TResult Function(_GetDateWiseOrders value)? getDateWiseOrders,
    TResult Function(_GetMoreDateWiseOrders value)? getMoreDateWiseOrders,
    required TResult orElse(),
  }) {
    if (getCompletedOrders != null) {
      return getCompletedOrders(this);
    }
    return orElse();
  }
}

abstract class _GetCompletedOrders implements OrdersFinishedEvent {
  const factory _GetCompletedOrders(String canteenId) = _$_GetCompletedOrders;

  @override
  String get canteenId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetCompletedOrdersCopyWith<_GetCompletedOrders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetMoreCompletedOrdersCopyWith<$Res>
    implements $OrdersFinishedEventCopyWith<$Res> {
  factory _$GetMoreCompletedOrdersCopyWith(_GetMoreCompletedOrders value,
          $Res Function(_GetMoreCompletedOrders) then) =
      __$GetMoreCompletedOrdersCopyWithImpl<$Res>;
  @override
  $Res call({String canteenId});
}

/// @nodoc
class __$GetMoreCompletedOrdersCopyWithImpl<$Res>
    extends _$OrdersFinishedEventCopyWithImpl<$Res>
    implements _$GetMoreCompletedOrdersCopyWith<$Res> {
  __$GetMoreCompletedOrdersCopyWithImpl(_GetMoreCompletedOrders _value,
      $Res Function(_GetMoreCompletedOrders) _then)
      : super(_value, (v) => _then(v as _GetMoreCompletedOrders));

  @override
  _GetMoreCompletedOrders get _value => super._value as _GetMoreCompletedOrders;

  @override
  $Res call({
    Object? canteenId = freezed,
  }) {
    return _then(_GetMoreCompletedOrders(
      canteenId == freezed
          ? _value.canteenId
          : canteenId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetMoreCompletedOrders implements _GetMoreCompletedOrders {
  const _$_GetMoreCompletedOrders(this.canteenId);

  @override
  final String canteenId;

  @override
  String toString() {
    return 'OrdersFinishedEvent.getMoreCompletedOrders(canteenId: $canteenId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetMoreCompletedOrders &&
            (identical(other.canteenId, canteenId) ||
                const DeepCollectionEquality()
                    .equals(other.canteenId, canteenId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(canteenId);

  @JsonKey(ignore: true)
  @override
  _$GetMoreCompletedOrdersCopyWith<_GetMoreCompletedOrders> get copyWith =>
      __$GetMoreCompletedOrdersCopyWithImpl<_GetMoreCompletedOrders>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String canteenId) getCompletedOrders,
    required TResult Function(String canteenId) getMoreCompletedOrders,
    required TResult Function(String canteenId, DateTime dateTime)
        getDateWiseOrders,
    required TResult Function(String canteenId, DateTime dateTime)
        getMoreDateWiseOrders,
  }) {
    return getMoreCompletedOrders(canteenId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getCompletedOrders,
    TResult Function(String canteenId)? getMoreCompletedOrders,
    TResult Function(String canteenId, DateTime dateTime)? getDateWiseOrders,
    TResult Function(String canteenId, DateTime dateTime)?
        getMoreDateWiseOrders,
    required TResult orElse(),
  }) {
    if (getMoreCompletedOrders != null) {
      return getMoreCompletedOrders(canteenId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCompletedOrders value) getCompletedOrders,
    required TResult Function(_GetMoreCompletedOrders value)
        getMoreCompletedOrders,
    required TResult Function(_GetDateWiseOrders value) getDateWiseOrders,
    required TResult Function(_GetMoreDateWiseOrders value)
        getMoreDateWiseOrders,
  }) {
    return getMoreCompletedOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCompletedOrders value)? getCompletedOrders,
    TResult Function(_GetMoreCompletedOrders value)? getMoreCompletedOrders,
    TResult Function(_GetDateWiseOrders value)? getDateWiseOrders,
    TResult Function(_GetMoreDateWiseOrders value)? getMoreDateWiseOrders,
    required TResult orElse(),
  }) {
    if (getMoreCompletedOrders != null) {
      return getMoreCompletedOrders(this);
    }
    return orElse();
  }
}

abstract class _GetMoreCompletedOrders implements OrdersFinishedEvent {
  const factory _GetMoreCompletedOrders(String canteenId) =
      _$_GetMoreCompletedOrders;

  @override
  String get canteenId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetMoreCompletedOrdersCopyWith<_GetMoreCompletedOrders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetDateWiseOrdersCopyWith<$Res>
    implements $OrdersFinishedEventCopyWith<$Res> {
  factory _$GetDateWiseOrdersCopyWith(
          _GetDateWiseOrders value, $Res Function(_GetDateWiseOrders) then) =
      __$GetDateWiseOrdersCopyWithImpl<$Res>;
  @override
  $Res call({String canteenId, DateTime dateTime});
}

/// @nodoc
class __$GetDateWiseOrdersCopyWithImpl<$Res>
    extends _$OrdersFinishedEventCopyWithImpl<$Res>
    implements _$GetDateWiseOrdersCopyWith<$Res> {
  __$GetDateWiseOrdersCopyWithImpl(
      _GetDateWiseOrders _value, $Res Function(_GetDateWiseOrders) _then)
      : super(_value, (v) => _then(v as _GetDateWiseOrders));

  @override
  _GetDateWiseOrders get _value => super._value as _GetDateWiseOrders;

  @override
  $Res call({
    Object? canteenId = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_GetDateWiseOrders(
      canteenId == freezed
          ? _value.canteenId
          : canteenId // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_GetDateWiseOrders implements _GetDateWiseOrders {
  const _$_GetDateWiseOrders(this.canteenId, this.dateTime);

  @override
  final String canteenId;
  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'OrdersFinishedEvent.getDateWiseOrders(canteenId: $canteenId, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetDateWiseOrders &&
            (identical(other.canteenId, canteenId) ||
                const DeepCollectionEquality()
                    .equals(other.canteenId, canteenId)) &&
            (identical(other.dateTime, dateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dateTime, dateTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(canteenId) ^
      const DeepCollectionEquality().hash(dateTime);

  @JsonKey(ignore: true)
  @override
  _$GetDateWiseOrdersCopyWith<_GetDateWiseOrders> get copyWith =>
      __$GetDateWiseOrdersCopyWithImpl<_GetDateWiseOrders>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String canteenId) getCompletedOrders,
    required TResult Function(String canteenId) getMoreCompletedOrders,
    required TResult Function(String canteenId, DateTime dateTime)
        getDateWiseOrders,
    required TResult Function(String canteenId, DateTime dateTime)
        getMoreDateWiseOrders,
  }) {
    return getDateWiseOrders(canteenId, dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getCompletedOrders,
    TResult Function(String canteenId)? getMoreCompletedOrders,
    TResult Function(String canteenId, DateTime dateTime)? getDateWiseOrders,
    TResult Function(String canteenId, DateTime dateTime)?
        getMoreDateWiseOrders,
    required TResult orElse(),
  }) {
    if (getDateWiseOrders != null) {
      return getDateWiseOrders(canteenId, dateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCompletedOrders value) getCompletedOrders,
    required TResult Function(_GetMoreCompletedOrders value)
        getMoreCompletedOrders,
    required TResult Function(_GetDateWiseOrders value) getDateWiseOrders,
    required TResult Function(_GetMoreDateWiseOrders value)
        getMoreDateWiseOrders,
  }) {
    return getDateWiseOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCompletedOrders value)? getCompletedOrders,
    TResult Function(_GetMoreCompletedOrders value)? getMoreCompletedOrders,
    TResult Function(_GetDateWiseOrders value)? getDateWiseOrders,
    TResult Function(_GetMoreDateWiseOrders value)? getMoreDateWiseOrders,
    required TResult orElse(),
  }) {
    if (getDateWiseOrders != null) {
      return getDateWiseOrders(this);
    }
    return orElse();
  }
}

abstract class _GetDateWiseOrders implements OrdersFinishedEvent {
  const factory _GetDateWiseOrders(String canteenId, DateTime dateTime) =
      _$_GetDateWiseOrders;

  @override
  String get canteenId => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetDateWiseOrdersCopyWith<_GetDateWiseOrders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetMoreDateWiseOrdersCopyWith<$Res>
    implements $OrdersFinishedEventCopyWith<$Res> {
  factory _$GetMoreDateWiseOrdersCopyWith(_GetMoreDateWiseOrders value,
          $Res Function(_GetMoreDateWiseOrders) then) =
      __$GetMoreDateWiseOrdersCopyWithImpl<$Res>;
  @override
  $Res call({String canteenId, DateTime dateTime});
}

/// @nodoc
class __$GetMoreDateWiseOrdersCopyWithImpl<$Res>
    extends _$OrdersFinishedEventCopyWithImpl<$Res>
    implements _$GetMoreDateWiseOrdersCopyWith<$Res> {
  __$GetMoreDateWiseOrdersCopyWithImpl(_GetMoreDateWiseOrders _value,
      $Res Function(_GetMoreDateWiseOrders) _then)
      : super(_value, (v) => _then(v as _GetMoreDateWiseOrders));

  @override
  _GetMoreDateWiseOrders get _value => super._value as _GetMoreDateWiseOrders;

  @override
  $Res call({
    Object? canteenId = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_GetMoreDateWiseOrders(
      canteenId == freezed
          ? _value.canteenId
          : canteenId // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_GetMoreDateWiseOrders implements _GetMoreDateWiseOrders {
  const _$_GetMoreDateWiseOrders(this.canteenId, this.dateTime);

  @override
  final String canteenId;
  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'OrdersFinishedEvent.getMoreDateWiseOrders(canteenId: $canteenId, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetMoreDateWiseOrders &&
            (identical(other.canteenId, canteenId) ||
                const DeepCollectionEquality()
                    .equals(other.canteenId, canteenId)) &&
            (identical(other.dateTime, dateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dateTime, dateTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(canteenId) ^
      const DeepCollectionEquality().hash(dateTime);

  @JsonKey(ignore: true)
  @override
  _$GetMoreDateWiseOrdersCopyWith<_GetMoreDateWiseOrders> get copyWith =>
      __$GetMoreDateWiseOrdersCopyWithImpl<_GetMoreDateWiseOrders>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String canteenId) getCompletedOrders,
    required TResult Function(String canteenId) getMoreCompletedOrders,
    required TResult Function(String canteenId, DateTime dateTime)
        getDateWiseOrders,
    required TResult Function(String canteenId, DateTime dateTime)
        getMoreDateWiseOrders,
  }) {
    return getMoreDateWiseOrders(canteenId, dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getCompletedOrders,
    TResult Function(String canteenId)? getMoreCompletedOrders,
    TResult Function(String canteenId, DateTime dateTime)? getDateWiseOrders,
    TResult Function(String canteenId, DateTime dateTime)?
        getMoreDateWiseOrders,
    required TResult orElse(),
  }) {
    if (getMoreDateWiseOrders != null) {
      return getMoreDateWiseOrders(canteenId, dateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCompletedOrders value) getCompletedOrders,
    required TResult Function(_GetMoreCompletedOrders value)
        getMoreCompletedOrders,
    required TResult Function(_GetDateWiseOrders value) getDateWiseOrders,
    required TResult Function(_GetMoreDateWiseOrders value)
        getMoreDateWiseOrders,
  }) {
    return getMoreDateWiseOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCompletedOrders value)? getCompletedOrders,
    TResult Function(_GetMoreCompletedOrders value)? getMoreCompletedOrders,
    TResult Function(_GetDateWiseOrders value)? getDateWiseOrders,
    TResult Function(_GetMoreDateWiseOrders value)? getMoreDateWiseOrders,
    required TResult orElse(),
  }) {
    if (getMoreDateWiseOrders != null) {
      return getMoreDateWiseOrders(this);
    }
    return orElse();
  }
}

abstract class _GetMoreDateWiseOrders implements OrdersFinishedEvent {
  const factory _GetMoreDateWiseOrders(String canteenId, DateTime dateTime) =
      _$_GetMoreDateWiseOrders;

  @override
  String get canteenId => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetMoreDateWiseOrdersCopyWith<_GetMoreDateWiseOrders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$OrdersFinishedStateTearOff {
  const _$OrdersFinishedStateTearOff();

  _OrdersFinishedState call(
      {bool? isOrdersLoading,
      bool? isAddingMoreLoading,
      Option<FirebaseFailure>? orderFailureOrSuccess,
      List<OrderModel>? completedOrdersList,
      bool? hasMore}) {
    return _OrdersFinishedState(
      isOrdersLoading: isOrdersLoading,
      isAddingMoreLoading: isAddingMoreLoading,
      orderFailureOrSuccess: orderFailureOrSuccess,
      completedOrdersList: completedOrdersList,
      hasMore: hasMore,
    );
  }
}

/// @nodoc
const $OrdersFinishedState = _$OrdersFinishedStateTearOff();

/// @nodoc
mixin _$OrdersFinishedState {
  bool? get isOrdersLoading => throw _privateConstructorUsedError;
  bool? get isAddingMoreLoading => throw _privateConstructorUsedError;
  Option<FirebaseFailure>? get orderFailureOrSuccess =>
      throw _privateConstructorUsedError;
  List<OrderModel>? get completedOrdersList =>
      throw _privateConstructorUsedError;
  bool? get hasMore => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrdersFinishedStateCopyWith<OrdersFinishedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersFinishedStateCopyWith<$Res> {
  factory $OrdersFinishedStateCopyWith(
          OrdersFinishedState value, $Res Function(OrdersFinishedState) then) =
      _$OrdersFinishedStateCopyWithImpl<$Res>;
  $Res call(
      {bool? isOrdersLoading,
      bool? isAddingMoreLoading,
      Option<FirebaseFailure>? orderFailureOrSuccess,
      List<OrderModel>? completedOrdersList,
      bool? hasMore});
}

/// @nodoc
class _$OrdersFinishedStateCopyWithImpl<$Res>
    implements $OrdersFinishedStateCopyWith<$Res> {
  _$OrdersFinishedStateCopyWithImpl(this._value, this._then);

  final OrdersFinishedState _value;
  // ignore: unused_field
  final $Res Function(OrdersFinishedState) _then;

  @override
  $Res call({
    Object? isOrdersLoading = freezed,
    Object? isAddingMoreLoading = freezed,
    Object? orderFailureOrSuccess = freezed,
    Object? completedOrdersList = freezed,
    Object? hasMore = freezed,
  }) {
    return _then(_value.copyWith(
      isOrdersLoading: isOrdersLoading == freezed
          ? _value.isOrdersLoading
          : isOrdersLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAddingMoreLoading: isAddingMoreLoading == freezed
          ? _value.isAddingMoreLoading
          : isAddingMoreLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      orderFailureOrSuccess: orderFailureOrSuccess == freezed
          ? _value.orderFailureOrSuccess
          : orderFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<FirebaseFailure>?,
      completedOrdersList: completedOrdersList == freezed
          ? _value.completedOrdersList
          : completedOrdersList // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>?,
      hasMore: hasMore == freezed
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$OrdersFinishedStateCopyWith<$Res>
    implements $OrdersFinishedStateCopyWith<$Res> {
  factory _$OrdersFinishedStateCopyWith(_OrdersFinishedState value,
          $Res Function(_OrdersFinishedState) then) =
      __$OrdersFinishedStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? isOrdersLoading,
      bool? isAddingMoreLoading,
      Option<FirebaseFailure>? orderFailureOrSuccess,
      List<OrderModel>? completedOrdersList,
      bool? hasMore});
}

/// @nodoc
class __$OrdersFinishedStateCopyWithImpl<$Res>
    extends _$OrdersFinishedStateCopyWithImpl<$Res>
    implements _$OrdersFinishedStateCopyWith<$Res> {
  __$OrdersFinishedStateCopyWithImpl(
      _OrdersFinishedState _value, $Res Function(_OrdersFinishedState) _then)
      : super(_value, (v) => _then(v as _OrdersFinishedState));

  @override
  _OrdersFinishedState get _value => super._value as _OrdersFinishedState;

  @override
  $Res call({
    Object? isOrdersLoading = freezed,
    Object? isAddingMoreLoading = freezed,
    Object? orderFailureOrSuccess = freezed,
    Object? completedOrdersList = freezed,
    Object? hasMore = freezed,
  }) {
    return _then(_OrdersFinishedState(
      isOrdersLoading: isOrdersLoading == freezed
          ? _value.isOrdersLoading
          : isOrdersLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAddingMoreLoading: isAddingMoreLoading == freezed
          ? _value.isAddingMoreLoading
          : isAddingMoreLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      orderFailureOrSuccess: orderFailureOrSuccess == freezed
          ? _value.orderFailureOrSuccess
          : orderFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<FirebaseFailure>?,
      completedOrdersList: completedOrdersList == freezed
          ? _value.completedOrdersList
          : completedOrdersList // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>?,
      hasMore: hasMore == freezed
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_OrdersFinishedState implements _OrdersFinishedState {
  const _$_OrdersFinishedState(
      {this.isOrdersLoading,
      this.isAddingMoreLoading,
      this.orderFailureOrSuccess,
      this.completedOrdersList,
      this.hasMore});

  @override
  final bool? isOrdersLoading;
  @override
  final bool? isAddingMoreLoading;
  @override
  final Option<FirebaseFailure>? orderFailureOrSuccess;
  @override
  final List<OrderModel>? completedOrdersList;
  @override
  final bool? hasMore;

  @override
  String toString() {
    return 'OrdersFinishedState(isOrdersLoading: $isOrdersLoading, isAddingMoreLoading: $isAddingMoreLoading, orderFailureOrSuccess: $orderFailureOrSuccess, completedOrdersList: $completedOrdersList, hasMore: $hasMore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrdersFinishedState &&
            (identical(other.isOrdersLoading, isOrdersLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isOrdersLoading, isOrdersLoading)) &&
            (identical(other.isAddingMoreLoading, isAddingMoreLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isAddingMoreLoading, isAddingMoreLoading)) &&
            (identical(other.orderFailureOrSuccess, orderFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.orderFailureOrSuccess, orderFailureOrSuccess)) &&
            (identical(other.completedOrdersList, completedOrdersList) ||
                const DeepCollectionEquality()
                    .equals(other.completedOrdersList, completedOrdersList)) &&
            (identical(other.hasMore, hasMore) ||
                const DeepCollectionEquality().equals(other.hasMore, hasMore)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isOrdersLoading) ^
      const DeepCollectionEquality().hash(isAddingMoreLoading) ^
      const DeepCollectionEquality().hash(orderFailureOrSuccess) ^
      const DeepCollectionEquality().hash(completedOrdersList) ^
      const DeepCollectionEquality().hash(hasMore);

  @JsonKey(ignore: true)
  @override
  _$OrdersFinishedStateCopyWith<_OrdersFinishedState> get copyWith =>
      __$OrdersFinishedStateCopyWithImpl<_OrdersFinishedState>(
          this, _$identity);
}

abstract class _OrdersFinishedState implements OrdersFinishedState {
  const factory _OrdersFinishedState(
      {bool? isOrdersLoading,
      bool? isAddingMoreLoading,
      Option<FirebaseFailure>? orderFailureOrSuccess,
      List<OrderModel>? completedOrdersList,
      bool? hasMore}) = _$_OrdersFinishedState;

  @override
  bool? get isOrdersLoading => throw _privateConstructorUsedError;
  @override
  bool? get isAddingMoreLoading => throw _privateConstructorUsedError;
  @override
  Option<FirebaseFailure>? get orderFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  List<OrderModel>? get completedOrdersList =>
      throw _privateConstructorUsedError;
  @override
  bool? get hasMore => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrdersFinishedStateCopyWith<_OrdersFinishedState> get copyWith =>
      throw _privateConstructorUsedError;
}
