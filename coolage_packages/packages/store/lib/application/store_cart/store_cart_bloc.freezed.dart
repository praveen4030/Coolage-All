// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'store_cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StoreCartEventTearOff {
  const _$StoreCartEventTearOff();

  _GetStoreCartItems getStoreCartItems() {
    return const _GetStoreCartItems();
  }

  _PlaceOrder placeOrder(
      {CartModel? cartModel,
      bool? isDelivery,
      String? deliveryAddress,
      CoolUser? coolUser}) {
    return _PlaceOrder(
      cartModel: cartModel,
      isDelivery: isDelivery,
      deliveryAddress: deliveryAddress,
      coolUser: coolUser,
    );
  }

  _AddToCart addToCart({String? canteenId, String? itemId, bool? isIncreased}) {
    return _AddToCart(
      canteenId: canteenId,
      itemId: itemId,
      isIncreased: isIncreased,
    );
  }
}

/// @nodoc
const $StoreCartEvent = _$StoreCartEventTearOff();

/// @nodoc
mixin _$StoreCartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getStoreCartItems,
    required TResult Function(CartModel? cartModel, bool? isDelivery,
            String? deliveryAddress, CoolUser? coolUser)
        placeOrder,
    required TResult Function(
            String? canteenId, String? itemId, bool? isIncreased)
        addToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getStoreCartItems,
    TResult Function(CartModel? cartModel, bool? isDelivery,
            String? deliveryAddress, CoolUser? coolUser)?
        placeOrder,
    TResult Function(String? canteenId, String? itemId, bool? isIncreased)?
        addToCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetStoreCartItems value) getStoreCartItems,
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_AddToCart value) addToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStoreCartItems value)? getStoreCartItems,
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_AddToCart value)? addToCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreCartEventCopyWith<$Res> {
  factory $StoreCartEventCopyWith(
          StoreCartEvent value, $Res Function(StoreCartEvent) then) =
      _$StoreCartEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoreCartEventCopyWithImpl<$Res>
    implements $StoreCartEventCopyWith<$Res> {
  _$StoreCartEventCopyWithImpl(this._value, this._then);

  final StoreCartEvent _value;
  // ignore: unused_field
  final $Res Function(StoreCartEvent) _then;
}

/// @nodoc
abstract class _$GetStoreCartItemsCopyWith<$Res> {
  factory _$GetStoreCartItemsCopyWith(
          _GetStoreCartItems value, $Res Function(_GetStoreCartItems) then) =
      __$GetStoreCartItemsCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetStoreCartItemsCopyWithImpl<$Res>
    extends _$StoreCartEventCopyWithImpl<$Res>
    implements _$GetStoreCartItemsCopyWith<$Res> {
  __$GetStoreCartItemsCopyWithImpl(
      _GetStoreCartItems _value, $Res Function(_GetStoreCartItems) _then)
      : super(_value, (v) => _then(v as _GetStoreCartItems));

  @override
  _GetStoreCartItems get _value => super._value as _GetStoreCartItems;
}

/// @nodoc

class _$_GetStoreCartItems implements _GetStoreCartItems {
  const _$_GetStoreCartItems();

  @override
  String toString() {
    return 'StoreCartEvent.getStoreCartItems()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetStoreCartItems);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getStoreCartItems,
    required TResult Function(CartModel? cartModel, bool? isDelivery,
            String? deliveryAddress, CoolUser? coolUser)
        placeOrder,
    required TResult Function(
            String? canteenId, String? itemId, bool? isIncreased)
        addToCart,
  }) {
    return getStoreCartItems();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getStoreCartItems,
    TResult Function(CartModel? cartModel, bool? isDelivery,
            String? deliveryAddress, CoolUser? coolUser)?
        placeOrder,
    TResult Function(String? canteenId, String? itemId, bool? isIncreased)?
        addToCart,
    required TResult orElse(),
  }) {
    if (getStoreCartItems != null) {
      return getStoreCartItems();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetStoreCartItems value) getStoreCartItems,
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_AddToCart value) addToCart,
  }) {
    return getStoreCartItems(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStoreCartItems value)? getStoreCartItems,
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_AddToCart value)? addToCart,
    required TResult orElse(),
  }) {
    if (getStoreCartItems != null) {
      return getStoreCartItems(this);
    }
    return orElse();
  }
}

abstract class _GetStoreCartItems implements StoreCartEvent {
  const factory _GetStoreCartItems() = _$_GetStoreCartItems;
}

/// @nodoc
abstract class _$PlaceOrderCopyWith<$Res> {
  factory _$PlaceOrderCopyWith(
          _PlaceOrder value, $Res Function(_PlaceOrder) then) =
      __$PlaceOrderCopyWithImpl<$Res>;
  $Res call(
      {CartModel? cartModel,
      bool? isDelivery,
      String? deliveryAddress,
      CoolUser? coolUser});
}

/// @nodoc
class __$PlaceOrderCopyWithImpl<$Res> extends _$StoreCartEventCopyWithImpl<$Res>
    implements _$PlaceOrderCopyWith<$Res> {
  __$PlaceOrderCopyWithImpl(
      _PlaceOrder _value, $Res Function(_PlaceOrder) _then)
      : super(_value, (v) => _then(v as _PlaceOrder));

  @override
  _PlaceOrder get _value => super._value as _PlaceOrder;

  @override
  $Res call({
    Object? cartModel = freezed,
    Object? isDelivery = freezed,
    Object? deliveryAddress = freezed,
    Object? coolUser = freezed,
  }) {
    return _then(_PlaceOrder(
      cartModel: cartModel == freezed
          ? _value.cartModel
          : cartModel // ignore: cast_nullable_to_non_nullable
              as CartModel?,
      isDelivery: isDelivery == freezed
          ? _value.isDelivery
          : isDelivery // ignore: cast_nullable_to_non_nullable
              as bool?,
      deliveryAddress: deliveryAddress == freezed
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      coolUser: coolUser == freezed
          ? _value.coolUser
          : coolUser // ignore: cast_nullable_to_non_nullable
              as CoolUser?,
    ));
  }
}

/// @nodoc

class _$_PlaceOrder implements _PlaceOrder {
  const _$_PlaceOrder(
      {this.cartModel, this.isDelivery, this.deliveryAddress, this.coolUser});

  @override
  final CartModel? cartModel;
  @override
  final bool? isDelivery;
  @override
  final String? deliveryAddress;
  @override
  final CoolUser? coolUser;

  @override
  String toString() {
    return 'StoreCartEvent.placeOrder(cartModel: $cartModel, isDelivery: $isDelivery, deliveryAddress: $deliveryAddress, coolUser: $coolUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlaceOrder &&
            (identical(other.cartModel, cartModel) ||
                const DeepCollectionEquality()
                    .equals(other.cartModel, cartModel)) &&
            (identical(other.isDelivery, isDelivery) ||
                const DeepCollectionEquality()
                    .equals(other.isDelivery, isDelivery)) &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryAddress, deliveryAddress)) &&
            (identical(other.coolUser, coolUser) ||
                const DeepCollectionEquality()
                    .equals(other.coolUser, coolUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cartModel) ^
      const DeepCollectionEquality().hash(isDelivery) ^
      const DeepCollectionEquality().hash(deliveryAddress) ^
      const DeepCollectionEquality().hash(coolUser);

  @JsonKey(ignore: true)
  @override
  _$PlaceOrderCopyWith<_PlaceOrder> get copyWith =>
      __$PlaceOrderCopyWithImpl<_PlaceOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getStoreCartItems,
    required TResult Function(CartModel? cartModel, bool? isDelivery,
            String? deliveryAddress, CoolUser? coolUser)
        placeOrder,
    required TResult Function(
            String? canteenId, String? itemId, bool? isIncreased)
        addToCart,
  }) {
    return placeOrder(cartModel, isDelivery, deliveryAddress, coolUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getStoreCartItems,
    TResult Function(CartModel? cartModel, bool? isDelivery,
            String? deliveryAddress, CoolUser? coolUser)?
        placeOrder,
    TResult Function(String? canteenId, String? itemId, bool? isIncreased)?
        addToCart,
    required TResult orElse(),
  }) {
    if (placeOrder != null) {
      return placeOrder(cartModel, isDelivery, deliveryAddress, coolUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetStoreCartItems value) getStoreCartItems,
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_AddToCart value) addToCart,
  }) {
    return placeOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStoreCartItems value)? getStoreCartItems,
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_AddToCart value)? addToCart,
    required TResult orElse(),
  }) {
    if (placeOrder != null) {
      return placeOrder(this);
    }
    return orElse();
  }
}

abstract class _PlaceOrder implements StoreCartEvent {
  const factory _PlaceOrder(
      {CartModel? cartModel,
      bool? isDelivery,
      String? deliveryAddress,
      CoolUser? coolUser}) = _$_PlaceOrder;

  CartModel? get cartModel => throw _privateConstructorUsedError;
  bool? get isDelivery => throw _privateConstructorUsedError;
  String? get deliveryAddress => throw _privateConstructorUsedError;
  CoolUser? get coolUser => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PlaceOrderCopyWith<_PlaceOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddToCartCopyWith<$Res> {
  factory _$AddToCartCopyWith(
          _AddToCart value, $Res Function(_AddToCart) then) =
      __$AddToCartCopyWithImpl<$Res>;
  $Res call({String? canteenId, String? itemId, bool? isIncreased});
}

/// @nodoc
class __$AddToCartCopyWithImpl<$Res> extends _$StoreCartEventCopyWithImpl<$Res>
    implements _$AddToCartCopyWith<$Res> {
  __$AddToCartCopyWithImpl(_AddToCart _value, $Res Function(_AddToCart) _then)
      : super(_value, (v) => _then(v as _AddToCart));

  @override
  _AddToCart get _value => super._value as _AddToCart;

  @override
  $Res call({
    Object? canteenId = freezed,
    Object? itemId = freezed,
    Object? isIncreased = freezed,
  }) {
    return _then(_AddToCart(
      canteenId: canteenId == freezed
          ? _value.canteenId
          : canteenId // ignore: cast_nullable_to_non_nullable
              as String?,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      isIncreased: isIncreased == freezed
          ? _value.isIncreased
          : isIncreased // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_AddToCart implements _AddToCart {
  const _$_AddToCart({this.canteenId, this.itemId, this.isIncreased});

  @override
  final String? canteenId;
  @override
  final String? itemId;
  @override
  final bool? isIncreased;

  @override
  String toString() {
    return 'StoreCartEvent.addToCart(canteenId: $canteenId, itemId: $itemId, isIncreased: $isIncreased)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddToCart &&
            (identical(other.canteenId, canteenId) ||
                const DeepCollectionEquality()
                    .equals(other.canteenId, canteenId)) &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)) &&
            (identical(other.isIncreased, isIncreased) ||
                const DeepCollectionEquality()
                    .equals(other.isIncreased, isIncreased)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(canteenId) ^
      const DeepCollectionEquality().hash(itemId) ^
      const DeepCollectionEquality().hash(isIncreased);

  @JsonKey(ignore: true)
  @override
  _$AddToCartCopyWith<_AddToCart> get copyWith =>
      __$AddToCartCopyWithImpl<_AddToCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getStoreCartItems,
    required TResult Function(CartModel? cartModel, bool? isDelivery,
            String? deliveryAddress, CoolUser? coolUser)
        placeOrder,
    required TResult Function(
            String? canteenId, String? itemId, bool? isIncreased)
        addToCart,
  }) {
    return addToCart(canteenId, itemId, isIncreased);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getStoreCartItems,
    TResult Function(CartModel? cartModel, bool? isDelivery,
            String? deliveryAddress, CoolUser? coolUser)?
        placeOrder,
    TResult Function(String? canteenId, String? itemId, bool? isIncreased)?
        addToCart,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(canteenId, itemId, isIncreased);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetStoreCartItems value) getStoreCartItems,
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_AddToCart value) addToCart,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStoreCartItems value)? getStoreCartItems,
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_AddToCart value)? addToCart,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class _AddToCart implements StoreCartEvent {
  const factory _AddToCart(
      {String? canteenId, String? itemId, bool? isIncreased}) = _$_AddToCart;

  String? get canteenId => throw _privateConstructorUsedError;
  String? get itemId => throw _privateConstructorUsedError;
  bool? get isIncreased => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddToCartCopyWith<_AddToCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$StoreCartStateTearOff {
  const _$StoreCartStateTearOff();

  _StoreCartState call(
      {bool? isStoreCartLoading,
      bool? isPlacingOrder,
      Option<FirebaseFailure>? storeCartFailureOrSuccess,
      Option<Either<FirebaseFailure, Unit>>? placeOrderFailureOrSuccess,
      Map<String, CartModel>? cartItemsMap,
      bool? isUpdatingCart}) {
    return _StoreCartState(
      isStoreCartLoading: isStoreCartLoading,
      isPlacingOrder: isPlacingOrder,
      storeCartFailureOrSuccess: storeCartFailureOrSuccess,
      placeOrderFailureOrSuccess: placeOrderFailureOrSuccess,
      cartItemsMap: cartItemsMap,
      isUpdatingCart: isUpdatingCart,
    );
  }
}

/// @nodoc
const $StoreCartState = _$StoreCartStateTearOff();

/// @nodoc
mixin _$StoreCartState {
  bool? get isStoreCartLoading => throw _privateConstructorUsedError;
  bool? get isPlacingOrder => throw _privateConstructorUsedError;
  Option<FirebaseFailure>? get storeCartFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Option<Either<FirebaseFailure, Unit>>? get placeOrderFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Map<String, CartModel>? get cartItemsMap =>
      throw _privateConstructorUsedError;
  bool? get isUpdatingCart => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StoreCartStateCopyWith<StoreCartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreCartStateCopyWith<$Res> {
  factory $StoreCartStateCopyWith(
          StoreCartState value, $Res Function(StoreCartState) then) =
      _$StoreCartStateCopyWithImpl<$Res>;
  $Res call(
      {bool? isStoreCartLoading,
      bool? isPlacingOrder,
      Option<FirebaseFailure>? storeCartFailureOrSuccess,
      Option<Either<FirebaseFailure, Unit>>? placeOrderFailureOrSuccess,
      Map<String, CartModel>? cartItemsMap,
      bool? isUpdatingCart});
}

/// @nodoc
class _$StoreCartStateCopyWithImpl<$Res>
    implements $StoreCartStateCopyWith<$Res> {
  _$StoreCartStateCopyWithImpl(this._value, this._then);

  final StoreCartState _value;
  // ignore: unused_field
  final $Res Function(StoreCartState) _then;

  @override
  $Res call({
    Object? isStoreCartLoading = freezed,
    Object? isPlacingOrder = freezed,
    Object? storeCartFailureOrSuccess = freezed,
    Object? placeOrderFailureOrSuccess = freezed,
    Object? cartItemsMap = freezed,
    Object? isUpdatingCart = freezed,
  }) {
    return _then(_value.copyWith(
      isStoreCartLoading: isStoreCartLoading == freezed
          ? _value.isStoreCartLoading
          : isStoreCartLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPlacingOrder: isPlacingOrder == freezed
          ? _value.isPlacingOrder
          : isPlacingOrder // ignore: cast_nullable_to_non_nullable
              as bool?,
      storeCartFailureOrSuccess: storeCartFailureOrSuccess == freezed
          ? _value.storeCartFailureOrSuccess
          : storeCartFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<FirebaseFailure>?,
      placeOrderFailureOrSuccess: placeOrderFailureOrSuccess == freezed
          ? _value.placeOrderFailureOrSuccess
          : placeOrderFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, Unit>>?,
      cartItemsMap: cartItemsMap == freezed
          ? _value.cartItemsMap
          : cartItemsMap // ignore: cast_nullable_to_non_nullable
              as Map<String, CartModel>?,
      isUpdatingCart: isUpdatingCart == freezed
          ? _value.isUpdatingCart
          : isUpdatingCart // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$StoreCartStateCopyWith<$Res>
    implements $StoreCartStateCopyWith<$Res> {
  factory _$StoreCartStateCopyWith(
          _StoreCartState value, $Res Function(_StoreCartState) then) =
      __$StoreCartStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? isStoreCartLoading,
      bool? isPlacingOrder,
      Option<FirebaseFailure>? storeCartFailureOrSuccess,
      Option<Either<FirebaseFailure, Unit>>? placeOrderFailureOrSuccess,
      Map<String, CartModel>? cartItemsMap,
      bool? isUpdatingCart});
}

/// @nodoc
class __$StoreCartStateCopyWithImpl<$Res>
    extends _$StoreCartStateCopyWithImpl<$Res>
    implements _$StoreCartStateCopyWith<$Res> {
  __$StoreCartStateCopyWithImpl(
      _StoreCartState _value, $Res Function(_StoreCartState) _then)
      : super(_value, (v) => _then(v as _StoreCartState));

  @override
  _StoreCartState get _value => super._value as _StoreCartState;

  @override
  $Res call({
    Object? isStoreCartLoading = freezed,
    Object? isPlacingOrder = freezed,
    Object? storeCartFailureOrSuccess = freezed,
    Object? placeOrderFailureOrSuccess = freezed,
    Object? cartItemsMap = freezed,
    Object? isUpdatingCart = freezed,
  }) {
    return _then(_StoreCartState(
      isStoreCartLoading: isStoreCartLoading == freezed
          ? _value.isStoreCartLoading
          : isStoreCartLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPlacingOrder: isPlacingOrder == freezed
          ? _value.isPlacingOrder
          : isPlacingOrder // ignore: cast_nullable_to_non_nullable
              as bool?,
      storeCartFailureOrSuccess: storeCartFailureOrSuccess == freezed
          ? _value.storeCartFailureOrSuccess
          : storeCartFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<FirebaseFailure>?,
      placeOrderFailureOrSuccess: placeOrderFailureOrSuccess == freezed
          ? _value.placeOrderFailureOrSuccess
          : placeOrderFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, Unit>>?,
      cartItemsMap: cartItemsMap == freezed
          ? _value.cartItemsMap
          : cartItemsMap // ignore: cast_nullable_to_non_nullable
              as Map<String, CartModel>?,
      isUpdatingCart: isUpdatingCart == freezed
          ? _value.isUpdatingCart
          : isUpdatingCart // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_StoreCartState implements _StoreCartState {
  const _$_StoreCartState(
      {this.isStoreCartLoading,
      this.isPlacingOrder,
      this.storeCartFailureOrSuccess,
      this.placeOrderFailureOrSuccess,
      this.cartItemsMap,
      this.isUpdatingCart});

  @override
  final bool? isStoreCartLoading;
  @override
  final bool? isPlacingOrder;
  @override
  final Option<FirebaseFailure>? storeCartFailureOrSuccess;
  @override
  final Option<Either<FirebaseFailure, Unit>>? placeOrderFailureOrSuccess;
  @override
  final Map<String, CartModel>? cartItemsMap;
  @override
  final bool? isUpdatingCart;

  @override
  String toString() {
    return 'StoreCartState(isStoreCartLoading: $isStoreCartLoading, isPlacingOrder: $isPlacingOrder, storeCartFailureOrSuccess: $storeCartFailureOrSuccess, placeOrderFailureOrSuccess: $placeOrderFailureOrSuccess, cartItemsMap: $cartItemsMap, isUpdatingCart: $isUpdatingCart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StoreCartState &&
            (identical(other.isStoreCartLoading, isStoreCartLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isStoreCartLoading, isStoreCartLoading)) &&
            (identical(other.isPlacingOrder, isPlacingOrder) ||
                const DeepCollectionEquality()
                    .equals(other.isPlacingOrder, isPlacingOrder)) &&
            (identical(other.storeCartFailureOrSuccess,
                    storeCartFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.storeCartFailureOrSuccess,
                    storeCartFailureOrSuccess)) &&
            (identical(other.placeOrderFailureOrSuccess,
                    placeOrderFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.placeOrderFailureOrSuccess,
                    placeOrderFailureOrSuccess)) &&
            (identical(other.cartItemsMap, cartItemsMap) ||
                const DeepCollectionEquality()
                    .equals(other.cartItemsMap, cartItemsMap)) &&
            (identical(other.isUpdatingCart, isUpdatingCart) ||
                const DeepCollectionEquality()
                    .equals(other.isUpdatingCart, isUpdatingCart)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isStoreCartLoading) ^
      const DeepCollectionEquality().hash(isPlacingOrder) ^
      const DeepCollectionEquality().hash(storeCartFailureOrSuccess) ^
      const DeepCollectionEquality().hash(placeOrderFailureOrSuccess) ^
      const DeepCollectionEquality().hash(cartItemsMap) ^
      const DeepCollectionEquality().hash(isUpdatingCart);

  @JsonKey(ignore: true)
  @override
  _$StoreCartStateCopyWith<_StoreCartState> get copyWith =>
      __$StoreCartStateCopyWithImpl<_StoreCartState>(this, _$identity);
}

abstract class _StoreCartState implements StoreCartState {
  const factory _StoreCartState(
      {bool? isStoreCartLoading,
      bool? isPlacingOrder,
      Option<FirebaseFailure>? storeCartFailureOrSuccess,
      Option<Either<FirebaseFailure, Unit>>? placeOrderFailureOrSuccess,
      Map<String, CartModel>? cartItemsMap,
      bool? isUpdatingCart}) = _$_StoreCartState;

  @override
  bool? get isStoreCartLoading => throw _privateConstructorUsedError;
  @override
  bool? get isPlacingOrder => throw _privateConstructorUsedError;
  @override
  Option<FirebaseFailure>? get storeCartFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<FirebaseFailure, Unit>>? get placeOrderFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  Map<String, CartModel>? get cartItemsMap =>
      throw _privateConstructorUsedError;
  @override
  bool? get isUpdatingCart => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StoreCartStateCopyWith<_StoreCartState> get copyWith =>
      throw _privateConstructorUsedError;
}
