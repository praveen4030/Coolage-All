// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_orders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserOrdersEventTearOff {
  const _$UserOrdersEventTearOff();

  _GetUserOrdersDetails getUserOrdersDetails() {
    return const _GetUserOrdersDetails();
  }

  _GetMoreUserOrdersDetails getMoreUserOrdersDetails() {
    return const _GetMoreUserOrdersDetails();
  }

  _RepeatMyPreviousOrder repeatMyPreviousOrder(OrderModel orderModel) {
    return _RepeatMyPreviousOrder(
      orderModel,
    );
  }

  _AddToCartMyPreviousOrder addToCartMyPreviousOrder(OrderModel orderModel) {
    return _AddToCartMyPreviousOrder(
      orderModel,
    );
  }
}

/// @nodoc
const $UserOrdersEvent = _$UserOrdersEventTearOff();

/// @nodoc
mixin _$UserOrdersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserOrdersDetails,
    required TResult Function() getMoreUserOrdersDetails,
    required TResult Function(OrderModel orderModel) repeatMyPreviousOrder,
    required TResult Function(OrderModel orderModel) addToCartMyPreviousOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserOrdersDetails,
    TResult Function()? getMoreUserOrdersDetails,
    TResult Function(OrderModel orderModel)? repeatMyPreviousOrder,
    TResult Function(OrderModel orderModel)? addToCartMyPreviousOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserOrdersDetails value) getUserOrdersDetails,
    required TResult Function(_GetMoreUserOrdersDetails value)
        getMoreUserOrdersDetails,
    required TResult Function(_RepeatMyPreviousOrder value)
        repeatMyPreviousOrder,
    required TResult Function(_AddToCartMyPreviousOrder value)
        addToCartMyPreviousOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserOrdersDetails value)? getUserOrdersDetails,
    TResult Function(_GetMoreUserOrdersDetails value)? getMoreUserOrdersDetails,
    TResult Function(_RepeatMyPreviousOrder value)? repeatMyPreviousOrder,
    TResult Function(_AddToCartMyPreviousOrder value)? addToCartMyPreviousOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserOrdersEventCopyWith<$Res> {
  factory $UserOrdersEventCopyWith(
          UserOrdersEvent value, $Res Function(UserOrdersEvent) then) =
      _$UserOrdersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserOrdersEventCopyWithImpl<$Res>
    implements $UserOrdersEventCopyWith<$Res> {
  _$UserOrdersEventCopyWithImpl(this._value, this._then);

  final UserOrdersEvent _value;
  // ignore: unused_field
  final $Res Function(UserOrdersEvent) _then;
}

/// @nodoc
abstract class _$GetUserOrdersDetailsCopyWith<$Res> {
  factory _$GetUserOrdersDetailsCopyWith(_GetUserOrdersDetails value,
          $Res Function(_GetUserOrdersDetails) then) =
      __$GetUserOrdersDetailsCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetUserOrdersDetailsCopyWithImpl<$Res>
    extends _$UserOrdersEventCopyWithImpl<$Res>
    implements _$GetUserOrdersDetailsCopyWith<$Res> {
  __$GetUserOrdersDetailsCopyWithImpl(
      _GetUserOrdersDetails _value, $Res Function(_GetUserOrdersDetails) _then)
      : super(_value, (v) => _then(v as _GetUserOrdersDetails));

  @override
  _GetUserOrdersDetails get _value => super._value as _GetUserOrdersDetails;
}

/// @nodoc

class _$_GetUserOrdersDetails implements _GetUserOrdersDetails {
  const _$_GetUserOrdersDetails();

  @override
  String toString() {
    return 'UserOrdersEvent.getUserOrdersDetails()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetUserOrdersDetails);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserOrdersDetails,
    required TResult Function() getMoreUserOrdersDetails,
    required TResult Function(OrderModel orderModel) repeatMyPreviousOrder,
    required TResult Function(OrderModel orderModel) addToCartMyPreviousOrder,
  }) {
    return getUserOrdersDetails();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserOrdersDetails,
    TResult Function()? getMoreUserOrdersDetails,
    TResult Function(OrderModel orderModel)? repeatMyPreviousOrder,
    TResult Function(OrderModel orderModel)? addToCartMyPreviousOrder,
    required TResult orElse(),
  }) {
    if (getUserOrdersDetails != null) {
      return getUserOrdersDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserOrdersDetails value) getUserOrdersDetails,
    required TResult Function(_GetMoreUserOrdersDetails value)
        getMoreUserOrdersDetails,
    required TResult Function(_RepeatMyPreviousOrder value)
        repeatMyPreviousOrder,
    required TResult Function(_AddToCartMyPreviousOrder value)
        addToCartMyPreviousOrder,
  }) {
    return getUserOrdersDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserOrdersDetails value)? getUserOrdersDetails,
    TResult Function(_GetMoreUserOrdersDetails value)? getMoreUserOrdersDetails,
    TResult Function(_RepeatMyPreviousOrder value)? repeatMyPreviousOrder,
    TResult Function(_AddToCartMyPreviousOrder value)? addToCartMyPreviousOrder,
    required TResult orElse(),
  }) {
    if (getUserOrdersDetails != null) {
      return getUserOrdersDetails(this);
    }
    return orElse();
  }
}

abstract class _GetUserOrdersDetails implements UserOrdersEvent {
  const factory _GetUserOrdersDetails() = _$_GetUserOrdersDetails;
}

/// @nodoc
abstract class _$GetMoreUserOrdersDetailsCopyWith<$Res> {
  factory _$GetMoreUserOrdersDetailsCopyWith(_GetMoreUserOrdersDetails value,
          $Res Function(_GetMoreUserOrdersDetails) then) =
      __$GetMoreUserOrdersDetailsCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetMoreUserOrdersDetailsCopyWithImpl<$Res>
    extends _$UserOrdersEventCopyWithImpl<$Res>
    implements _$GetMoreUserOrdersDetailsCopyWith<$Res> {
  __$GetMoreUserOrdersDetailsCopyWithImpl(_GetMoreUserOrdersDetails _value,
      $Res Function(_GetMoreUserOrdersDetails) _then)
      : super(_value, (v) => _then(v as _GetMoreUserOrdersDetails));

  @override
  _GetMoreUserOrdersDetails get _value =>
      super._value as _GetMoreUserOrdersDetails;
}

/// @nodoc

class _$_GetMoreUserOrdersDetails implements _GetMoreUserOrdersDetails {
  const _$_GetMoreUserOrdersDetails();

  @override
  String toString() {
    return 'UserOrdersEvent.getMoreUserOrdersDetails()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetMoreUserOrdersDetails);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserOrdersDetails,
    required TResult Function() getMoreUserOrdersDetails,
    required TResult Function(OrderModel orderModel) repeatMyPreviousOrder,
    required TResult Function(OrderModel orderModel) addToCartMyPreviousOrder,
  }) {
    return getMoreUserOrdersDetails();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserOrdersDetails,
    TResult Function()? getMoreUserOrdersDetails,
    TResult Function(OrderModel orderModel)? repeatMyPreviousOrder,
    TResult Function(OrderModel orderModel)? addToCartMyPreviousOrder,
    required TResult orElse(),
  }) {
    if (getMoreUserOrdersDetails != null) {
      return getMoreUserOrdersDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserOrdersDetails value) getUserOrdersDetails,
    required TResult Function(_GetMoreUserOrdersDetails value)
        getMoreUserOrdersDetails,
    required TResult Function(_RepeatMyPreviousOrder value)
        repeatMyPreviousOrder,
    required TResult Function(_AddToCartMyPreviousOrder value)
        addToCartMyPreviousOrder,
  }) {
    return getMoreUserOrdersDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserOrdersDetails value)? getUserOrdersDetails,
    TResult Function(_GetMoreUserOrdersDetails value)? getMoreUserOrdersDetails,
    TResult Function(_RepeatMyPreviousOrder value)? repeatMyPreviousOrder,
    TResult Function(_AddToCartMyPreviousOrder value)? addToCartMyPreviousOrder,
    required TResult orElse(),
  }) {
    if (getMoreUserOrdersDetails != null) {
      return getMoreUserOrdersDetails(this);
    }
    return orElse();
  }
}

abstract class _GetMoreUserOrdersDetails implements UserOrdersEvent {
  const factory _GetMoreUserOrdersDetails() = _$_GetMoreUserOrdersDetails;
}

/// @nodoc
abstract class _$RepeatMyPreviousOrderCopyWith<$Res> {
  factory _$RepeatMyPreviousOrderCopyWith(_RepeatMyPreviousOrder value,
          $Res Function(_RepeatMyPreviousOrder) then) =
      __$RepeatMyPreviousOrderCopyWithImpl<$Res>;
  $Res call({OrderModel orderModel});
}

/// @nodoc
class __$RepeatMyPreviousOrderCopyWithImpl<$Res>
    extends _$UserOrdersEventCopyWithImpl<$Res>
    implements _$RepeatMyPreviousOrderCopyWith<$Res> {
  __$RepeatMyPreviousOrderCopyWithImpl(_RepeatMyPreviousOrder _value,
      $Res Function(_RepeatMyPreviousOrder) _then)
      : super(_value, (v) => _then(v as _RepeatMyPreviousOrder));

  @override
  _RepeatMyPreviousOrder get _value => super._value as _RepeatMyPreviousOrder;

  @override
  $Res call({
    Object? orderModel = freezed,
  }) {
    return _then(_RepeatMyPreviousOrder(
      orderModel == freezed
          ? _value.orderModel
          : orderModel // ignore: cast_nullable_to_non_nullable
              as OrderModel,
    ));
  }
}

/// @nodoc

class _$_RepeatMyPreviousOrder implements _RepeatMyPreviousOrder {
  const _$_RepeatMyPreviousOrder(this.orderModel);

  @override
  final OrderModel orderModel;

  @override
  String toString() {
    return 'UserOrdersEvent.repeatMyPreviousOrder(orderModel: $orderModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RepeatMyPreviousOrder &&
            (identical(other.orderModel, orderModel) ||
                const DeepCollectionEquality()
                    .equals(other.orderModel, orderModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(orderModel);

  @JsonKey(ignore: true)
  @override
  _$RepeatMyPreviousOrderCopyWith<_RepeatMyPreviousOrder> get copyWith =>
      __$RepeatMyPreviousOrderCopyWithImpl<_RepeatMyPreviousOrder>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserOrdersDetails,
    required TResult Function() getMoreUserOrdersDetails,
    required TResult Function(OrderModel orderModel) repeatMyPreviousOrder,
    required TResult Function(OrderModel orderModel) addToCartMyPreviousOrder,
  }) {
    return repeatMyPreviousOrder(orderModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserOrdersDetails,
    TResult Function()? getMoreUserOrdersDetails,
    TResult Function(OrderModel orderModel)? repeatMyPreviousOrder,
    TResult Function(OrderModel orderModel)? addToCartMyPreviousOrder,
    required TResult orElse(),
  }) {
    if (repeatMyPreviousOrder != null) {
      return repeatMyPreviousOrder(orderModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserOrdersDetails value) getUserOrdersDetails,
    required TResult Function(_GetMoreUserOrdersDetails value)
        getMoreUserOrdersDetails,
    required TResult Function(_RepeatMyPreviousOrder value)
        repeatMyPreviousOrder,
    required TResult Function(_AddToCartMyPreviousOrder value)
        addToCartMyPreviousOrder,
  }) {
    return repeatMyPreviousOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserOrdersDetails value)? getUserOrdersDetails,
    TResult Function(_GetMoreUserOrdersDetails value)? getMoreUserOrdersDetails,
    TResult Function(_RepeatMyPreviousOrder value)? repeatMyPreviousOrder,
    TResult Function(_AddToCartMyPreviousOrder value)? addToCartMyPreviousOrder,
    required TResult orElse(),
  }) {
    if (repeatMyPreviousOrder != null) {
      return repeatMyPreviousOrder(this);
    }
    return orElse();
  }
}

abstract class _RepeatMyPreviousOrder implements UserOrdersEvent {
  const factory _RepeatMyPreviousOrder(OrderModel orderModel) =
      _$_RepeatMyPreviousOrder;

  OrderModel get orderModel => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RepeatMyPreviousOrderCopyWith<_RepeatMyPreviousOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddToCartMyPreviousOrderCopyWith<$Res> {
  factory _$AddToCartMyPreviousOrderCopyWith(_AddToCartMyPreviousOrder value,
          $Res Function(_AddToCartMyPreviousOrder) then) =
      __$AddToCartMyPreviousOrderCopyWithImpl<$Res>;
  $Res call({OrderModel orderModel});
}

/// @nodoc
class __$AddToCartMyPreviousOrderCopyWithImpl<$Res>
    extends _$UserOrdersEventCopyWithImpl<$Res>
    implements _$AddToCartMyPreviousOrderCopyWith<$Res> {
  __$AddToCartMyPreviousOrderCopyWithImpl(_AddToCartMyPreviousOrder _value,
      $Res Function(_AddToCartMyPreviousOrder) _then)
      : super(_value, (v) => _then(v as _AddToCartMyPreviousOrder));

  @override
  _AddToCartMyPreviousOrder get _value =>
      super._value as _AddToCartMyPreviousOrder;

  @override
  $Res call({
    Object? orderModel = freezed,
  }) {
    return _then(_AddToCartMyPreviousOrder(
      orderModel == freezed
          ? _value.orderModel
          : orderModel // ignore: cast_nullable_to_non_nullable
              as OrderModel,
    ));
  }
}

/// @nodoc

class _$_AddToCartMyPreviousOrder implements _AddToCartMyPreviousOrder {
  const _$_AddToCartMyPreviousOrder(this.orderModel);

  @override
  final OrderModel orderModel;

  @override
  String toString() {
    return 'UserOrdersEvent.addToCartMyPreviousOrder(orderModel: $orderModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddToCartMyPreviousOrder &&
            (identical(other.orderModel, orderModel) ||
                const DeepCollectionEquality()
                    .equals(other.orderModel, orderModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(orderModel);

  @JsonKey(ignore: true)
  @override
  _$AddToCartMyPreviousOrderCopyWith<_AddToCartMyPreviousOrder> get copyWith =>
      __$AddToCartMyPreviousOrderCopyWithImpl<_AddToCartMyPreviousOrder>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserOrdersDetails,
    required TResult Function() getMoreUserOrdersDetails,
    required TResult Function(OrderModel orderModel) repeatMyPreviousOrder,
    required TResult Function(OrderModel orderModel) addToCartMyPreviousOrder,
  }) {
    return addToCartMyPreviousOrder(orderModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserOrdersDetails,
    TResult Function()? getMoreUserOrdersDetails,
    TResult Function(OrderModel orderModel)? repeatMyPreviousOrder,
    TResult Function(OrderModel orderModel)? addToCartMyPreviousOrder,
    required TResult orElse(),
  }) {
    if (addToCartMyPreviousOrder != null) {
      return addToCartMyPreviousOrder(orderModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserOrdersDetails value) getUserOrdersDetails,
    required TResult Function(_GetMoreUserOrdersDetails value)
        getMoreUserOrdersDetails,
    required TResult Function(_RepeatMyPreviousOrder value)
        repeatMyPreviousOrder,
    required TResult Function(_AddToCartMyPreviousOrder value)
        addToCartMyPreviousOrder,
  }) {
    return addToCartMyPreviousOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserOrdersDetails value)? getUserOrdersDetails,
    TResult Function(_GetMoreUserOrdersDetails value)? getMoreUserOrdersDetails,
    TResult Function(_RepeatMyPreviousOrder value)? repeatMyPreviousOrder,
    TResult Function(_AddToCartMyPreviousOrder value)? addToCartMyPreviousOrder,
    required TResult orElse(),
  }) {
    if (addToCartMyPreviousOrder != null) {
      return addToCartMyPreviousOrder(this);
    }
    return orElse();
  }
}

abstract class _AddToCartMyPreviousOrder implements UserOrdersEvent {
  const factory _AddToCartMyPreviousOrder(OrderModel orderModel) =
      _$_AddToCartMyPreviousOrder;

  OrderModel get orderModel => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddToCartMyPreviousOrderCopyWith<_AddToCartMyPreviousOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UserOrdersStateTearOff {
  const _$UserOrdersStateTearOff();

  _UserOrdersState call(
      {bool? isOrdersLoading,
      bool? isMoreOrdersLoading,
      List<UserOrderModel>? userOrderIdsList,
      List<OrderModel>? ordersList,
      Option<FirebaseFailure>? orderFailureOrSuccess,
      bool? isRepeatOrderLoading,
      bool? isAddToCartLoading,
      Option<Either<FirebaseFailure, Unit>>? repeatOrderFailureOrSucess,
      Option<Either<FirebaseFailure, Unit>>? addToCartFailureOrSuccess}) {
    return _UserOrdersState(
      isOrdersLoading: isOrdersLoading,
      isMoreOrdersLoading: isMoreOrdersLoading,
      userOrderIdsList: userOrderIdsList,
      ordersList: ordersList,
      orderFailureOrSuccess: orderFailureOrSuccess,
      isRepeatOrderLoading: isRepeatOrderLoading,
      isAddToCartLoading: isAddToCartLoading,
      repeatOrderFailureOrSucess: repeatOrderFailureOrSucess,
      addToCartFailureOrSuccess: addToCartFailureOrSuccess,
    );
  }
}

/// @nodoc
const $UserOrdersState = _$UserOrdersStateTearOff();

/// @nodoc
mixin _$UserOrdersState {
  bool? get isOrdersLoading => throw _privateConstructorUsedError;
  bool? get isMoreOrdersLoading => throw _privateConstructorUsedError;
  List<UserOrderModel>? get userOrderIdsList =>
      throw _privateConstructorUsedError;
  List<OrderModel>? get ordersList => throw _privateConstructorUsedError;
  Option<FirebaseFailure>? get orderFailureOrSuccess =>
      throw _privateConstructorUsedError;
  bool? get isRepeatOrderLoading => throw _privateConstructorUsedError;
  bool? get isAddToCartLoading => throw _privateConstructorUsedError;
  Option<Either<FirebaseFailure, Unit>>? get repeatOrderFailureOrSucess =>
      throw _privateConstructorUsedError;
  Option<Either<FirebaseFailure, Unit>>? get addToCartFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserOrdersStateCopyWith<UserOrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserOrdersStateCopyWith<$Res> {
  factory $UserOrdersStateCopyWith(
          UserOrdersState value, $Res Function(UserOrdersState) then) =
      _$UserOrdersStateCopyWithImpl<$Res>;
  $Res call(
      {bool? isOrdersLoading,
      bool? isMoreOrdersLoading,
      List<UserOrderModel>? userOrderIdsList,
      List<OrderModel>? ordersList,
      Option<FirebaseFailure>? orderFailureOrSuccess,
      bool? isRepeatOrderLoading,
      bool? isAddToCartLoading,
      Option<Either<FirebaseFailure, Unit>>? repeatOrderFailureOrSucess,
      Option<Either<FirebaseFailure, Unit>>? addToCartFailureOrSuccess});
}

/// @nodoc
class _$UserOrdersStateCopyWithImpl<$Res>
    implements $UserOrdersStateCopyWith<$Res> {
  _$UserOrdersStateCopyWithImpl(this._value, this._then);

  final UserOrdersState _value;
  // ignore: unused_field
  final $Res Function(UserOrdersState) _then;

  @override
  $Res call({
    Object? isOrdersLoading = freezed,
    Object? isMoreOrdersLoading = freezed,
    Object? userOrderIdsList = freezed,
    Object? ordersList = freezed,
    Object? orderFailureOrSuccess = freezed,
    Object? isRepeatOrderLoading = freezed,
    Object? isAddToCartLoading = freezed,
    Object? repeatOrderFailureOrSucess = freezed,
    Object? addToCartFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      isOrdersLoading: isOrdersLoading == freezed
          ? _value.isOrdersLoading
          : isOrdersLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isMoreOrdersLoading: isMoreOrdersLoading == freezed
          ? _value.isMoreOrdersLoading
          : isMoreOrdersLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      userOrderIdsList: userOrderIdsList == freezed
          ? _value.userOrderIdsList
          : userOrderIdsList // ignore: cast_nullable_to_non_nullable
              as List<UserOrderModel>?,
      ordersList: ordersList == freezed
          ? _value.ordersList
          : ordersList // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>?,
      orderFailureOrSuccess: orderFailureOrSuccess == freezed
          ? _value.orderFailureOrSuccess
          : orderFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<FirebaseFailure>?,
      isRepeatOrderLoading: isRepeatOrderLoading == freezed
          ? _value.isRepeatOrderLoading
          : isRepeatOrderLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAddToCartLoading: isAddToCartLoading == freezed
          ? _value.isAddToCartLoading
          : isAddToCartLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      repeatOrderFailureOrSucess: repeatOrderFailureOrSucess == freezed
          ? _value.repeatOrderFailureOrSucess
          : repeatOrderFailureOrSucess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, Unit>>?,
      addToCartFailureOrSuccess: addToCartFailureOrSuccess == freezed
          ? _value.addToCartFailureOrSuccess
          : addToCartFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, Unit>>?,
    ));
  }
}

/// @nodoc
abstract class _$UserOrdersStateCopyWith<$Res>
    implements $UserOrdersStateCopyWith<$Res> {
  factory _$UserOrdersStateCopyWith(
          _UserOrdersState value, $Res Function(_UserOrdersState) then) =
      __$UserOrdersStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? isOrdersLoading,
      bool? isMoreOrdersLoading,
      List<UserOrderModel>? userOrderIdsList,
      List<OrderModel>? ordersList,
      Option<FirebaseFailure>? orderFailureOrSuccess,
      bool? isRepeatOrderLoading,
      bool? isAddToCartLoading,
      Option<Either<FirebaseFailure, Unit>>? repeatOrderFailureOrSucess,
      Option<Either<FirebaseFailure, Unit>>? addToCartFailureOrSuccess});
}

/// @nodoc
class __$UserOrdersStateCopyWithImpl<$Res>
    extends _$UserOrdersStateCopyWithImpl<$Res>
    implements _$UserOrdersStateCopyWith<$Res> {
  __$UserOrdersStateCopyWithImpl(
      _UserOrdersState _value, $Res Function(_UserOrdersState) _then)
      : super(_value, (v) => _then(v as _UserOrdersState));

  @override
  _UserOrdersState get _value => super._value as _UserOrdersState;

  @override
  $Res call({
    Object? isOrdersLoading = freezed,
    Object? isMoreOrdersLoading = freezed,
    Object? userOrderIdsList = freezed,
    Object? ordersList = freezed,
    Object? orderFailureOrSuccess = freezed,
    Object? isRepeatOrderLoading = freezed,
    Object? isAddToCartLoading = freezed,
    Object? repeatOrderFailureOrSucess = freezed,
    Object? addToCartFailureOrSuccess = freezed,
  }) {
    return _then(_UserOrdersState(
      isOrdersLoading: isOrdersLoading == freezed
          ? _value.isOrdersLoading
          : isOrdersLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isMoreOrdersLoading: isMoreOrdersLoading == freezed
          ? _value.isMoreOrdersLoading
          : isMoreOrdersLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      userOrderIdsList: userOrderIdsList == freezed
          ? _value.userOrderIdsList
          : userOrderIdsList // ignore: cast_nullable_to_non_nullable
              as List<UserOrderModel>?,
      ordersList: ordersList == freezed
          ? _value.ordersList
          : ordersList // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>?,
      orderFailureOrSuccess: orderFailureOrSuccess == freezed
          ? _value.orderFailureOrSuccess
          : orderFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<FirebaseFailure>?,
      isRepeatOrderLoading: isRepeatOrderLoading == freezed
          ? _value.isRepeatOrderLoading
          : isRepeatOrderLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAddToCartLoading: isAddToCartLoading == freezed
          ? _value.isAddToCartLoading
          : isAddToCartLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      repeatOrderFailureOrSucess: repeatOrderFailureOrSucess == freezed
          ? _value.repeatOrderFailureOrSucess
          : repeatOrderFailureOrSucess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, Unit>>?,
      addToCartFailureOrSuccess: addToCartFailureOrSuccess == freezed
          ? _value.addToCartFailureOrSuccess
          : addToCartFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, Unit>>?,
    ));
  }
}

/// @nodoc

class _$_UserOrdersState implements _UserOrdersState {
  const _$_UserOrdersState(
      {this.isOrdersLoading,
      this.isMoreOrdersLoading,
      this.userOrderIdsList,
      this.ordersList,
      this.orderFailureOrSuccess,
      this.isRepeatOrderLoading,
      this.isAddToCartLoading,
      this.repeatOrderFailureOrSucess,
      this.addToCartFailureOrSuccess});

  @override
  final bool? isOrdersLoading;
  @override
  final bool? isMoreOrdersLoading;
  @override
  final List<UserOrderModel>? userOrderIdsList;
  @override
  final List<OrderModel>? ordersList;
  @override
  final Option<FirebaseFailure>? orderFailureOrSuccess;
  @override
  final bool? isRepeatOrderLoading;
  @override
  final bool? isAddToCartLoading;
  @override
  final Option<Either<FirebaseFailure, Unit>>? repeatOrderFailureOrSucess;
  @override
  final Option<Either<FirebaseFailure, Unit>>? addToCartFailureOrSuccess;

  @override
  String toString() {
    return 'UserOrdersState(isOrdersLoading: $isOrdersLoading, isMoreOrdersLoading: $isMoreOrdersLoading, userOrderIdsList: $userOrderIdsList, ordersList: $ordersList, orderFailureOrSuccess: $orderFailureOrSuccess, isRepeatOrderLoading: $isRepeatOrderLoading, isAddToCartLoading: $isAddToCartLoading, repeatOrderFailureOrSucess: $repeatOrderFailureOrSucess, addToCartFailureOrSuccess: $addToCartFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserOrdersState &&
            (identical(other.isOrdersLoading, isOrdersLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isOrdersLoading, isOrdersLoading)) &&
            (identical(other.isMoreOrdersLoading, isMoreOrdersLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isMoreOrdersLoading, isMoreOrdersLoading)) &&
            (identical(other.userOrderIdsList, userOrderIdsList) ||
                const DeepCollectionEquality()
                    .equals(other.userOrderIdsList, userOrderIdsList)) &&
            (identical(other.ordersList, ordersList) ||
                const DeepCollectionEquality()
                    .equals(other.ordersList, ordersList)) &&
            (identical(other.orderFailureOrSuccess, orderFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.orderFailureOrSuccess, orderFailureOrSuccess)) &&
            (identical(other.isRepeatOrderLoading, isRepeatOrderLoading) ||
                const DeepCollectionEquality().equals(
                    other.isRepeatOrderLoading, isRepeatOrderLoading)) &&
            (identical(other.isAddToCartLoading, isAddToCartLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isAddToCartLoading, isAddToCartLoading)) &&
            (identical(other.repeatOrderFailureOrSucess,
                    repeatOrderFailureOrSucess) ||
                const DeepCollectionEquality().equals(
                    other.repeatOrderFailureOrSucess,
                    repeatOrderFailureOrSucess)) &&
            (identical(other.addToCartFailureOrSuccess,
                    addToCartFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.addToCartFailureOrSuccess,
                    addToCartFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isOrdersLoading) ^
      const DeepCollectionEquality().hash(isMoreOrdersLoading) ^
      const DeepCollectionEquality().hash(userOrderIdsList) ^
      const DeepCollectionEquality().hash(ordersList) ^
      const DeepCollectionEquality().hash(orderFailureOrSuccess) ^
      const DeepCollectionEquality().hash(isRepeatOrderLoading) ^
      const DeepCollectionEquality().hash(isAddToCartLoading) ^
      const DeepCollectionEquality().hash(repeatOrderFailureOrSucess) ^
      const DeepCollectionEquality().hash(addToCartFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  _$UserOrdersStateCopyWith<_UserOrdersState> get copyWith =>
      __$UserOrdersStateCopyWithImpl<_UserOrdersState>(this, _$identity);
}

abstract class _UserOrdersState implements UserOrdersState {
  const factory _UserOrdersState(
          {bool? isOrdersLoading,
          bool? isMoreOrdersLoading,
          List<UserOrderModel>? userOrderIdsList,
          List<OrderModel>? ordersList,
          Option<FirebaseFailure>? orderFailureOrSuccess,
          bool? isRepeatOrderLoading,
          bool? isAddToCartLoading,
          Option<Either<FirebaseFailure, Unit>>? repeatOrderFailureOrSucess,
          Option<Either<FirebaseFailure, Unit>>? addToCartFailureOrSuccess}) =
      _$_UserOrdersState;

  @override
  bool? get isOrdersLoading => throw _privateConstructorUsedError;
  @override
  bool? get isMoreOrdersLoading => throw _privateConstructorUsedError;
  @override
  List<UserOrderModel>? get userOrderIdsList =>
      throw _privateConstructorUsedError;
  @override
  List<OrderModel>? get ordersList => throw _privateConstructorUsedError;
  @override
  Option<FirebaseFailure>? get orderFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  bool? get isRepeatOrderLoading => throw _privateConstructorUsedError;
  @override
  bool? get isAddToCartLoading => throw _privateConstructorUsedError;
  @override
  Option<Either<FirebaseFailure, Unit>>? get repeatOrderFailureOrSucess =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<FirebaseFailure, Unit>>? get addToCartFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserOrdersStateCopyWith<_UserOrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}
