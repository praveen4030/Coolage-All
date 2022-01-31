// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'orders_canceled_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OrdersCanceledEventTearOff {
  const _$OrdersCanceledEventTearOff();

  _GetCanceledOrders getCanceledOrders(String canteenId) {
    return _GetCanceledOrders(
      canteenId,
    );
  }

  _GetMoreCanceledOrders getMoreCanceledOrders(String canteenId) {
    return _GetMoreCanceledOrders(
      canteenId,
    );
  }
}

/// @nodoc
const $OrdersCanceledEvent = _$OrdersCanceledEventTearOff();

/// @nodoc
mixin _$OrdersCanceledEvent {
  String get canteenId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String canteenId) getCanceledOrders,
    required TResult Function(String canteenId) getMoreCanceledOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getCanceledOrders,
    TResult Function(String canteenId)? getMoreCanceledOrders,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCanceledOrders value) getCanceledOrders,
    required TResult Function(_GetMoreCanceledOrders value)
        getMoreCanceledOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCanceledOrders value)? getCanceledOrders,
    TResult Function(_GetMoreCanceledOrders value)? getMoreCanceledOrders,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrdersCanceledEventCopyWith<OrdersCanceledEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersCanceledEventCopyWith<$Res> {
  factory $OrdersCanceledEventCopyWith(
          OrdersCanceledEvent value, $Res Function(OrdersCanceledEvent) then) =
      _$OrdersCanceledEventCopyWithImpl<$Res>;
  $Res call({String canteenId});
}

/// @nodoc
class _$OrdersCanceledEventCopyWithImpl<$Res>
    implements $OrdersCanceledEventCopyWith<$Res> {
  _$OrdersCanceledEventCopyWithImpl(this._value, this._then);

  final OrdersCanceledEvent _value;
  // ignore: unused_field
  final $Res Function(OrdersCanceledEvent) _then;

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
abstract class _$GetCanceledOrdersCopyWith<$Res>
    implements $OrdersCanceledEventCopyWith<$Res> {
  factory _$GetCanceledOrdersCopyWith(
          _GetCanceledOrders value, $Res Function(_GetCanceledOrders) then) =
      __$GetCanceledOrdersCopyWithImpl<$Res>;
  @override
  $Res call({String canteenId});
}

/// @nodoc
class __$GetCanceledOrdersCopyWithImpl<$Res>
    extends _$OrdersCanceledEventCopyWithImpl<$Res>
    implements _$GetCanceledOrdersCopyWith<$Res> {
  __$GetCanceledOrdersCopyWithImpl(
      _GetCanceledOrders _value, $Res Function(_GetCanceledOrders) _then)
      : super(_value, (v) => _then(v as _GetCanceledOrders));

  @override
  _GetCanceledOrders get _value => super._value as _GetCanceledOrders;

  @override
  $Res call({
    Object? canteenId = freezed,
  }) {
    return _then(_GetCanceledOrders(
      canteenId == freezed
          ? _value.canteenId
          : canteenId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetCanceledOrders implements _GetCanceledOrders {
  const _$_GetCanceledOrders(this.canteenId);

  @override
  final String canteenId;

  @override
  String toString() {
    return 'OrdersCanceledEvent.getCanceledOrders(canteenId: $canteenId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetCanceledOrders &&
            (identical(other.canteenId, canteenId) ||
                const DeepCollectionEquality()
                    .equals(other.canteenId, canteenId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(canteenId);

  @JsonKey(ignore: true)
  @override
  _$GetCanceledOrdersCopyWith<_GetCanceledOrders> get copyWith =>
      __$GetCanceledOrdersCopyWithImpl<_GetCanceledOrders>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String canteenId) getCanceledOrders,
    required TResult Function(String canteenId) getMoreCanceledOrders,
  }) {
    return getCanceledOrders(canteenId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getCanceledOrders,
    TResult Function(String canteenId)? getMoreCanceledOrders,
    required TResult orElse(),
  }) {
    if (getCanceledOrders != null) {
      return getCanceledOrders(canteenId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCanceledOrders value) getCanceledOrders,
    required TResult Function(_GetMoreCanceledOrders value)
        getMoreCanceledOrders,
  }) {
    return getCanceledOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCanceledOrders value)? getCanceledOrders,
    TResult Function(_GetMoreCanceledOrders value)? getMoreCanceledOrders,
    required TResult orElse(),
  }) {
    if (getCanceledOrders != null) {
      return getCanceledOrders(this);
    }
    return orElse();
  }
}

abstract class _GetCanceledOrders implements OrdersCanceledEvent {
  const factory _GetCanceledOrders(String canteenId) = _$_GetCanceledOrders;

  @override
  String get canteenId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetCanceledOrdersCopyWith<_GetCanceledOrders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetMoreCanceledOrdersCopyWith<$Res>
    implements $OrdersCanceledEventCopyWith<$Res> {
  factory _$GetMoreCanceledOrdersCopyWith(_GetMoreCanceledOrders value,
          $Res Function(_GetMoreCanceledOrders) then) =
      __$GetMoreCanceledOrdersCopyWithImpl<$Res>;
  @override
  $Res call({String canteenId});
}

/// @nodoc
class __$GetMoreCanceledOrdersCopyWithImpl<$Res>
    extends _$OrdersCanceledEventCopyWithImpl<$Res>
    implements _$GetMoreCanceledOrdersCopyWith<$Res> {
  __$GetMoreCanceledOrdersCopyWithImpl(_GetMoreCanceledOrders _value,
      $Res Function(_GetMoreCanceledOrders) _then)
      : super(_value, (v) => _then(v as _GetMoreCanceledOrders));

  @override
  _GetMoreCanceledOrders get _value => super._value as _GetMoreCanceledOrders;

  @override
  $Res call({
    Object? canteenId = freezed,
  }) {
    return _then(_GetMoreCanceledOrders(
      canteenId == freezed
          ? _value.canteenId
          : canteenId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetMoreCanceledOrders implements _GetMoreCanceledOrders {
  const _$_GetMoreCanceledOrders(this.canteenId);

  @override
  final String canteenId;

  @override
  String toString() {
    return 'OrdersCanceledEvent.getMoreCanceledOrders(canteenId: $canteenId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetMoreCanceledOrders &&
            (identical(other.canteenId, canteenId) ||
                const DeepCollectionEquality()
                    .equals(other.canteenId, canteenId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(canteenId);

  @JsonKey(ignore: true)
  @override
  _$GetMoreCanceledOrdersCopyWith<_GetMoreCanceledOrders> get copyWith =>
      __$GetMoreCanceledOrdersCopyWithImpl<_GetMoreCanceledOrders>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String canteenId) getCanceledOrders,
    required TResult Function(String canteenId) getMoreCanceledOrders,
  }) {
    return getMoreCanceledOrders(canteenId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getCanceledOrders,
    TResult Function(String canteenId)? getMoreCanceledOrders,
    required TResult orElse(),
  }) {
    if (getMoreCanceledOrders != null) {
      return getMoreCanceledOrders(canteenId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCanceledOrders value) getCanceledOrders,
    required TResult Function(_GetMoreCanceledOrders value)
        getMoreCanceledOrders,
  }) {
    return getMoreCanceledOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCanceledOrders value)? getCanceledOrders,
    TResult Function(_GetMoreCanceledOrders value)? getMoreCanceledOrders,
    required TResult orElse(),
  }) {
    if (getMoreCanceledOrders != null) {
      return getMoreCanceledOrders(this);
    }
    return orElse();
  }
}

abstract class _GetMoreCanceledOrders implements OrdersCanceledEvent {
  const factory _GetMoreCanceledOrders(String canteenId) =
      _$_GetMoreCanceledOrders;

  @override
  String get canteenId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetMoreCanceledOrdersCopyWith<_GetMoreCanceledOrders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$OrdersCanceledStateTearOff {
  const _$OrdersCanceledStateTearOff();

  _OrdersCanceledState call(
      {bool? isOrdersLoading,
      bool? isAddingMoreLoading,
      Option<FirebaseFailure>? orderFailureOrSuccess,
      List<OrderModel>? canceledOrdersList,
      bool? hasMore}) {
    return _OrdersCanceledState(
      isOrdersLoading: isOrdersLoading,
      isAddingMoreLoading: isAddingMoreLoading,
      orderFailureOrSuccess: orderFailureOrSuccess,
      canceledOrdersList: canceledOrdersList,
      hasMore: hasMore,
    );
  }
}

/// @nodoc
const $OrdersCanceledState = _$OrdersCanceledStateTearOff();

/// @nodoc
mixin _$OrdersCanceledState {
  bool? get isOrdersLoading => throw _privateConstructorUsedError;
  bool? get isAddingMoreLoading => throw _privateConstructorUsedError;
  Option<FirebaseFailure>? get orderFailureOrSuccess =>
      throw _privateConstructorUsedError;
  List<OrderModel>? get canceledOrdersList =>
      throw _privateConstructorUsedError;
  bool? get hasMore => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrdersCanceledStateCopyWith<OrdersCanceledState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersCanceledStateCopyWith<$Res> {
  factory $OrdersCanceledStateCopyWith(
          OrdersCanceledState value, $Res Function(OrdersCanceledState) then) =
      _$OrdersCanceledStateCopyWithImpl<$Res>;
  $Res call(
      {bool? isOrdersLoading,
      bool? isAddingMoreLoading,
      Option<FirebaseFailure>? orderFailureOrSuccess,
      List<OrderModel>? canceledOrdersList,
      bool? hasMore});
}

/// @nodoc
class _$OrdersCanceledStateCopyWithImpl<$Res>
    implements $OrdersCanceledStateCopyWith<$Res> {
  _$OrdersCanceledStateCopyWithImpl(this._value, this._then);

  final OrdersCanceledState _value;
  // ignore: unused_field
  final $Res Function(OrdersCanceledState) _then;

  @override
  $Res call({
    Object? isOrdersLoading = freezed,
    Object? isAddingMoreLoading = freezed,
    Object? orderFailureOrSuccess = freezed,
    Object? canceledOrdersList = freezed,
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
      canceledOrdersList: canceledOrdersList == freezed
          ? _value.canceledOrdersList
          : canceledOrdersList // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>?,
      hasMore: hasMore == freezed
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$OrdersCanceledStateCopyWith<$Res>
    implements $OrdersCanceledStateCopyWith<$Res> {
  factory _$OrdersCanceledStateCopyWith(_OrdersCanceledState value,
          $Res Function(_OrdersCanceledState) then) =
      __$OrdersCanceledStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? isOrdersLoading,
      bool? isAddingMoreLoading,
      Option<FirebaseFailure>? orderFailureOrSuccess,
      List<OrderModel>? canceledOrdersList,
      bool? hasMore});
}

/// @nodoc
class __$OrdersCanceledStateCopyWithImpl<$Res>
    extends _$OrdersCanceledStateCopyWithImpl<$Res>
    implements _$OrdersCanceledStateCopyWith<$Res> {
  __$OrdersCanceledStateCopyWithImpl(
      _OrdersCanceledState _value, $Res Function(_OrdersCanceledState) _then)
      : super(_value, (v) => _then(v as _OrdersCanceledState));

  @override
  _OrdersCanceledState get _value => super._value as _OrdersCanceledState;

  @override
  $Res call({
    Object? isOrdersLoading = freezed,
    Object? isAddingMoreLoading = freezed,
    Object? orderFailureOrSuccess = freezed,
    Object? canceledOrdersList = freezed,
    Object? hasMore = freezed,
  }) {
    return _then(_OrdersCanceledState(
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
      canceledOrdersList: canceledOrdersList == freezed
          ? _value.canceledOrdersList
          : canceledOrdersList // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>?,
      hasMore: hasMore == freezed
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_OrdersCanceledState implements _OrdersCanceledState {
  const _$_OrdersCanceledState(
      {this.isOrdersLoading,
      this.isAddingMoreLoading,
      this.orderFailureOrSuccess,
      this.canceledOrdersList,
      this.hasMore});

  @override
  final bool? isOrdersLoading;
  @override
  final bool? isAddingMoreLoading;
  @override
  final Option<FirebaseFailure>? orderFailureOrSuccess;
  @override
  final List<OrderModel>? canceledOrdersList;
  @override
  final bool? hasMore;

  @override
  String toString() {
    return 'OrdersCanceledState(isOrdersLoading: $isOrdersLoading, isAddingMoreLoading: $isAddingMoreLoading, orderFailureOrSuccess: $orderFailureOrSuccess, canceledOrdersList: $canceledOrdersList, hasMore: $hasMore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrdersCanceledState &&
            (identical(other.isOrdersLoading, isOrdersLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isOrdersLoading, isOrdersLoading)) &&
            (identical(other.isAddingMoreLoading, isAddingMoreLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isAddingMoreLoading, isAddingMoreLoading)) &&
            (identical(other.orderFailureOrSuccess, orderFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.orderFailureOrSuccess, orderFailureOrSuccess)) &&
            (identical(other.canceledOrdersList, canceledOrdersList) ||
                const DeepCollectionEquality()
                    .equals(other.canceledOrdersList, canceledOrdersList)) &&
            (identical(other.hasMore, hasMore) ||
                const DeepCollectionEquality().equals(other.hasMore, hasMore)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isOrdersLoading) ^
      const DeepCollectionEquality().hash(isAddingMoreLoading) ^
      const DeepCollectionEquality().hash(orderFailureOrSuccess) ^
      const DeepCollectionEquality().hash(canceledOrdersList) ^
      const DeepCollectionEquality().hash(hasMore);

  @JsonKey(ignore: true)
  @override
  _$OrdersCanceledStateCopyWith<_OrdersCanceledState> get copyWith =>
      __$OrdersCanceledStateCopyWithImpl<_OrdersCanceledState>(
          this, _$identity);
}

abstract class _OrdersCanceledState implements OrdersCanceledState {
  const factory _OrdersCanceledState(
      {bool? isOrdersLoading,
      bool? isAddingMoreLoading,
      Option<FirebaseFailure>? orderFailureOrSuccess,
      List<OrderModel>? canceledOrdersList,
      bool? hasMore}) = _$_OrdersCanceledState;

  @override
  bool? get isOrdersLoading => throw _privateConstructorUsedError;
  @override
  bool? get isAddingMoreLoading => throw _privateConstructorUsedError;
  @override
  Option<FirebaseFailure>? get orderFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  List<OrderModel>? get canceledOrdersList =>
      throw _privateConstructorUsedError;
  @override
  bool? get hasMore => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrdersCanceledStateCopyWith<_OrdersCanceledState> get copyWith =>
      throw _privateConstructorUsedError;
}
