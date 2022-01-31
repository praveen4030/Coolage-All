// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'orders_prepared_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OrdersPreparedEventTearOff {
  const _$OrdersPreparedEventTearOff();

  _GetPreparedOrders getPreparedOrders(String canteenId) {
    return _GetPreparedOrders(
      canteenId,
    );
  }

  _GetMorePreparedOrders getMorePreparedOrders(String canteenId) {
    return _GetMorePreparedOrders(
      canteenId,
    );
  }

  _DeliveringOrder deliveringOrder(OrderModel orderModel) {
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
const $OrdersPreparedEvent = _$OrdersPreparedEventTearOff();

/// @nodoc
mixin _$OrdersPreparedEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String canteenId) getPreparedOrders,
    required TResult Function(String canteenId) getMorePreparedOrders,
    required TResult Function(OrderModel orderModel) deliveringOrder,
    required TResult Function(OrderModel orderModel) insertNewOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getPreparedOrders,
    TResult Function(String canteenId)? getMorePreparedOrders,
    TResult Function(OrderModel orderModel)? deliveringOrder,
    TResult Function(OrderModel orderModel)? insertNewOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPreparedOrders value) getPreparedOrders,
    required TResult Function(_GetMorePreparedOrders value)
        getMorePreparedOrders,
    required TResult Function(_DeliveringOrder value) deliveringOrder,
    required TResult Function(_InsertNewOrder value) insertNewOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPreparedOrders value)? getPreparedOrders,
    TResult Function(_GetMorePreparedOrders value)? getMorePreparedOrders,
    TResult Function(_DeliveringOrder value)? deliveringOrder,
    TResult Function(_InsertNewOrder value)? insertNewOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersPreparedEventCopyWith<$Res> {
  factory $OrdersPreparedEventCopyWith(
          OrdersPreparedEvent value, $Res Function(OrdersPreparedEvent) then) =
      _$OrdersPreparedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrdersPreparedEventCopyWithImpl<$Res>
    implements $OrdersPreparedEventCopyWith<$Res> {
  _$OrdersPreparedEventCopyWithImpl(this._value, this._then);

  final OrdersPreparedEvent _value;
  // ignore: unused_field
  final $Res Function(OrdersPreparedEvent) _then;
}

/// @nodoc
abstract class _$GetPreparedOrdersCopyWith<$Res> {
  factory _$GetPreparedOrdersCopyWith(
          _GetPreparedOrders value, $Res Function(_GetPreparedOrders) then) =
      __$GetPreparedOrdersCopyWithImpl<$Res>;
  $Res call({String canteenId});
}

/// @nodoc
class __$GetPreparedOrdersCopyWithImpl<$Res>
    extends _$OrdersPreparedEventCopyWithImpl<$Res>
    implements _$GetPreparedOrdersCopyWith<$Res> {
  __$GetPreparedOrdersCopyWithImpl(
      _GetPreparedOrders _value, $Res Function(_GetPreparedOrders) _then)
      : super(_value, (v) => _then(v as _GetPreparedOrders));

  @override
  _GetPreparedOrders get _value => super._value as _GetPreparedOrders;

  @override
  $Res call({
    Object? canteenId = freezed,
  }) {
    return _then(_GetPreparedOrders(
      canteenId == freezed
          ? _value.canteenId
          : canteenId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetPreparedOrders implements _GetPreparedOrders {
  const _$_GetPreparedOrders(this.canteenId);

  @override
  final String canteenId;

  @override
  String toString() {
    return 'OrdersPreparedEvent.getPreparedOrders(canteenId: $canteenId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetPreparedOrders &&
            (identical(other.canteenId, canteenId) ||
                const DeepCollectionEquality()
                    .equals(other.canteenId, canteenId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(canteenId);

  @JsonKey(ignore: true)
  @override
  _$GetPreparedOrdersCopyWith<_GetPreparedOrders> get copyWith =>
      __$GetPreparedOrdersCopyWithImpl<_GetPreparedOrders>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String canteenId) getPreparedOrders,
    required TResult Function(String canteenId) getMorePreparedOrders,
    required TResult Function(OrderModel orderModel) deliveringOrder,
    required TResult Function(OrderModel orderModel) insertNewOrder,
  }) {
    return getPreparedOrders(canteenId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getPreparedOrders,
    TResult Function(String canteenId)? getMorePreparedOrders,
    TResult Function(OrderModel orderModel)? deliveringOrder,
    TResult Function(OrderModel orderModel)? insertNewOrder,
    required TResult orElse(),
  }) {
    if (getPreparedOrders != null) {
      return getPreparedOrders(canteenId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPreparedOrders value) getPreparedOrders,
    required TResult Function(_GetMorePreparedOrders value)
        getMorePreparedOrders,
    required TResult Function(_DeliveringOrder value) deliveringOrder,
    required TResult Function(_InsertNewOrder value) insertNewOrder,
  }) {
    return getPreparedOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPreparedOrders value)? getPreparedOrders,
    TResult Function(_GetMorePreparedOrders value)? getMorePreparedOrders,
    TResult Function(_DeliveringOrder value)? deliveringOrder,
    TResult Function(_InsertNewOrder value)? insertNewOrder,
    required TResult orElse(),
  }) {
    if (getPreparedOrders != null) {
      return getPreparedOrders(this);
    }
    return orElse();
  }
}

abstract class _GetPreparedOrders implements OrdersPreparedEvent {
  const factory _GetPreparedOrders(String canteenId) = _$_GetPreparedOrders;

  String get canteenId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetPreparedOrdersCopyWith<_GetPreparedOrders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetMorePreparedOrdersCopyWith<$Res> {
  factory _$GetMorePreparedOrdersCopyWith(_GetMorePreparedOrders value,
          $Res Function(_GetMorePreparedOrders) then) =
      __$GetMorePreparedOrdersCopyWithImpl<$Res>;
  $Res call({String canteenId});
}

/// @nodoc
class __$GetMorePreparedOrdersCopyWithImpl<$Res>
    extends _$OrdersPreparedEventCopyWithImpl<$Res>
    implements _$GetMorePreparedOrdersCopyWith<$Res> {
  __$GetMorePreparedOrdersCopyWithImpl(_GetMorePreparedOrders _value,
      $Res Function(_GetMorePreparedOrders) _then)
      : super(_value, (v) => _then(v as _GetMorePreparedOrders));

  @override
  _GetMorePreparedOrders get _value => super._value as _GetMorePreparedOrders;

  @override
  $Res call({
    Object? canteenId = freezed,
  }) {
    return _then(_GetMorePreparedOrders(
      canteenId == freezed
          ? _value.canteenId
          : canteenId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetMorePreparedOrders implements _GetMorePreparedOrders {
  const _$_GetMorePreparedOrders(this.canteenId);

  @override
  final String canteenId;

  @override
  String toString() {
    return 'OrdersPreparedEvent.getMorePreparedOrders(canteenId: $canteenId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetMorePreparedOrders &&
            (identical(other.canteenId, canteenId) ||
                const DeepCollectionEquality()
                    .equals(other.canteenId, canteenId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(canteenId);

  @JsonKey(ignore: true)
  @override
  _$GetMorePreparedOrdersCopyWith<_GetMorePreparedOrders> get copyWith =>
      __$GetMorePreparedOrdersCopyWithImpl<_GetMorePreparedOrders>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String canteenId) getPreparedOrders,
    required TResult Function(String canteenId) getMorePreparedOrders,
    required TResult Function(OrderModel orderModel) deliveringOrder,
    required TResult Function(OrderModel orderModel) insertNewOrder,
  }) {
    return getMorePreparedOrders(canteenId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getPreparedOrders,
    TResult Function(String canteenId)? getMorePreparedOrders,
    TResult Function(OrderModel orderModel)? deliveringOrder,
    TResult Function(OrderModel orderModel)? insertNewOrder,
    required TResult orElse(),
  }) {
    if (getMorePreparedOrders != null) {
      return getMorePreparedOrders(canteenId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPreparedOrders value) getPreparedOrders,
    required TResult Function(_GetMorePreparedOrders value)
        getMorePreparedOrders,
    required TResult Function(_DeliveringOrder value) deliveringOrder,
    required TResult Function(_InsertNewOrder value) insertNewOrder,
  }) {
    return getMorePreparedOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPreparedOrders value)? getPreparedOrders,
    TResult Function(_GetMorePreparedOrders value)? getMorePreparedOrders,
    TResult Function(_DeliveringOrder value)? deliveringOrder,
    TResult Function(_InsertNewOrder value)? insertNewOrder,
    required TResult orElse(),
  }) {
    if (getMorePreparedOrders != null) {
      return getMorePreparedOrders(this);
    }
    return orElse();
  }
}

abstract class _GetMorePreparedOrders implements OrdersPreparedEvent {
  const factory _GetMorePreparedOrders(String canteenId) =
      _$_GetMorePreparedOrders;

  String get canteenId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetMorePreparedOrdersCopyWith<_GetMorePreparedOrders> get copyWith =>
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
    extends _$OrdersPreparedEventCopyWithImpl<$Res>
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
    return 'OrdersPreparedEvent.deliveringOrder(orderModel: $orderModel)';
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
    required TResult Function(String canteenId) getPreparedOrders,
    required TResult Function(String canteenId) getMorePreparedOrders,
    required TResult Function(OrderModel orderModel) deliveringOrder,
    required TResult Function(OrderModel orderModel) insertNewOrder,
  }) {
    return deliveringOrder(orderModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getPreparedOrders,
    TResult Function(String canteenId)? getMorePreparedOrders,
    TResult Function(OrderModel orderModel)? deliveringOrder,
    TResult Function(OrderModel orderModel)? insertNewOrder,
    required TResult orElse(),
  }) {
    if (deliveringOrder != null) {
      return deliveringOrder(orderModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPreparedOrders value) getPreparedOrders,
    required TResult Function(_GetMorePreparedOrders value)
        getMorePreparedOrders,
    required TResult Function(_DeliveringOrder value) deliveringOrder,
    required TResult Function(_InsertNewOrder value) insertNewOrder,
  }) {
    return deliveringOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPreparedOrders value)? getPreparedOrders,
    TResult Function(_GetMorePreparedOrders value)? getMorePreparedOrders,
    TResult Function(_DeliveringOrder value)? deliveringOrder,
    TResult Function(_InsertNewOrder value)? insertNewOrder,
    required TResult orElse(),
  }) {
    if (deliveringOrder != null) {
      return deliveringOrder(this);
    }
    return orElse();
  }
}

abstract class _DeliveringOrder implements OrdersPreparedEvent {
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
    extends _$OrdersPreparedEventCopyWithImpl<$Res>
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
    return 'OrdersPreparedEvent.insertNewOrder(orderModel: $orderModel)';
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
    required TResult Function(String canteenId) getPreparedOrders,
    required TResult Function(String canteenId) getMorePreparedOrders,
    required TResult Function(OrderModel orderModel) deliveringOrder,
    required TResult Function(OrderModel orderModel) insertNewOrder,
  }) {
    return insertNewOrder(orderModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getPreparedOrders,
    TResult Function(String canteenId)? getMorePreparedOrders,
    TResult Function(OrderModel orderModel)? deliveringOrder,
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
    required TResult Function(_GetPreparedOrders value) getPreparedOrders,
    required TResult Function(_GetMorePreparedOrders value)
        getMorePreparedOrders,
    required TResult Function(_DeliveringOrder value) deliveringOrder,
    required TResult Function(_InsertNewOrder value) insertNewOrder,
  }) {
    return insertNewOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPreparedOrders value)? getPreparedOrders,
    TResult Function(_GetMorePreparedOrders value)? getMorePreparedOrders,
    TResult Function(_DeliveringOrder value)? deliveringOrder,
    TResult Function(_InsertNewOrder value)? insertNewOrder,
    required TResult orElse(),
  }) {
    if (insertNewOrder != null) {
      return insertNewOrder(this);
    }
    return orElse();
  }
}

abstract class _InsertNewOrder implements OrdersPreparedEvent {
  const factory _InsertNewOrder(OrderModel orderModel) = _$_InsertNewOrder;

  OrderModel get orderModel => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InsertNewOrderCopyWith<_InsertNewOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$OrdersPreparedStateTearOff {
  const _$OrdersPreparedStateTearOff();

  _OrdersPreparedState call(
      {bool? isOrdersLoading,
      bool? isAddingMoreLoading,
      Option<FirebaseFailure>? orderFailureOrSuccess,
      Option<Either<FirebaseFailure, Unit>>? orderDeliveringFailureOrSuccess,
      List<OrderModel>? ordersList,
      bool? hasMore}) {
    return _OrdersPreparedState(
      isOrdersLoading: isOrdersLoading,
      isAddingMoreLoading: isAddingMoreLoading,
      orderFailureOrSuccess: orderFailureOrSuccess,
      orderDeliveringFailureOrSuccess: orderDeliveringFailureOrSuccess,
      ordersList: ordersList,
      hasMore: hasMore,
    );
  }
}

/// @nodoc
const $OrdersPreparedState = _$OrdersPreparedStateTearOff();

/// @nodoc
mixin _$OrdersPreparedState {
  bool? get isOrdersLoading => throw _privateConstructorUsedError;
  bool? get isAddingMoreLoading => throw _privateConstructorUsedError;
  Option<FirebaseFailure>? get orderFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Option<Either<FirebaseFailure, Unit>>? get orderDeliveringFailureOrSuccess =>
      throw _privateConstructorUsedError;
  List<OrderModel>? get ordersList => throw _privateConstructorUsedError;
  bool? get hasMore => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrdersPreparedStateCopyWith<OrdersPreparedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersPreparedStateCopyWith<$Res> {
  factory $OrdersPreparedStateCopyWith(
          OrdersPreparedState value, $Res Function(OrdersPreparedState) then) =
      _$OrdersPreparedStateCopyWithImpl<$Res>;
  $Res call(
      {bool? isOrdersLoading,
      bool? isAddingMoreLoading,
      Option<FirebaseFailure>? orderFailureOrSuccess,
      Option<Either<FirebaseFailure, Unit>>? orderDeliveringFailureOrSuccess,
      List<OrderModel>? ordersList,
      bool? hasMore});
}

/// @nodoc
class _$OrdersPreparedStateCopyWithImpl<$Res>
    implements $OrdersPreparedStateCopyWith<$Res> {
  _$OrdersPreparedStateCopyWithImpl(this._value, this._then);

  final OrdersPreparedState _value;
  // ignore: unused_field
  final $Res Function(OrdersPreparedState) _then;

  @override
  $Res call({
    Object? isOrdersLoading = freezed,
    Object? isAddingMoreLoading = freezed,
    Object? orderFailureOrSuccess = freezed,
    Object? orderDeliveringFailureOrSuccess = freezed,
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
      orderDeliveringFailureOrSuccess: orderDeliveringFailureOrSuccess ==
              freezed
          ? _value.orderDeliveringFailureOrSuccess
          : orderDeliveringFailureOrSuccess // ignore: cast_nullable_to_non_nullable
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
abstract class _$OrdersPreparedStateCopyWith<$Res>
    implements $OrdersPreparedStateCopyWith<$Res> {
  factory _$OrdersPreparedStateCopyWith(_OrdersPreparedState value,
          $Res Function(_OrdersPreparedState) then) =
      __$OrdersPreparedStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? isOrdersLoading,
      bool? isAddingMoreLoading,
      Option<FirebaseFailure>? orderFailureOrSuccess,
      Option<Either<FirebaseFailure, Unit>>? orderDeliveringFailureOrSuccess,
      List<OrderModel>? ordersList,
      bool? hasMore});
}

/// @nodoc
class __$OrdersPreparedStateCopyWithImpl<$Res>
    extends _$OrdersPreparedStateCopyWithImpl<$Res>
    implements _$OrdersPreparedStateCopyWith<$Res> {
  __$OrdersPreparedStateCopyWithImpl(
      _OrdersPreparedState _value, $Res Function(_OrdersPreparedState) _then)
      : super(_value, (v) => _then(v as _OrdersPreparedState));

  @override
  _OrdersPreparedState get _value => super._value as _OrdersPreparedState;

  @override
  $Res call({
    Object? isOrdersLoading = freezed,
    Object? isAddingMoreLoading = freezed,
    Object? orderFailureOrSuccess = freezed,
    Object? orderDeliveringFailureOrSuccess = freezed,
    Object? ordersList = freezed,
    Object? hasMore = freezed,
  }) {
    return _then(_OrdersPreparedState(
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
      orderDeliveringFailureOrSuccess: orderDeliveringFailureOrSuccess ==
              freezed
          ? _value.orderDeliveringFailureOrSuccess
          : orderDeliveringFailureOrSuccess // ignore: cast_nullable_to_non_nullable
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

class _$_OrdersPreparedState implements _OrdersPreparedState {
  const _$_OrdersPreparedState(
      {this.isOrdersLoading,
      this.isAddingMoreLoading,
      this.orderFailureOrSuccess,
      this.orderDeliveringFailureOrSuccess,
      this.ordersList,
      this.hasMore});

  @override
  final bool? isOrdersLoading;
  @override
  final bool? isAddingMoreLoading;
  @override
  final Option<FirebaseFailure>? orderFailureOrSuccess;
  @override
  final Option<Either<FirebaseFailure, Unit>>? orderDeliveringFailureOrSuccess;
  @override
  final List<OrderModel>? ordersList;
  @override
  final bool? hasMore;

  @override
  String toString() {
    return 'OrdersPreparedState(isOrdersLoading: $isOrdersLoading, isAddingMoreLoading: $isAddingMoreLoading, orderFailureOrSuccess: $orderFailureOrSuccess, orderDeliveringFailureOrSuccess: $orderDeliveringFailureOrSuccess, ordersList: $ordersList, hasMore: $hasMore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrdersPreparedState &&
            (identical(other.isOrdersLoading, isOrdersLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isOrdersLoading, isOrdersLoading)) &&
            (identical(other.isAddingMoreLoading, isAddingMoreLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isAddingMoreLoading, isAddingMoreLoading)) &&
            (identical(other.orderFailureOrSuccess, orderFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.orderFailureOrSuccess, orderFailureOrSuccess)) &&
            (identical(other.orderDeliveringFailureOrSuccess,
                    orderDeliveringFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.orderDeliveringFailureOrSuccess,
                    orderDeliveringFailureOrSuccess)) &&
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
      const DeepCollectionEquality().hash(orderDeliveringFailureOrSuccess) ^
      const DeepCollectionEquality().hash(ordersList) ^
      const DeepCollectionEquality().hash(hasMore);

  @JsonKey(ignore: true)
  @override
  _$OrdersPreparedStateCopyWith<_OrdersPreparedState> get copyWith =>
      __$OrdersPreparedStateCopyWithImpl<_OrdersPreparedState>(
          this, _$identity);
}

abstract class _OrdersPreparedState implements OrdersPreparedState {
  const factory _OrdersPreparedState(
      {bool? isOrdersLoading,
      bool? isAddingMoreLoading,
      Option<FirebaseFailure>? orderFailureOrSuccess,
      Option<Either<FirebaseFailure, Unit>>? orderDeliveringFailureOrSuccess,
      List<OrderModel>? ordersList,
      bool? hasMore}) = _$_OrdersPreparedState;

  @override
  bool? get isOrdersLoading => throw _privateConstructorUsedError;
  @override
  bool? get isAddingMoreLoading => throw _privateConstructorUsedError;
  @override
  Option<FirebaseFailure>? get orderFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<FirebaseFailure, Unit>>? get orderDeliveringFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  List<OrderModel>? get ordersList => throw _privateConstructorUsedError;
  @override
  bool? get hasMore => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrdersPreparedStateCopyWith<_OrdersPreparedState> get copyWith =>
      throw _privateConstructorUsedError;
}
