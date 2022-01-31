// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'orders_preparing_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OrdersPreparingEventTearOff {
  const _$OrdersPreparingEventTearOff();

  _GetPreparingOrders getPreparingOrders(String canteenId) {
    return _GetPreparingOrders(
      canteenId,
    );
  }

  _GetMorePreparingOrders getMorePreparingOrders(String canteenId) {
    return _GetMorePreparingOrders(
      canteenId,
    );
  }

  _PreparedOrder preparedOrder(OrderModel orderModel) {
    return _PreparedOrder(
      orderModel,
    );
  }

  _InsertNewOrder insertNewOrder(OrderModel orderModel) {
    return _InsertNewOrder(
      orderModel,
    );
  }
}

/// @nodoc
const $OrdersPreparingEvent = _$OrdersPreparingEventTearOff();

/// @nodoc
mixin _$OrdersPreparingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String canteenId) getPreparingOrders,
    required TResult Function(String canteenId) getMorePreparingOrders,
    required TResult Function(OrderModel orderModel) preparedOrder,
    required TResult Function(OrderModel orderModel) insertNewOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getPreparingOrders,
    TResult Function(String canteenId)? getMorePreparingOrders,
    TResult Function(OrderModel orderModel)? preparedOrder,
    TResult Function(OrderModel orderModel)? insertNewOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPreparingOrders value) getPreparingOrders,
    required TResult Function(_GetMorePreparingOrders value)
        getMorePreparingOrders,
    required TResult Function(_PreparedOrder value) preparedOrder,
    required TResult Function(_InsertNewOrder value) insertNewOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPreparingOrders value)? getPreparingOrders,
    TResult Function(_GetMorePreparingOrders value)? getMorePreparingOrders,
    TResult Function(_PreparedOrder value)? preparedOrder,
    TResult Function(_InsertNewOrder value)? insertNewOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersPreparingEventCopyWith<$Res> {
  factory $OrdersPreparingEventCopyWith(OrdersPreparingEvent value,
          $Res Function(OrdersPreparingEvent) then) =
      _$OrdersPreparingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrdersPreparingEventCopyWithImpl<$Res>
    implements $OrdersPreparingEventCopyWith<$Res> {
  _$OrdersPreparingEventCopyWithImpl(this._value, this._then);

  final OrdersPreparingEvent _value;
  // ignore: unused_field
  final $Res Function(OrdersPreparingEvent) _then;
}

/// @nodoc
abstract class _$GetPreparingOrdersCopyWith<$Res> {
  factory _$GetPreparingOrdersCopyWith(
          _GetPreparingOrders value, $Res Function(_GetPreparingOrders) then) =
      __$GetPreparingOrdersCopyWithImpl<$Res>;
  $Res call({String canteenId});
}

/// @nodoc
class __$GetPreparingOrdersCopyWithImpl<$Res>
    extends _$OrdersPreparingEventCopyWithImpl<$Res>
    implements _$GetPreparingOrdersCopyWith<$Res> {
  __$GetPreparingOrdersCopyWithImpl(
      _GetPreparingOrders _value, $Res Function(_GetPreparingOrders) _then)
      : super(_value, (v) => _then(v as _GetPreparingOrders));

  @override
  _GetPreparingOrders get _value => super._value as _GetPreparingOrders;

  @override
  $Res call({
    Object? canteenId = freezed,
  }) {
    return _then(_GetPreparingOrders(
      canteenId == freezed
          ? _value.canteenId
          : canteenId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetPreparingOrders implements _GetPreparingOrders {
  const _$_GetPreparingOrders(this.canteenId);

  @override
  final String canteenId;

  @override
  String toString() {
    return 'OrdersPreparingEvent.getPreparingOrders(canteenId: $canteenId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetPreparingOrders &&
            (identical(other.canteenId, canteenId) ||
                const DeepCollectionEquality()
                    .equals(other.canteenId, canteenId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(canteenId);

  @JsonKey(ignore: true)
  @override
  _$GetPreparingOrdersCopyWith<_GetPreparingOrders> get copyWith =>
      __$GetPreparingOrdersCopyWithImpl<_GetPreparingOrders>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String canteenId) getPreparingOrders,
    required TResult Function(String canteenId) getMorePreparingOrders,
    required TResult Function(OrderModel orderModel) preparedOrder,
    required TResult Function(OrderModel orderModel) insertNewOrder,
  }) {
    return getPreparingOrders(canteenId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getPreparingOrders,
    TResult Function(String canteenId)? getMorePreparingOrders,
    TResult Function(OrderModel orderModel)? preparedOrder,
    TResult Function(OrderModel orderModel)? insertNewOrder,
    required TResult orElse(),
  }) {
    if (getPreparingOrders != null) {
      return getPreparingOrders(canteenId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPreparingOrders value) getPreparingOrders,
    required TResult Function(_GetMorePreparingOrders value)
        getMorePreparingOrders,
    required TResult Function(_PreparedOrder value) preparedOrder,
    required TResult Function(_InsertNewOrder value) insertNewOrder,
  }) {
    return getPreparingOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPreparingOrders value)? getPreparingOrders,
    TResult Function(_GetMorePreparingOrders value)? getMorePreparingOrders,
    TResult Function(_PreparedOrder value)? preparedOrder,
    TResult Function(_InsertNewOrder value)? insertNewOrder,
    required TResult orElse(),
  }) {
    if (getPreparingOrders != null) {
      return getPreparingOrders(this);
    }
    return orElse();
  }
}

abstract class _GetPreparingOrders implements OrdersPreparingEvent {
  const factory _GetPreparingOrders(String canteenId) = _$_GetPreparingOrders;

  String get canteenId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetPreparingOrdersCopyWith<_GetPreparingOrders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetMorePreparingOrdersCopyWith<$Res> {
  factory _$GetMorePreparingOrdersCopyWith(_GetMorePreparingOrders value,
          $Res Function(_GetMorePreparingOrders) then) =
      __$GetMorePreparingOrdersCopyWithImpl<$Res>;
  $Res call({String canteenId});
}

/// @nodoc
class __$GetMorePreparingOrdersCopyWithImpl<$Res>
    extends _$OrdersPreparingEventCopyWithImpl<$Res>
    implements _$GetMorePreparingOrdersCopyWith<$Res> {
  __$GetMorePreparingOrdersCopyWithImpl(_GetMorePreparingOrders _value,
      $Res Function(_GetMorePreparingOrders) _then)
      : super(_value, (v) => _then(v as _GetMorePreparingOrders));

  @override
  _GetMorePreparingOrders get _value => super._value as _GetMorePreparingOrders;

  @override
  $Res call({
    Object? canteenId = freezed,
  }) {
    return _then(_GetMorePreparingOrders(
      canteenId == freezed
          ? _value.canteenId
          : canteenId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetMorePreparingOrders implements _GetMorePreparingOrders {
  const _$_GetMorePreparingOrders(this.canteenId);

  @override
  final String canteenId;

  @override
  String toString() {
    return 'OrdersPreparingEvent.getMorePreparingOrders(canteenId: $canteenId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetMorePreparingOrders &&
            (identical(other.canteenId, canteenId) ||
                const DeepCollectionEquality()
                    .equals(other.canteenId, canteenId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(canteenId);

  @JsonKey(ignore: true)
  @override
  _$GetMorePreparingOrdersCopyWith<_GetMorePreparingOrders> get copyWith =>
      __$GetMorePreparingOrdersCopyWithImpl<_GetMorePreparingOrders>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String canteenId) getPreparingOrders,
    required TResult Function(String canteenId) getMorePreparingOrders,
    required TResult Function(OrderModel orderModel) preparedOrder,
    required TResult Function(OrderModel orderModel) insertNewOrder,
  }) {
    return getMorePreparingOrders(canteenId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getPreparingOrders,
    TResult Function(String canteenId)? getMorePreparingOrders,
    TResult Function(OrderModel orderModel)? preparedOrder,
    TResult Function(OrderModel orderModel)? insertNewOrder,
    required TResult orElse(),
  }) {
    if (getMorePreparingOrders != null) {
      return getMorePreparingOrders(canteenId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPreparingOrders value) getPreparingOrders,
    required TResult Function(_GetMorePreparingOrders value)
        getMorePreparingOrders,
    required TResult Function(_PreparedOrder value) preparedOrder,
    required TResult Function(_InsertNewOrder value) insertNewOrder,
  }) {
    return getMorePreparingOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPreparingOrders value)? getPreparingOrders,
    TResult Function(_GetMorePreparingOrders value)? getMorePreparingOrders,
    TResult Function(_PreparedOrder value)? preparedOrder,
    TResult Function(_InsertNewOrder value)? insertNewOrder,
    required TResult orElse(),
  }) {
    if (getMorePreparingOrders != null) {
      return getMorePreparingOrders(this);
    }
    return orElse();
  }
}

abstract class _GetMorePreparingOrders implements OrdersPreparingEvent {
  const factory _GetMorePreparingOrders(String canteenId) =
      _$_GetMorePreparingOrders;

  String get canteenId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetMorePreparingOrdersCopyWith<_GetMorePreparingOrders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PreparedOrderCopyWith<$Res> {
  factory _$PreparedOrderCopyWith(
          _PreparedOrder value, $Res Function(_PreparedOrder) then) =
      __$PreparedOrderCopyWithImpl<$Res>;
  $Res call({OrderModel orderModel});
}

/// @nodoc
class __$PreparedOrderCopyWithImpl<$Res>
    extends _$OrdersPreparingEventCopyWithImpl<$Res>
    implements _$PreparedOrderCopyWith<$Res> {
  __$PreparedOrderCopyWithImpl(
      _PreparedOrder _value, $Res Function(_PreparedOrder) _then)
      : super(_value, (v) => _then(v as _PreparedOrder));

  @override
  _PreparedOrder get _value => super._value as _PreparedOrder;

  @override
  $Res call({
    Object? orderModel = freezed,
  }) {
    return _then(_PreparedOrder(
      orderModel == freezed
          ? _value.orderModel
          : orderModel // ignore: cast_nullable_to_non_nullable
              as OrderModel,
    ));
  }
}

/// @nodoc

class _$_PreparedOrder implements _PreparedOrder {
  const _$_PreparedOrder(this.orderModel);

  @override
  final OrderModel orderModel;

  @override
  String toString() {
    return 'OrdersPreparingEvent.preparedOrder(orderModel: $orderModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PreparedOrder &&
            (identical(other.orderModel, orderModel) ||
                const DeepCollectionEquality()
                    .equals(other.orderModel, orderModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(orderModel);

  @JsonKey(ignore: true)
  @override
  _$PreparedOrderCopyWith<_PreparedOrder> get copyWith =>
      __$PreparedOrderCopyWithImpl<_PreparedOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String canteenId) getPreparingOrders,
    required TResult Function(String canteenId) getMorePreparingOrders,
    required TResult Function(OrderModel orderModel) preparedOrder,
    required TResult Function(OrderModel orderModel) insertNewOrder,
  }) {
    return preparedOrder(orderModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getPreparingOrders,
    TResult Function(String canteenId)? getMorePreparingOrders,
    TResult Function(OrderModel orderModel)? preparedOrder,
    TResult Function(OrderModel orderModel)? insertNewOrder,
    required TResult orElse(),
  }) {
    if (preparedOrder != null) {
      return preparedOrder(orderModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPreparingOrders value) getPreparingOrders,
    required TResult Function(_GetMorePreparingOrders value)
        getMorePreparingOrders,
    required TResult Function(_PreparedOrder value) preparedOrder,
    required TResult Function(_InsertNewOrder value) insertNewOrder,
  }) {
    return preparedOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPreparingOrders value)? getPreparingOrders,
    TResult Function(_GetMorePreparingOrders value)? getMorePreparingOrders,
    TResult Function(_PreparedOrder value)? preparedOrder,
    TResult Function(_InsertNewOrder value)? insertNewOrder,
    required TResult orElse(),
  }) {
    if (preparedOrder != null) {
      return preparedOrder(this);
    }
    return orElse();
  }
}

abstract class _PreparedOrder implements OrdersPreparingEvent {
  const factory _PreparedOrder(OrderModel orderModel) = _$_PreparedOrder;

  OrderModel get orderModel => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PreparedOrderCopyWith<_PreparedOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InsertNewOrderCopyWith<$Res> {
  factory _$InsertNewOrderCopyWith(
          _InsertNewOrder value, $Res Function(_InsertNewOrder) then) =
      __$InsertNewOrderCopyWithImpl<$Res>;
  $Res call({OrderModel orderModel});
}

/// @nodoc
class __$InsertNewOrderCopyWithImpl<$Res>
    extends _$OrdersPreparingEventCopyWithImpl<$Res>
    implements _$InsertNewOrderCopyWith<$Res> {
  __$InsertNewOrderCopyWithImpl(
      _InsertNewOrder _value, $Res Function(_InsertNewOrder) _then)
      : super(_value, (v) => _then(v as _InsertNewOrder));

  @override
  _InsertNewOrder get _value => super._value as _InsertNewOrder;

  @override
  $Res call({
    Object? orderModel = freezed,
  }) {
    return _then(_InsertNewOrder(
      orderModel == freezed
          ? _value.orderModel
          : orderModel // ignore: cast_nullable_to_non_nullable
              as OrderModel,
    ));
  }
}

/// @nodoc

class _$_InsertNewOrder implements _InsertNewOrder {
  const _$_InsertNewOrder(this.orderModel);

  @override
  final OrderModel orderModel;

  @override
  String toString() {
    return 'OrdersPreparingEvent.insertNewOrder(orderModel: $orderModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InsertNewOrder &&
            (identical(other.orderModel, orderModel) ||
                const DeepCollectionEquality()
                    .equals(other.orderModel, orderModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(orderModel);

  @JsonKey(ignore: true)
  @override
  _$InsertNewOrderCopyWith<_InsertNewOrder> get copyWith =>
      __$InsertNewOrderCopyWithImpl<_InsertNewOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String canteenId) getPreparingOrders,
    required TResult Function(String canteenId) getMorePreparingOrders,
    required TResult Function(OrderModel orderModel) preparedOrder,
    required TResult Function(OrderModel orderModel) insertNewOrder,
  }) {
    return insertNewOrder(orderModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getPreparingOrders,
    TResult Function(String canteenId)? getMorePreparingOrders,
    TResult Function(OrderModel orderModel)? preparedOrder,
    TResult Function(OrderModel orderModel)? insertNewOrder,
    required TResult orElse(),
  }) {
    if (insertNewOrder != null) {
      return insertNewOrder(orderModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPreparingOrders value) getPreparingOrders,
    required TResult Function(_GetMorePreparingOrders value)
        getMorePreparingOrders,
    required TResult Function(_PreparedOrder value) preparedOrder,
    required TResult Function(_InsertNewOrder value) insertNewOrder,
  }) {
    return insertNewOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPreparingOrders value)? getPreparingOrders,
    TResult Function(_GetMorePreparingOrders value)? getMorePreparingOrders,
    TResult Function(_PreparedOrder value)? preparedOrder,
    TResult Function(_InsertNewOrder value)? insertNewOrder,
    required TResult orElse(),
  }) {
    if (insertNewOrder != null) {
      return insertNewOrder(this);
    }
    return orElse();
  }
}

abstract class _InsertNewOrder implements OrdersPreparingEvent {
  const factory _InsertNewOrder(OrderModel orderModel) = _$_InsertNewOrder;

  OrderModel get orderModel => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InsertNewOrderCopyWith<_InsertNewOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$OrdersPreparingStateTearOff {
  const _$OrdersPreparingStateTearOff();

  _OrdersPreparingState call(
      {bool? isOrdersLoading,
      bool? isAddingMoreLoading,
      Option<FirebaseFailure>? orderFailureOrSuccess,
      Option<Either<FirebaseFailure, Unit>>? orderPreparedFailureOrSuccess,
      List<OrderModel>? ordersList,
      bool? hasMore}) {
    return _OrdersPreparingState(
      isOrdersLoading: isOrdersLoading,
      isAddingMoreLoading: isAddingMoreLoading,
      orderFailureOrSuccess: orderFailureOrSuccess,
      orderPreparedFailureOrSuccess: orderPreparedFailureOrSuccess,
      ordersList: ordersList,
      hasMore: hasMore,
    );
  }
}

/// @nodoc
const $OrdersPreparingState = _$OrdersPreparingStateTearOff();

/// @nodoc
mixin _$OrdersPreparingState {
  bool? get isOrdersLoading => throw _privateConstructorUsedError;
  bool? get isAddingMoreLoading => throw _privateConstructorUsedError;
  Option<FirebaseFailure>? get orderFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Option<Either<FirebaseFailure, Unit>>? get orderPreparedFailureOrSuccess =>
      throw _privateConstructorUsedError;
  List<OrderModel>? get ordersList => throw _privateConstructorUsedError;
  bool? get hasMore => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrdersPreparingStateCopyWith<OrdersPreparingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersPreparingStateCopyWith<$Res> {
  factory $OrdersPreparingStateCopyWith(OrdersPreparingState value,
          $Res Function(OrdersPreparingState) then) =
      _$OrdersPreparingStateCopyWithImpl<$Res>;
  $Res call(
      {bool? isOrdersLoading,
      bool? isAddingMoreLoading,
      Option<FirebaseFailure>? orderFailureOrSuccess,
      Option<Either<FirebaseFailure, Unit>>? orderPreparedFailureOrSuccess,
      List<OrderModel>? ordersList,
      bool? hasMore});
}

/// @nodoc
class _$OrdersPreparingStateCopyWithImpl<$Res>
    implements $OrdersPreparingStateCopyWith<$Res> {
  _$OrdersPreparingStateCopyWithImpl(this._value, this._then);

  final OrdersPreparingState _value;
  // ignore: unused_field
  final $Res Function(OrdersPreparingState) _then;

  @override
  $Res call({
    Object? isOrdersLoading = freezed,
    Object? isAddingMoreLoading = freezed,
    Object? orderFailureOrSuccess = freezed,
    Object? orderPreparedFailureOrSuccess = freezed,
    Object? ordersList = freezed,
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
      orderPreparedFailureOrSuccess: orderPreparedFailureOrSuccess == freezed
          ? _value.orderPreparedFailureOrSuccess
          : orderPreparedFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, Unit>>?,
      ordersList: ordersList == freezed
          ? _value.ordersList
          : ordersList // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>?,
      hasMore: hasMore == freezed
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$OrdersPreparingStateCopyWith<$Res>
    implements $OrdersPreparingStateCopyWith<$Res> {
  factory _$OrdersPreparingStateCopyWith(_OrdersPreparingState value,
          $Res Function(_OrdersPreparingState) then) =
      __$OrdersPreparingStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? isOrdersLoading,
      bool? isAddingMoreLoading,
      Option<FirebaseFailure>? orderFailureOrSuccess,
      Option<Either<FirebaseFailure, Unit>>? orderPreparedFailureOrSuccess,
      List<OrderModel>? ordersList,
      bool? hasMore});
}

/// @nodoc
class __$OrdersPreparingStateCopyWithImpl<$Res>
    extends _$OrdersPreparingStateCopyWithImpl<$Res>
    implements _$OrdersPreparingStateCopyWith<$Res> {
  __$OrdersPreparingStateCopyWithImpl(
      _OrdersPreparingState _value, $Res Function(_OrdersPreparingState) _then)
      : super(_value, (v) => _then(v as _OrdersPreparingState));

  @override
  _OrdersPreparingState get _value => super._value as _OrdersPreparingState;

  @override
  $Res call({
    Object? isOrdersLoading = freezed,
    Object? isAddingMoreLoading = freezed,
    Object? orderFailureOrSuccess = freezed,
    Object? orderPreparedFailureOrSuccess = freezed,
    Object? ordersList = freezed,
    Object? hasMore = freezed,
  }) {
    return _then(_OrdersPreparingState(
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
      orderPreparedFailureOrSuccess: orderPreparedFailureOrSuccess == freezed
          ? _value.orderPreparedFailureOrSuccess
          : orderPreparedFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, Unit>>?,
      ordersList: ordersList == freezed
          ? _value.ordersList
          : ordersList // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>?,
      hasMore: hasMore == freezed
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_OrdersPreparingState implements _OrdersPreparingState {
  const _$_OrdersPreparingState(
      {this.isOrdersLoading,
      this.isAddingMoreLoading,
      this.orderFailureOrSuccess,
      this.orderPreparedFailureOrSuccess,
      this.ordersList,
      this.hasMore});

  @override
  final bool? isOrdersLoading;
  @override
  final bool? isAddingMoreLoading;
  @override
  final Option<FirebaseFailure>? orderFailureOrSuccess;
  @override
  final Option<Either<FirebaseFailure, Unit>>? orderPreparedFailureOrSuccess;
  @override
  final List<OrderModel>? ordersList;
  @override
  final bool? hasMore;

  @override
  String toString() {
    return 'OrdersPreparingState(isOrdersLoading: $isOrdersLoading, isAddingMoreLoading: $isAddingMoreLoading, orderFailureOrSuccess: $orderFailureOrSuccess, orderPreparedFailureOrSuccess: $orderPreparedFailureOrSuccess, ordersList: $ordersList, hasMore: $hasMore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrdersPreparingState &&
            (identical(other.isOrdersLoading, isOrdersLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isOrdersLoading, isOrdersLoading)) &&
            (identical(other.isAddingMoreLoading, isAddingMoreLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isAddingMoreLoading, isAddingMoreLoading)) &&
            (identical(other.orderFailureOrSuccess, orderFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.orderFailureOrSuccess, orderFailureOrSuccess)) &&
            (identical(other.orderPreparedFailureOrSuccess,
                    orderPreparedFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.orderPreparedFailureOrSuccess,
                    orderPreparedFailureOrSuccess)) &&
            (identical(other.ordersList, ordersList) ||
                const DeepCollectionEquality()
                    .equals(other.ordersList, ordersList)) &&
            (identical(other.hasMore, hasMore) ||
                const DeepCollectionEquality().equals(other.hasMore, hasMore)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isOrdersLoading) ^
      const DeepCollectionEquality().hash(isAddingMoreLoading) ^
      const DeepCollectionEquality().hash(orderFailureOrSuccess) ^
      const DeepCollectionEquality().hash(orderPreparedFailureOrSuccess) ^
      const DeepCollectionEquality().hash(ordersList) ^
      const DeepCollectionEquality().hash(hasMore);

  @JsonKey(ignore: true)
  @override
  _$OrdersPreparingStateCopyWith<_OrdersPreparingState> get copyWith =>
      __$OrdersPreparingStateCopyWithImpl<_OrdersPreparingState>(
          this, _$identity);
}

abstract class _OrdersPreparingState implements OrdersPreparingState {
  const factory _OrdersPreparingState(
      {bool? isOrdersLoading,
      bool? isAddingMoreLoading,
      Option<FirebaseFailure>? orderFailureOrSuccess,
      Option<Either<FirebaseFailure, Unit>>? orderPreparedFailureOrSuccess,
      List<OrderModel>? ordersList,
      bool? hasMore}) = _$_OrdersPreparingState;

  @override
  bool? get isOrdersLoading => throw _privateConstructorUsedError;
  @override
  bool? get isAddingMoreLoading => throw _privateConstructorUsedError;
  @override
  Option<FirebaseFailure>? get orderFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<FirebaseFailure, Unit>>? get orderPreparedFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  List<OrderModel>? get ordersList => throw _privateConstructorUsedError;
  @override
  bool? get hasMore => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrdersPreparingStateCopyWith<_OrdersPreparingState> get copyWith =>
      throw _privateConstructorUsedError;
}
