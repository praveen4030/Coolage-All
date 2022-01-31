// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'orders_pending_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OrdersPendingEventTearOff {
  const _$OrdersPendingEventTearOff();

  _GetPendingOrders getPendingOrders(String canteenId) {
    return _GetPendingOrders(
      canteenId,
    );
  }

  _GetMorePendingOrders getMorePendingOrders(String canteenId) {
    return _GetMorePendingOrders(
      canteenId,
    );
  }

  _AcceptOrder acceptOrder(OrderModel orderModel) {
    return _AcceptOrder(
      orderModel,
    );
  }

  _CancelOrder cancelOrder(OrderModel orderModel) {
    return _CancelOrder(
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
const $OrdersPendingEvent = _$OrdersPendingEventTearOff();

/// @nodoc
mixin _$OrdersPendingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String canteenId) getPendingOrders,
    required TResult Function(String canteenId) getMorePendingOrders,
    required TResult Function(OrderModel orderModel) acceptOrder,
    required TResult Function(OrderModel orderModel) cancelOrder,
    required TResult Function(OrderModel orderModel) insertNewOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getPendingOrders,
    TResult Function(String canteenId)? getMorePendingOrders,
    TResult Function(OrderModel orderModel)? acceptOrder,
    TResult Function(OrderModel orderModel)? cancelOrder,
    TResult Function(OrderModel orderModel)? insertNewOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPendingOrders value) getPendingOrders,
    required TResult Function(_GetMorePendingOrders value) getMorePendingOrders,
    required TResult Function(_AcceptOrder value) acceptOrder,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_InsertNewOrder value) insertNewOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPendingOrders value)? getPendingOrders,
    TResult Function(_GetMorePendingOrders value)? getMorePendingOrders,
    TResult Function(_AcceptOrder value)? acceptOrder,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_InsertNewOrder value)? insertNewOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersPendingEventCopyWith<$Res> {
  factory $OrdersPendingEventCopyWith(
          OrdersPendingEvent value, $Res Function(OrdersPendingEvent) then) =
      _$OrdersPendingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrdersPendingEventCopyWithImpl<$Res>
    implements $OrdersPendingEventCopyWith<$Res> {
  _$OrdersPendingEventCopyWithImpl(this._value, this._then);

  final OrdersPendingEvent _value;
  // ignore: unused_field
  final $Res Function(OrdersPendingEvent) _then;
}

/// @nodoc
abstract class _$GetPendingOrdersCopyWith<$Res> {
  factory _$GetPendingOrdersCopyWith(
          _GetPendingOrders value, $Res Function(_GetPendingOrders) then) =
      __$GetPendingOrdersCopyWithImpl<$Res>;
  $Res call({String canteenId});
}

/// @nodoc
class __$GetPendingOrdersCopyWithImpl<$Res>
    extends _$OrdersPendingEventCopyWithImpl<$Res>
    implements _$GetPendingOrdersCopyWith<$Res> {
  __$GetPendingOrdersCopyWithImpl(
      _GetPendingOrders _value, $Res Function(_GetPendingOrders) _then)
      : super(_value, (v) => _then(v as _GetPendingOrders));

  @override
  _GetPendingOrders get _value => super._value as _GetPendingOrders;

  @override
  $Res call({
    Object? canteenId = freezed,
  }) {
    return _then(_GetPendingOrders(
      canteenId == freezed
          ? _value.canteenId
          : canteenId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetPendingOrders implements _GetPendingOrders {
  const _$_GetPendingOrders(this.canteenId);

  @override
  final String canteenId;

  @override
  String toString() {
    return 'OrdersPendingEvent.getPendingOrders(canteenId: $canteenId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetPendingOrders &&
            (identical(other.canteenId, canteenId) ||
                const DeepCollectionEquality()
                    .equals(other.canteenId, canteenId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(canteenId);

  @JsonKey(ignore: true)
  @override
  _$GetPendingOrdersCopyWith<_GetPendingOrders> get copyWith =>
      __$GetPendingOrdersCopyWithImpl<_GetPendingOrders>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String canteenId) getPendingOrders,
    required TResult Function(String canteenId) getMorePendingOrders,
    required TResult Function(OrderModel orderModel) acceptOrder,
    required TResult Function(OrderModel orderModel) cancelOrder,
    required TResult Function(OrderModel orderModel) insertNewOrder,
  }) {
    return getPendingOrders(canteenId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getPendingOrders,
    TResult Function(String canteenId)? getMorePendingOrders,
    TResult Function(OrderModel orderModel)? acceptOrder,
    TResult Function(OrderModel orderModel)? cancelOrder,
    TResult Function(OrderModel orderModel)? insertNewOrder,
    required TResult orElse(),
  }) {
    if (getPendingOrders != null) {
      return getPendingOrders(canteenId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPendingOrders value) getPendingOrders,
    required TResult Function(_GetMorePendingOrders value) getMorePendingOrders,
    required TResult Function(_AcceptOrder value) acceptOrder,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_InsertNewOrder value) insertNewOrder,
  }) {
    return getPendingOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPendingOrders value)? getPendingOrders,
    TResult Function(_GetMorePendingOrders value)? getMorePendingOrders,
    TResult Function(_AcceptOrder value)? acceptOrder,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_InsertNewOrder value)? insertNewOrder,
    required TResult orElse(),
  }) {
    if (getPendingOrders != null) {
      return getPendingOrders(this);
    }
    return orElse();
  }
}

abstract class _GetPendingOrders implements OrdersPendingEvent {
  const factory _GetPendingOrders(String canteenId) = _$_GetPendingOrders;

  String get canteenId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetPendingOrdersCopyWith<_GetPendingOrders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetMorePendingOrdersCopyWith<$Res> {
  factory _$GetMorePendingOrdersCopyWith(_GetMorePendingOrders value,
          $Res Function(_GetMorePendingOrders) then) =
      __$GetMorePendingOrdersCopyWithImpl<$Res>;
  $Res call({String canteenId});
}

/// @nodoc
class __$GetMorePendingOrdersCopyWithImpl<$Res>
    extends _$OrdersPendingEventCopyWithImpl<$Res>
    implements _$GetMorePendingOrdersCopyWith<$Res> {
  __$GetMorePendingOrdersCopyWithImpl(
      _GetMorePendingOrders _value, $Res Function(_GetMorePendingOrders) _then)
      : super(_value, (v) => _then(v as _GetMorePendingOrders));

  @override
  _GetMorePendingOrders get _value => super._value as _GetMorePendingOrders;

  @override
  $Res call({
    Object? canteenId = freezed,
  }) {
    return _then(_GetMorePendingOrders(
      canteenId == freezed
          ? _value.canteenId
          : canteenId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetMorePendingOrders implements _GetMorePendingOrders {
  const _$_GetMorePendingOrders(this.canteenId);

  @override
  final String canteenId;

  @override
  String toString() {
    return 'OrdersPendingEvent.getMorePendingOrders(canteenId: $canteenId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetMorePendingOrders &&
            (identical(other.canteenId, canteenId) ||
                const DeepCollectionEquality()
                    .equals(other.canteenId, canteenId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(canteenId);

  @JsonKey(ignore: true)
  @override
  _$GetMorePendingOrdersCopyWith<_GetMorePendingOrders> get copyWith =>
      __$GetMorePendingOrdersCopyWithImpl<_GetMorePendingOrders>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String canteenId) getPendingOrders,
    required TResult Function(String canteenId) getMorePendingOrders,
    required TResult Function(OrderModel orderModel) acceptOrder,
    required TResult Function(OrderModel orderModel) cancelOrder,
    required TResult Function(OrderModel orderModel) insertNewOrder,
  }) {
    return getMorePendingOrders(canteenId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getPendingOrders,
    TResult Function(String canteenId)? getMorePendingOrders,
    TResult Function(OrderModel orderModel)? acceptOrder,
    TResult Function(OrderModel orderModel)? cancelOrder,
    TResult Function(OrderModel orderModel)? insertNewOrder,
    required TResult orElse(),
  }) {
    if (getMorePendingOrders != null) {
      return getMorePendingOrders(canteenId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPendingOrders value) getPendingOrders,
    required TResult Function(_GetMorePendingOrders value) getMorePendingOrders,
    required TResult Function(_AcceptOrder value) acceptOrder,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_InsertNewOrder value) insertNewOrder,
  }) {
    return getMorePendingOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPendingOrders value)? getPendingOrders,
    TResult Function(_GetMorePendingOrders value)? getMorePendingOrders,
    TResult Function(_AcceptOrder value)? acceptOrder,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_InsertNewOrder value)? insertNewOrder,
    required TResult orElse(),
  }) {
    if (getMorePendingOrders != null) {
      return getMorePendingOrders(this);
    }
    return orElse();
  }
}

abstract class _GetMorePendingOrders implements OrdersPendingEvent {
  const factory _GetMorePendingOrders(String canteenId) =
      _$_GetMorePendingOrders;

  String get canteenId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetMorePendingOrdersCopyWith<_GetMorePendingOrders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AcceptOrderCopyWith<$Res> {
  factory _$AcceptOrderCopyWith(
          _AcceptOrder value, $Res Function(_AcceptOrder) then) =
      __$AcceptOrderCopyWithImpl<$Res>;
  $Res call({OrderModel orderModel});
}

/// @nodoc
class __$AcceptOrderCopyWithImpl<$Res>
    extends _$OrdersPendingEventCopyWithImpl<$Res>
    implements _$AcceptOrderCopyWith<$Res> {
  __$AcceptOrderCopyWithImpl(
      _AcceptOrder _value, $Res Function(_AcceptOrder) _then)
      : super(_value, (v) => _then(v as _AcceptOrder));

  @override
  _AcceptOrder get _value => super._value as _AcceptOrder;

  @override
  $Res call({
    Object? orderModel = freezed,
  }) {
    return _then(_AcceptOrder(
      orderModel == freezed
          ? _value.orderModel
          : orderModel // ignore: cast_nullable_to_non_nullable
              as OrderModel,
    ));
  }
}

/// @nodoc

class _$_AcceptOrder implements _AcceptOrder {
  const _$_AcceptOrder(this.orderModel);

  @override
  final OrderModel orderModel;

  @override
  String toString() {
    return 'OrdersPendingEvent.acceptOrder(orderModel: $orderModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AcceptOrder &&
            (identical(other.orderModel, orderModel) ||
                const DeepCollectionEquality()
                    .equals(other.orderModel, orderModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(orderModel);

  @JsonKey(ignore: true)
  @override
  _$AcceptOrderCopyWith<_AcceptOrder> get copyWith =>
      __$AcceptOrderCopyWithImpl<_AcceptOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String canteenId) getPendingOrders,
    required TResult Function(String canteenId) getMorePendingOrders,
    required TResult Function(OrderModel orderModel) acceptOrder,
    required TResult Function(OrderModel orderModel) cancelOrder,
    required TResult Function(OrderModel orderModel) insertNewOrder,
  }) {
    return acceptOrder(orderModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getPendingOrders,
    TResult Function(String canteenId)? getMorePendingOrders,
    TResult Function(OrderModel orderModel)? acceptOrder,
    TResult Function(OrderModel orderModel)? cancelOrder,
    TResult Function(OrderModel orderModel)? insertNewOrder,
    required TResult orElse(),
  }) {
    if (acceptOrder != null) {
      return acceptOrder(orderModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPendingOrders value) getPendingOrders,
    required TResult Function(_GetMorePendingOrders value) getMorePendingOrders,
    required TResult Function(_AcceptOrder value) acceptOrder,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_InsertNewOrder value) insertNewOrder,
  }) {
    return acceptOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPendingOrders value)? getPendingOrders,
    TResult Function(_GetMorePendingOrders value)? getMorePendingOrders,
    TResult Function(_AcceptOrder value)? acceptOrder,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_InsertNewOrder value)? insertNewOrder,
    required TResult orElse(),
  }) {
    if (acceptOrder != null) {
      return acceptOrder(this);
    }
    return orElse();
  }
}

abstract class _AcceptOrder implements OrdersPendingEvent {
  const factory _AcceptOrder(OrderModel orderModel) = _$_AcceptOrder;

  OrderModel get orderModel => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AcceptOrderCopyWith<_AcceptOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CancelOrderCopyWith<$Res> {
  factory _$CancelOrderCopyWith(
          _CancelOrder value, $Res Function(_CancelOrder) then) =
      __$CancelOrderCopyWithImpl<$Res>;
  $Res call({OrderModel orderModel});
}

/// @nodoc
class __$CancelOrderCopyWithImpl<$Res>
    extends _$OrdersPendingEventCopyWithImpl<$Res>
    implements _$CancelOrderCopyWith<$Res> {
  __$CancelOrderCopyWithImpl(
      _CancelOrder _value, $Res Function(_CancelOrder) _then)
      : super(_value, (v) => _then(v as _CancelOrder));

  @override
  _CancelOrder get _value => super._value as _CancelOrder;

  @override
  $Res call({
    Object? orderModel = freezed,
  }) {
    return _then(_CancelOrder(
      orderModel == freezed
          ? _value.orderModel
          : orderModel // ignore: cast_nullable_to_non_nullable
              as OrderModel,
    ));
  }
}

/// @nodoc

class _$_CancelOrder implements _CancelOrder {
  const _$_CancelOrder(this.orderModel);

  @override
  final OrderModel orderModel;

  @override
  String toString() {
    return 'OrdersPendingEvent.cancelOrder(orderModel: $orderModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CancelOrder &&
            (identical(other.orderModel, orderModel) ||
                const DeepCollectionEquality()
                    .equals(other.orderModel, orderModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(orderModel);

  @JsonKey(ignore: true)
  @override
  _$CancelOrderCopyWith<_CancelOrder> get copyWith =>
      __$CancelOrderCopyWithImpl<_CancelOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String canteenId) getPendingOrders,
    required TResult Function(String canteenId) getMorePendingOrders,
    required TResult Function(OrderModel orderModel) acceptOrder,
    required TResult Function(OrderModel orderModel) cancelOrder,
    required TResult Function(OrderModel orderModel) insertNewOrder,
  }) {
    return cancelOrder(orderModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getPendingOrders,
    TResult Function(String canteenId)? getMorePendingOrders,
    TResult Function(OrderModel orderModel)? acceptOrder,
    TResult Function(OrderModel orderModel)? cancelOrder,
    TResult Function(OrderModel orderModel)? insertNewOrder,
    required TResult orElse(),
  }) {
    if (cancelOrder != null) {
      return cancelOrder(orderModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPendingOrders value) getPendingOrders,
    required TResult Function(_GetMorePendingOrders value) getMorePendingOrders,
    required TResult Function(_AcceptOrder value) acceptOrder,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_InsertNewOrder value) insertNewOrder,
  }) {
    return cancelOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPendingOrders value)? getPendingOrders,
    TResult Function(_GetMorePendingOrders value)? getMorePendingOrders,
    TResult Function(_AcceptOrder value)? acceptOrder,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_InsertNewOrder value)? insertNewOrder,
    required TResult orElse(),
  }) {
    if (cancelOrder != null) {
      return cancelOrder(this);
    }
    return orElse();
  }
}

abstract class _CancelOrder implements OrdersPendingEvent {
  const factory _CancelOrder(OrderModel orderModel) = _$_CancelOrder;

  OrderModel get orderModel => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CancelOrderCopyWith<_CancelOrder> get copyWith =>
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
    extends _$OrdersPendingEventCopyWithImpl<$Res>
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
    return 'OrdersPendingEvent.insertNewOrder(orderModel: $orderModel)';
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
    required TResult Function(String canteenId) getPendingOrders,
    required TResult Function(String canteenId) getMorePendingOrders,
    required TResult Function(OrderModel orderModel) acceptOrder,
    required TResult Function(OrderModel orderModel) cancelOrder,
    required TResult Function(OrderModel orderModel) insertNewOrder,
  }) {
    return insertNewOrder(orderModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getPendingOrders,
    TResult Function(String canteenId)? getMorePendingOrders,
    TResult Function(OrderModel orderModel)? acceptOrder,
    TResult Function(OrderModel orderModel)? cancelOrder,
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
    required TResult Function(_GetPendingOrders value) getPendingOrders,
    required TResult Function(_GetMorePendingOrders value) getMorePendingOrders,
    required TResult Function(_AcceptOrder value) acceptOrder,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_InsertNewOrder value) insertNewOrder,
  }) {
    return insertNewOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPendingOrders value)? getPendingOrders,
    TResult Function(_GetMorePendingOrders value)? getMorePendingOrders,
    TResult Function(_AcceptOrder value)? acceptOrder,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_InsertNewOrder value)? insertNewOrder,
    required TResult orElse(),
  }) {
    if (insertNewOrder != null) {
      return insertNewOrder(this);
    }
    return orElse();
  }
}

abstract class _InsertNewOrder implements OrdersPendingEvent {
  const factory _InsertNewOrder(OrderModel orderModel) = _$_InsertNewOrder;

  OrderModel get orderModel => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InsertNewOrderCopyWith<_InsertNewOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$OrdersPendingStateTearOff {
  const _$OrdersPendingStateTearOff();

  _OrdersPendingState call(
      {bool? isOrdersLoading,
      bool? isAddingMoreLoading,
      Option<FirebaseFailure>? orderFailureOrSuccess,
      Option<Either<FirebaseFailure, Unit>>? orderAceeptFailureOrSuccess,
      Option<Either<FirebaseFailure, Unit>>? orderCancelFailureOrSuccess,
      List<OrderModel>? ordersList,
      bool? hasMore}) {
    return _OrdersPendingState(
      isOrdersLoading: isOrdersLoading,
      isAddingMoreLoading: isAddingMoreLoading,
      orderFailureOrSuccess: orderFailureOrSuccess,
      orderAceeptFailureOrSuccess: orderAceeptFailureOrSuccess,
      orderCancelFailureOrSuccess: orderCancelFailureOrSuccess,
      ordersList: ordersList,
      hasMore: hasMore,
    );
  }
}

/// @nodoc
const $OrdersPendingState = _$OrdersPendingStateTearOff();

/// @nodoc
mixin _$OrdersPendingState {
  bool? get isOrdersLoading => throw _privateConstructorUsedError;
  bool? get isAddingMoreLoading => throw _privateConstructorUsedError;
  Option<FirebaseFailure>? get orderFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Option<Either<FirebaseFailure, Unit>>? get orderAceeptFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Option<Either<FirebaseFailure, Unit>>? get orderCancelFailureOrSuccess =>
      throw _privateConstructorUsedError;
  List<OrderModel>? get ordersList => throw _privateConstructorUsedError;
  bool? get hasMore => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrdersPendingStateCopyWith<OrdersPendingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersPendingStateCopyWith<$Res> {
  factory $OrdersPendingStateCopyWith(
          OrdersPendingState value, $Res Function(OrdersPendingState) then) =
      _$OrdersPendingStateCopyWithImpl<$Res>;
  $Res call(
      {bool? isOrdersLoading,
      bool? isAddingMoreLoading,
      Option<FirebaseFailure>? orderFailureOrSuccess,
      Option<Either<FirebaseFailure, Unit>>? orderAceeptFailureOrSuccess,
      Option<Either<FirebaseFailure, Unit>>? orderCancelFailureOrSuccess,
      List<OrderModel>? ordersList,
      bool? hasMore});
}

/// @nodoc
class _$OrdersPendingStateCopyWithImpl<$Res>
    implements $OrdersPendingStateCopyWith<$Res> {
  _$OrdersPendingStateCopyWithImpl(this._value, this._then);

  final OrdersPendingState _value;
  // ignore: unused_field
  final $Res Function(OrdersPendingState) _then;

  @override
  $Res call({
    Object? isOrdersLoading = freezed,
    Object? isAddingMoreLoading = freezed,
    Object? orderFailureOrSuccess = freezed,
    Object? orderAceeptFailureOrSuccess = freezed,
    Object? orderCancelFailureOrSuccess = freezed,
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
      orderAceeptFailureOrSuccess: orderAceeptFailureOrSuccess == freezed
          ? _value.orderAceeptFailureOrSuccess
          : orderAceeptFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, Unit>>?,
      orderCancelFailureOrSuccess: orderCancelFailureOrSuccess == freezed
          ? _value.orderCancelFailureOrSuccess
          : orderCancelFailureOrSuccess // ignore: cast_nullable_to_non_nullable
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
abstract class _$OrdersPendingStateCopyWith<$Res>
    implements $OrdersPendingStateCopyWith<$Res> {
  factory _$OrdersPendingStateCopyWith(
          _OrdersPendingState value, $Res Function(_OrdersPendingState) then) =
      __$OrdersPendingStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? isOrdersLoading,
      bool? isAddingMoreLoading,
      Option<FirebaseFailure>? orderFailureOrSuccess,
      Option<Either<FirebaseFailure, Unit>>? orderAceeptFailureOrSuccess,
      Option<Either<FirebaseFailure, Unit>>? orderCancelFailureOrSuccess,
      List<OrderModel>? ordersList,
      bool? hasMore});
}

/// @nodoc
class __$OrdersPendingStateCopyWithImpl<$Res>
    extends _$OrdersPendingStateCopyWithImpl<$Res>
    implements _$OrdersPendingStateCopyWith<$Res> {
  __$OrdersPendingStateCopyWithImpl(
      _OrdersPendingState _value, $Res Function(_OrdersPendingState) _then)
      : super(_value, (v) => _then(v as _OrdersPendingState));

  @override
  _OrdersPendingState get _value => super._value as _OrdersPendingState;

  @override
  $Res call({
    Object? isOrdersLoading = freezed,
    Object? isAddingMoreLoading = freezed,
    Object? orderFailureOrSuccess = freezed,
    Object? orderAceeptFailureOrSuccess = freezed,
    Object? orderCancelFailureOrSuccess = freezed,
    Object? ordersList = freezed,
    Object? hasMore = freezed,
  }) {
    return _then(_OrdersPendingState(
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
      orderAceeptFailureOrSuccess: orderAceeptFailureOrSuccess == freezed
          ? _value.orderAceeptFailureOrSuccess
          : orderAceeptFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, Unit>>?,
      orderCancelFailureOrSuccess: orderCancelFailureOrSuccess == freezed
          ? _value.orderCancelFailureOrSuccess
          : orderCancelFailureOrSuccess // ignore: cast_nullable_to_non_nullable
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

class _$_OrdersPendingState implements _OrdersPendingState {
  const _$_OrdersPendingState(
      {this.isOrdersLoading,
      this.isAddingMoreLoading,
      this.orderFailureOrSuccess,
      this.orderAceeptFailureOrSuccess,
      this.orderCancelFailureOrSuccess,
      this.ordersList,
      this.hasMore});

  @override
  final bool? isOrdersLoading;
  @override
  final bool? isAddingMoreLoading;
  @override
  final Option<FirebaseFailure>? orderFailureOrSuccess;
  @override
  final Option<Either<FirebaseFailure, Unit>>? orderAceeptFailureOrSuccess;
  @override
  final Option<Either<FirebaseFailure, Unit>>? orderCancelFailureOrSuccess;
  @override
  final List<OrderModel>? ordersList;
  @override
  final bool? hasMore;

  @override
  String toString() {
    return 'OrdersPendingState(isOrdersLoading: $isOrdersLoading, isAddingMoreLoading: $isAddingMoreLoading, orderFailureOrSuccess: $orderFailureOrSuccess, orderAceeptFailureOrSuccess: $orderAceeptFailureOrSuccess, orderCancelFailureOrSuccess: $orderCancelFailureOrSuccess, ordersList: $ordersList, hasMore: $hasMore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrdersPendingState &&
            (identical(other.isOrdersLoading, isOrdersLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isOrdersLoading, isOrdersLoading)) &&
            (identical(other.isAddingMoreLoading, isAddingMoreLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isAddingMoreLoading, isAddingMoreLoading)) &&
            (identical(other.orderFailureOrSuccess, orderFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.orderFailureOrSuccess, orderFailureOrSuccess)) &&
            (identical(other.orderAceeptFailureOrSuccess,
                    orderAceeptFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.orderAceeptFailureOrSuccess,
                    orderAceeptFailureOrSuccess)) &&
            (identical(other.orderCancelFailureOrSuccess,
                    orderCancelFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.orderCancelFailureOrSuccess,
                    orderCancelFailureOrSuccess)) &&
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
      const DeepCollectionEquality().hash(orderAceeptFailureOrSuccess) ^
      const DeepCollectionEquality().hash(orderCancelFailureOrSuccess) ^
      const DeepCollectionEquality().hash(ordersList) ^
      const DeepCollectionEquality().hash(hasMore);

  @JsonKey(ignore: true)
  @override
  _$OrdersPendingStateCopyWith<_OrdersPendingState> get copyWith =>
      __$OrdersPendingStateCopyWithImpl<_OrdersPendingState>(this, _$identity);
}

abstract class _OrdersPendingState implements OrdersPendingState {
  const factory _OrdersPendingState(
      {bool? isOrdersLoading,
      bool? isAddingMoreLoading,
      Option<FirebaseFailure>? orderFailureOrSuccess,
      Option<Either<FirebaseFailure, Unit>>? orderAceeptFailureOrSuccess,
      Option<Either<FirebaseFailure, Unit>>? orderCancelFailureOrSuccess,
      List<OrderModel>? ordersList,
      bool? hasMore}) = _$_OrdersPendingState;

  @override
  bool? get isOrdersLoading => throw _privateConstructorUsedError;
  @override
  bool? get isAddingMoreLoading => throw _privateConstructorUsedError;
  @override
  Option<FirebaseFailure>? get orderFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<FirebaseFailure, Unit>>? get orderAceeptFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<FirebaseFailure, Unit>>? get orderCancelFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  List<OrderModel>? get ordersList => throw _privateConstructorUsedError;
  @override
  bool? get hasMore => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrdersPendingStateCopyWith<_OrdersPendingState> get copyWith =>
      throw _privateConstructorUsedError;
}
