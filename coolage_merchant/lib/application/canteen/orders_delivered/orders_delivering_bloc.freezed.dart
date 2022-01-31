// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'orders_delivering_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OrdersDeliveringEventTearOff {
  const _$OrdersDeliveringEventTearOff();

  _GetDeliveringOrders getDeliveringOrders(String canteenId) {
    return _GetDeliveringOrders(
      canteenId,
    );
  }

  _GetMoreDeliveringOrders getMoreDeliveringOrders(String canteenId) {
    return _GetMoreDeliveringOrders(
      canteenId,
    );
  }

  _DeliveringOrder deliveredOrder(OrderModel orderModel) {
    return _DeliveringOrder(
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
const $OrdersDeliveringEvent = _$OrdersDeliveringEventTearOff();

/// @nodoc
mixin _$OrdersDeliveringEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String canteenId) getDeliveringOrders,
    required TResult Function(String canteenId) getMoreDeliveringOrders,
    required TResult Function(OrderModel orderModel) deliveredOrder,
    required TResult Function(OrderModel orderModel) insertNewOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getDeliveringOrders,
    TResult Function(String canteenId)? getMoreDeliveringOrders,
    TResult Function(OrderModel orderModel)? deliveredOrder,
    TResult Function(OrderModel orderModel)? insertNewOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDeliveringOrders value) getDeliveringOrders,
    required TResult Function(_GetMoreDeliveringOrders value)
        getMoreDeliveringOrders,
    required TResult Function(_DeliveringOrder value) deliveredOrder,
    required TResult Function(_InsertNewOrder value) insertNewOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDeliveringOrders value)? getDeliveringOrders,
    TResult Function(_GetMoreDeliveringOrders value)? getMoreDeliveringOrders,
    TResult Function(_DeliveringOrder value)? deliveredOrder,
    TResult Function(_InsertNewOrder value)? insertNewOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersDeliveringEventCopyWith<$Res> {
  factory $OrdersDeliveringEventCopyWith(OrdersDeliveringEvent value,
          $Res Function(OrdersDeliveringEvent) then) =
      _$OrdersDeliveringEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrdersDeliveringEventCopyWithImpl<$Res>
    implements $OrdersDeliveringEventCopyWith<$Res> {
  _$OrdersDeliveringEventCopyWithImpl(this._value, this._then);

  final OrdersDeliveringEvent _value;
  // ignore: unused_field
  final $Res Function(OrdersDeliveringEvent) _then;
}

/// @nodoc
abstract class _$GetDeliveringOrdersCopyWith<$Res> {
  factory _$GetDeliveringOrdersCopyWith(_GetDeliveringOrders value,
          $Res Function(_GetDeliveringOrders) then) =
      __$GetDeliveringOrdersCopyWithImpl<$Res>;
  $Res call({String canteenId});
}

/// @nodoc
class __$GetDeliveringOrdersCopyWithImpl<$Res>
    extends _$OrdersDeliveringEventCopyWithImpl<$Res>
    implements _$GetDeliveringOrdersCopyWith<$Res> {
  __$GetDeliveringOrdersCopyWithImpl(
      _GetDeliveringOrders _value, $Res Function(_GetDeliveringOrders) _then)
      : super(_value, (v) => _then(v as _GetDeliveringOrders));

  @override
  _GetDeliveringOrders get _value => super._value as _GetDeliveringOrders;

  @override
  $Res call({
    Object? canteenId = freezed,
  }) {
    return _then(_GetDeliveringOrders(
      canteenId == freezed
          ? _value.canteenId
          : canteenId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetDeliveringOrders implements _GetDeliveringOrders {
  const _$_GetDeliveringOrders(this.canteenId);

  @override
  final String canteenId;

  @override
  String toString() {
    return 'OrdersDeliveringEvent.getDeliveringOrders(canteenId: $canteenId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetDeliveringOrders &&
            (identical(other.canteenId, canteenId) ||
                const DeepCollectionEquality()
                    .equals(other.canteenId, canteenId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(canteenId);

  @JsonKey(ignore: true)
  @override
  _$GetDeliveringOrdersCopyWith<_GetDeliveringOrders> get copyWith =>
      __$GetDeliveringOrdersCopyWithImpl<_GetDeliveringOrders>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String canteenId) getDeliveringOrders,
    required TResult Function(String canteenId) getMoreDeliveringOrders,
    required TResult Function(OrderModel orderModel) deliveredOrder,
    required TResult Function(OrderModel orderModel) insertNewOrder,
  }) {
    return getDeliveringOrders(canteenId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getDeliveringOrders,
    TResult Function(String canteenId)? getMoreDeliveringOrders,
    TResult Function(OrderModel orderModel)? deliveredOrder,
    TResult Function(OrderModel orderModel)? insertNewOrder,
    required TResult orElse(),
  }) {
    if (getDeliveringOrders != null) {
      return getDeliveringOrders(canteenId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDeliveringOrders value) getDeliveringOrders,
    required TResult Function(_GetMoreDeliveringOrders value)
        getMoreDeliveringOrders,
    required TResult Function(_DeliveringOrder value) deliveredOrder,
    required TResult Function(_InsertNewOrder value) insertNewOrder,
  }) {
    return getDeliveringOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDeliveringOrders value)? getDeliveringOrders,
    TResult Function(_GetMoreDeliveringOrders value)? getMoreDeliveringOrders,
    TResult Function(_DeliveringOrder value)? deliveredOrder,
    TResult Function(_InsertNewOrder value)? insertNewOrder,
    required TResult orElse(),
  }) {
    if (getDeliveringOrders != null) {
      return getDeliveringOrders(this);
    }
    return orElse();
  }
}

abstract class _GetDeliveringOrders implements OrdersDeliveringEvent {
  const factory _GetDeliveringOrders(String canteenId) = _$_GetDeliveringOrders;

  String get canteenId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetDeliveringOrdersCopyWith<_GetDeliveringOrders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetMoreDeliveringOrdersCopyWith<$Res> {
  factory _$GetMoreDeliveringOrdersCopyWith(_GetMoreDeliveringOrders value,
          $Res Function(_GetMoreDeliveringOrders) then) =
      __$GetMoreDeliveringOrdersCopyWithImpl<$Res>;
  $Res call({String canteenId});
}

/// @nodoc
class __$GetMoreDeliveringOrdersCopyWithImpl<$Res>
    extends _$OrdersDeliveringEventCopyWithImpl<$Res>
    implements _$GetMoreDeliveringOrdersCopyWith<$Res> {
  __$GetMoreDeliveringOrdersCopyWithImpl(_GetMoreDeliveringOrders _value,
      $Res Function(_GetMoreDeliveringOrders) _then)
      : super(_value, (v) => _then(v as _GetMoreDeliveringOrders));

  @override
  _GetMoreDeliveringOrders get _value =>
      super._value as _GetMoreDeliveringOrders;

  @override
  $Res call({
    Object? canteenId = freezed,
  }) {
    return _then(_GetMoreDeliveringOrders(
      canteenId == freezed
          ? _value.canteenId
          : canteenId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetMoreDeliveringOrders implements _GetMoreDeliveringOrders {
  const _$_GetMoreDeliveringOrders(this.canteenId);

  @override
  final String canteenId;

  @override
  String toString() {
    return 'OrdersDeliveringEvent.getMoreDeliveringOrders(canteenId: $canteenId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetMoreDeliveringOrders &&
            (identical(other.canteenId, canteenId) ||
                const DeepCollectionEquality()
                    .equals(other.canteenId, canteenId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(canteenId);

  @JsonKey(ignore: true)
  @override
  _$GetMoreDeliveringOrdersCopyWith<_GetMoreDeliveringOrders> get copyWith =>
      __$GetMoreDeliveringOrdersCopyWithImpl<_GetMoreDeliveringOrders>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String canteenId) getDeliveringOrders,
    required TResult Function(String canteenId) getMoreDeliveringOrders,
    required TResult Function(OrderModel orderModel) deliveredOrder,
    required TResult Function(OrderModel orderModel) insertNewOrder,
  }) {
    return getMoreDeliveringOrders(canteenId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getDeliveringOrders,
    TResult Function(String canteenId)? getMoreDeliveringOrders,
    TResult Function(OrderModel orderModel)? deliveredOrder,
    TResult Function(OrderModel orderModel)? insertNewOrder,
    required TResult orElse(),
  }) {
    if (getMoreDeliveringOrders != null) {
      return getMoreDeliveringOrders(canteenId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDeliveringOrders value) getDeliveringOrders,
    required TResult Function(_GetMoreDeliveringOrders value)
        getMoreDeliveringOrders,
    required TResult Function(_DeliveringOrder value) deliveredOrder,
    required TResult Function(_InsertNewOrder value) insertNewOrder,
  }) {
    return getMoreDeliveringOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDeliveringOrders value)? getDeliveringOrders,
    TResult Function(_GetMoreDeliveringOrders value)? getMoreDeliveringOrders,
    TResult Function(_DeliveringOrder value)? deliveredOrder,
    TResult Function(_InsertNewOrder value)? insertNewOrder,
    required TResult orElse(),
  }) {
    if (getMoreDeliveringOrders != null) {
      return getMoreDeliveringOrders(this);
    }
    return orElse();
  }
}

abstract class _GetMoreDeliveringOrders implements OrdersDeliveringEvent {
  const factory _GetMoreDeliveringOrders(String canteenId) =
      _$_GetMoreDeliveringOrders;

  String get canteenId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetMoreDeliveringOrdersCopyWith<_GetMoreDeliveringOrders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeliveringOrderCopyWith<$Res> {
  factory _$DeliveringOrderCopyWith(
          _DeliveringOrder value, $Res Function(_DeliveringOrder) then) =
      __$DeliveringOrderCopyWithImpl<$Res>;
  $Res call({OrderModel orderModel});
}

/// @nodoc
class __$DeliveringOrderCopyWithImpl<$Res>
    extends _$OrdersDeliveringEventCopyWithImpl<$Res>
    implements _$DeliveringOrderCopyWith<$Res> {
  __$DeliveringOrderCopyWithImpl(
      _DeliveringOrder _value, $Res Function(_DeliveringOrder) _then)
      : super(_value, (v) => _then(v as _DeliveringOrder));

  @override
  _DeliveringOrder get _value => super._value as _DeliveringOrder;

  @override
  $Res call({
    Object? orderModel = freezed,
  }) {
    return _then(_DeliveringOrder(
      orderModel == freezed
          ? _value.orderModel
          : orderModel // ignore: cast_nullable_to_non_nullable
              as OrderModel,
    ));
  }
}

/// @nodoc

class _$_DeliveringOrder implements _DeliveringOrder {
  const _$_DeliveringOrder(this.orderModel);

  @override
  final OrderModel orderModel;

  @override
  String toString() {
    return 'OrdersDeliveringEvent.deliveredOrder(orderModel: $orderModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeliveringOrder &&
            (identical(other.orderModel, orderModel) ||
                const DeepCollectionEquality()
                    .equals(other.orderModel, orderModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(orderModel);

  @JsonKey(ignore: true)
  @override
  _$DeliveringOrderCopyWith<_DeliveringOrder> get copyWith =>
      __$DeliveringOrderCopyWithImpl<_DeliveringOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String canteenId) getDeliveringOrders,
    required TResult Function(String canteenId) getMoreDeliveringOrders,
    required TResult Function(OrderModel orderModel) deliveredOrder,
    required TResult Function(OrderModel orderModel) insertNewOrder,
  }) {
    return deliveredOrder(orderModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getDeliveringOrders,
    TResult Function(String canteenId)? getMoreDeliveringOrders,
    TResult Function(OrderModel orderModel)? deliveredOrder,
    TResult Function(OrderModel orderModel)? insertNewOrder,
    required TResult orElse(),
  }) {
    if (deliveredOrder != null) {
      return deliveredOrder(orderModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDeliveringOrders value) getDeliveringOrders,
    required TResult Function(_GetMoreDeliveringOrders value)
        getMoreDeliveringOrders,
    required TResult Function(_DeliveringOrder value) deliveredOrder,
    required TResult Function(_InsertNewOrder value) insertNewOrder,
  }) {
    return deliveredOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDeliveringOrders value)? getDeliveringOrders,
    TResult Function(_GetMoreDeliveringOrders value)? getMoreDeliveringOrders,
    TResult Function(_DeliveringOrder value)? deliveredOrder,
    TResult Function(_InsertNewOrder value)? insertNewOrder,
    required TResult orElse(),
  }) {
    if (deliveredOrder != null) {
      return deliveredOrder(this);
    }
    return orElse();
  }
}

abstract class _DeliveringOrder implements OrdersDeliveringEvent {
  const factory _DeliveringOrder(OrderModel orderModel) = _$_DeliveringOrder;

  OrderModel get orderModel => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeliveringOrderCopyWith<_DeliveringOrder> get copyWith =>
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
    extends _$OrdersDeliveringEventCopyWithImpl<$Res>
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
    return 'OrdersDeliveringEvent.insertNewOrder(orderModel: $orderModel)';
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
    required TResult Function(String canteenId) getDeliveringOrders,
    required TResult Function(String canteenId) getMoreDeliveringOrders,
    required TResult Function(OrderModel orderModel) deliveredOrder,
    required TResult Function(OrderModel orderModel) insertNewOrder,
  }) {
    return insertNewOrder(orderModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getDeliveringOrders,
    TResult Function(String canteenId)? getMoreDeliveringOrders,
    TResult Function(OrderModel orderModel)? deliveredOrder,
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
    required TResult Function(_GetDeliveringOrders value) getDeliveringOrders,
    required TResult Function(_GetMoreDeliveringOrders value)
        getMoreDeliveringOrders,
    required TResult Function(_DeliveringOrder value) deliveredOrder,
    required TResult Function(_InsertNewOrder value) insertNewOrder,
  }) {
    return insertNewOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDeliveringOrders value)? getDeliveringOrders,
    TResult Function(_GetMoreDeliveringOrders value)? getMoreDeliveringOrders,
    TResult Function(_DeliveringOrder value)? deliveredOrder,
    TResult Function(_InsertNewOrder value)? insertNewOrder,
    required TResult orElse(),
  }) {
    if (insertNewOrder != null) {
      return insertNewOrder(this);
    }
    return orElse();
  }
}

abstract class _InsertNewOrder implements OrdersDeliveringEvent {
  const factory _InsertNewOrder(OrderModel orderModel) = _$_InsertNewOrder;

  OrderModel get orderModel => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InsertNewOrderCopyWith<_InsertNewOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$OrdersDeliveringStateTearOff {
  const _$OrdersDeliveringStateTearOff();

  _OrdersDeliveringState call(
      {bool? isOrdersLoading,
      bool? isAddingMoreLoading,
      Option<FirebaseFailure>? orderFailureOrSuccess,
      Option<Either<FirebaseFailure, Unit>>? orderDeliverFailureOrSuccess,
      List<OrderModel>? ordersList,
      bool? hasMore}) {
    return _OrdersDeliveringState(
      isOrdersLoading: isOrdersLoading,
      isAddingMoreLoading: isAddingMoreLoading,
      orderFailureOrSuccess: orderFailureOrSuccess,
      orderDeliverFailureOrSuccess: orderDeliverFailureOrSuccess,
      ordersList: ordersList,
      hasMore: hasMore,
    );
  }
}

/// @nodoc
const $OrdersDeliveringState = _$OrdersDeliveringStateTearOff();

/// @nodoc
mixin _$OrdersDeliveringState {
  bool? get isOrdersLoading => throw _privateConstructorUsedError;
  bool? get isAddingMoreLoading => throw _privateConstructorUsedError;
  Option<FirebaseFailure>? get orderFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Option<Either<FirebaseFailure, Unit>>? get orderDeliverFailureOrSuccess =>
      throw _privateConstructorUsedError;
  List<OrderModel>? get ordersList => throw _privateConstructorUsedError;
  bool? get hasMore => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrdersDeliveringStateCopyWith<OrdersDeliveringState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersDeliveringStateCopyWith<$Res> {
  factory $OrdersDeliveringStateCopyWith(OrdersDeliveringState value,
          $Res Function(OrdersDeliveringState) then) =
      _$OrdersDeliveringStateCopyWithImpl<$Res>;
  $Res call(
      {bool? isOrdersLoading,
      bool? isAddingMoreLoading,
      Option<FirebaseFailure>? orderFailureOrSuccess,
      Option<Either<FirebaseFailure, Unit>>? orderDeliverFailureOrSuccess,
      List<OrderModel>? ordersList,
      bool? hasMore});
}

/// @nodoc
class _$OrdersDeliveringStateCopyWithImpl<$Res>
    implements $OrdersDeliveringStateCopyWith<$Res> {
  _$OrdersDeliveringStateCopyWithImpl(this._value, this._then);

  final OrdersDeliveringState _value;
  // ignore: unused_field
  final $Res Function(OrdersDeliveringState) _then;

  @override
  $Res call({
    Object? isOrdersLoading = freezed,
    Object? isAddingMoreLoading = freezed,
    Object? orderFailureOrSuccess = freezed,
    Object? orderDeliverFailureOrSuccess = freezed,
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
      orderDeliverFailureOrSuccess: orderDeliverFailureOrSuccess == freezed
          ? _value.orderDeliverFailureOrSuccess
          : orderDeliverFailureOrSuccess // ignore: cast_nullable_to_non_nullable
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
abstract class _$OrdersDeliveringStateCopyWith<$Res>
    implements $OrdersDeliveringStateCopyWith<$Res> {
  factory _$OrdersDeliveringStateCopyWith(_OrdersDeliveringState value,
          $Res Function(_OrdersDeliveringState) then) =
      __$OrdersDeliveringStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? isOrdersLoading,
      bool? isAddingMoreLoading,
      Option<FirebaseFailure>? orderFailureOrSuccess,
      Option<Either<FirebaseFailure, Unit>>? orderDeliverFailureOrSuccess,
      List<OrderModel>? ordersList,
      bool? hasMore});
}

/// @nodoc
class __$OrdersDeliveringStateCopyWithImpl<$Res>
    extends _$OrdersDeliveringStateCopyWithImpl<$Res>
    implements _$OrdersDeliveringStateCopyWith<$Res> {
  __$OrdersDeliveringStateCopyWithImpl(_OrdersDeliveringState _value,
      $Res Function(_OrdersDeliveringState) _then)
      : super(_value, (v) => _then(v as _OrdersDeliveringState));

  @override
  _OrdersDeliveringState get _value => super._value as _OrdersDeliveringState;

  @override
  $Res call({
    Object? isOrdersLoading = freezed,
    Object? isAddingMoreLoading = freezed,
    Object? orderFailureOrSuccess = freezed,
    Object? orderDeliverFailureOrSuccess = freezed,
    Object? ordersList = freezed,
    Object? hasMore = freezed,
  }) {
    return _then(_OrdersDeliveringState(
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
      orderDeliverFailureOrSuccess: orderDeliverFailureOrSuccess == freezed
          ? _value.orderDeliverFailureOrSuccess
          : orderDeliverFailureOrSuccess // ignore: cast_nullable_to_non_nullable
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

class _$_OrdersDeliveringState implements _OrdersDeliveringState {
  const _$_OrdersDeliveringState(
      {this.isOrdersLoading,
      this.isAddingMoreLoading,
      this.orderFailureOrSuccess,
      this.orderDeliverFailureOrSuccess,
      this.ordersList,
      this.hasMore});

  @override
  final bool? isOrdersLoading;
  @override
  final bool? isAddingMoreLoading;
  @override
  final Option<FirebaseFailure>? orderFailureOrSuccess;
  @override
  final Option<Either<FirebaseFailure, Unit>>? orderDeliverFailureOrSuccess;
  @override
  final List<OrderModel>? ordersList;
  @override
  final bool? hasMore;

  @override
  String toString() {
    return 'OrdersDeliveringState(isOrdersLoading: $isOrdersLoading, isAddingMoreLoading: $isAddingMoreLoading, orderFailureOrSuccess: $orderFailureOrSuccess, orderDeliverFailureOrSuccess: $orderDeliverFailureOrSuccess, ordersList: $ordersList, hasMore: $hasMore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrdersDeliveringState &&
            (identical(other.isOrdersLoading, isOrdersLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isOrdersLoading, isOrdersLoading)) &&
            (identical(other.isAddingMoreLoading, isAddingMoreLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isAddingMoreLoading, isAddingMoreLoading)) &&
            (identical(other.orderFailureOrSuccess, orderFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.orderFailureOrSuccess, orderFailureOrSuccess)) &&
            (identical(other.orderDeliverFailureOrSuccess,
                    orderDeliverFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.orderDeliverFailureOrSuccess,
                    orderDeliverFailureOrSuccess)) &&
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
      const DeepCollectionEquality().hash(orderDeliverFailureOrSuccess) ^
      const DeepCollectionEquality().hash(ordersList) ^
      const DeepCollectionEquality().hash(hasMore);

  @JsonKey(ignore: true)
  @override
  _$OrdersDeliveringStateCopyWith<_OrdersDeliveringState> get copyWith =>
      __$OrdersDeliveringStateCopyWithImpl<_OrdersDeliveringState>(
          this, _$identity);
}

abstract class _OrdersDeliveringState implements OrdersDeliveringState {
  const factory _OrdersDeliveringState(
      {bool? isOrdersLoading,
      bool? isAddingMoreLoading,
      Option<FirebaseFailure>? orderFailureOrSuccess,
      Option<Either<FirebaseFailure, Unit>>? orderDeliverFailureOrSuccess,
      List<OrderModel>? ordersList,
      bool? hasMore}) = _$_OrdersDeliveringState;

  @override
  bool? get isOrdersLoading => throw _privateConstructorUsedError;
  @override
  bool? get isAddingMoreLoading => throw _privateConstructorUsedError;
  @override
  Option<FirebaseFailure>? get orderFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<FirebaseFailure, Unit>>? get orderDeliverFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  List<OrderModel>? get ordersList => throw _privateConstructorUsedError;
  @override
  bool? get hasMore => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrdersDeliveringStateCopyWith<_OrdersDeliveringState> get copyWith =>
      throw _privateConstructorUsedError;
}
