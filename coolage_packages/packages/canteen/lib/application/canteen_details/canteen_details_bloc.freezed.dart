// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'canteen_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CanteenDetailsEventTearOff {
  const _$CanteenDetailsEventTearOff();

  _GetCollegeCanteens getCollegeCanteens({required String? userCollege}) {
    return _GetCollegeCanteens(
      userCollege: userCollege,
    );
  }

  _GetCanteensNearby getCanteensNearby({String? userCollege}) {
    return _GetCanteensNearby(
      userCollege: userCollege,
    );
  }

  _GetCanteenDetails getCanteenDetails(
      {required CanteenBasicDetailsModel? canteenBasicDetailsModel}) {
    return _GetCanteenDetails(
      canteenBasicDetailsModel: canteenBasicDetailsModel,
    );
  }

  _GetCanteenCartItems getCanteenCartItems() {
    return const _GetCanteenCartItems();
  }

  _AddToCart addToCart(
      {required bool? isIncreased,
      required ItemModel? menuItemModel,
      required CanteenBasicDetailsModel? canteenBasicDetailsModel}) {
    return _AddToCart(
      isIncreased: isIncreased,
      menuItemModel: menuItemModel,
      canteenBasicDetailsModel: canteenBasicDetailsModel,
    );
  }

  _ChangeVegNonveg changeVegNonveg(
      {required bool? isVeg, required bool? isNonveg}) {
    return _ChangeVegNonveg(
      isVeg: isVeg,
      isNonveg: isNonveg,
    );
  }

  _PlaceOrder placeOrder(
      {required CartModel? cartModel,
      required bool? isDelivery,
      required DeliverableZonesModel? deliverableZonesModel,
      required String? deliveryAddress,
      required CoolUser? coolUser,
      required String? paymentId,
      required bool? isTakeAway,
      required String? comments}) {
    return _PlaceOrder(
      cartModel: cartModel,
      isDelivery: isDelivery,
      deliverableZonesModel: deliverableZonesModel,
      deliveryAddress: deliveryAddress,
      coolUser: coolUser,
      paymentId: paymentId,
      isTakeAway: isTakeAway,
      comments: comments,
    );
  }

  _PlaceOrderLoading placeOrderLoading({required bool? isLoading}) {
    return _PlaceOrderLoading(
      isLoading: isLoading,
    );
  }

  _ShowBackToTop showBackToTop({required bool? isShowingbackToTop}) {
    return _ShowBackToTop(
      isShowingbackToTop: isShowingbackToTop,
    );
  }

  _UpdateDeliveryAdressIndex updateDeliveryAdressIndex(
      {required int deliveryAddressIndex}) {
    return _UpdateDeliveryAdressIndex(
      deliveryAddressIndex: deliveryAddressIndex,
    );
  }
}

/// @nodoc
const $CanteenDetailsEvent = _$CanteenDetailsEventTearOff();

/// @nodoc
mixin _$CanteenDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userCollege) getCollegeCanteens,
    required TResult Function(String? userCollege) getCanteensNearby,
    required TResult Function(
            CanteenBasicDetailsModel? canteenBasicDetailsModel)
        getCanteenDetails,
    required TResult Function() getCanteenCartItems,
    required TResult Function(bool? isIncreased, ItemModel? menuItemModel,
            CanteenBasicDetailsModel? canteenBasicDetailsModel)
        addToCart,
    required TResult Function(bool? isVeg, bool? isNonveg) changeVegNonveg,
    required TResult Function(
            CartModel? cartModel,
            bool? isDelivery,
            DeliverableZonesModel? deliverableZonesModel,
            String? deliveryAddress,
            CoolUser? coolUser,
            String? paymentId,
            bool? isTakeAway,
            String? comments)
        placeOrder,
    required TResult Function(bool? isLoading) placeOrderLoading,
    required TResult Function(bool? isShowingbackToTop) showBackToTop,
    required TResult Function(int deliveryAddressIndex)
        updateDeliveryAdressIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userCollege)? getCollegeCanteens,
    TResult Function(String? userCollege)? getCanteensNearby,
    TResult Function(CanteenBasicDetailsModel? canteenBasicDetailsModel)?
        getCanteenDetails,
    TResult Function()? getCanteenCartItems,
    TResult Function(bool? isIncreased, ItemModel? menuItemModel,
            CanteenBasicDetailsModel? canteenBasicDetailsModel)?
        addToCart,
    TResult Function(bool? isVeg, bool? isNonveg)? changeVegNonveg,
    TResult Function(
            CartModel? cartModel,
            bool? isDelivery,
            DeliverableZonesModel? deliverableZonesModel,
            String? deliveryAddress,
            CoolUser? coolUser,
            String? paymentId,
            bool? isTakeAway,
            String? comments)?
        placeOrder,
    TResult Function(bool? isLoading)? placeOrderLoading,
    TResult Function(bool? isShowingbackToTop)? showBackToTop,
    TResult Function(int deliveryAddressIndex)? updateDeliveryAdressIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCollegeCanteens value) getCollegeCanteens,
    required TResult Function(_GetCanteensNearby value) getCanteensNearby,
    required TResult Function(_GetCanteenDetails value) getCanteenDetails,
    required TResult Function(_GetCanteenCartItems value) getCanteenCartItems,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_ChangeVegNonveg value) changeVegNonveg,
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_PlaceOrderLoading value) placeOrderLoading,
    required TResult Function(_ShowBackToTop value) showBackToTop,
    required TResult Function(_UpdateDeliveryAdressIndex value)
        updateDeliveryAdressIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCollegeCanteens value)? getCollegeCanteens,
    TResult Function(_GetCanteensNearby value)? getCanteensNearby,
    TResult Function(_GetCanteenDetails value)? getCanteenDetails,
    TResult Function(_GetCanteenCartItems value)? getCanteenCartItems,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_ChangeVegNonveg value)? changeVegNonveg,
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_PlaceOrderLoading value)? placeOrderLoading,
    TResult Function(_ShowBackToTop value)? showBackToTop,
    TResult Function(_UpdateDeliveryAdressIndex value)?
        updateDeliveryAdressIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CanteenDetailsEventCopyWith<$Res> {
  factory $CanteenDetailsEventCopyWith(
          CanteenDetailsEvent value, $Res Function(CanteenDetailsEvent) then) =
      _$CanteenDetailsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CanteenDetailsEventCopyWithImpl<$Res>
    implements $CanteenDetailsEventCopyWith<$Res> {
  _$CanteenDetailsEventCopyWithImpl(this._value, this._then);

  final CanteenDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(CanteenDetailsEvent) _then;
}

/// @nodoc
abstract class _$GetCollegeCanteensCopyWith<$Res> {
  factory _$GetCollegeCanteensCopyWith(
          _GetCollegeCanteens value, $Res Function(_GetCollegeCanteens) then) =
      __$GetCollegeCanteensCopyWithImpl<$Res>;
  $Res call({String? userCollege});
}

/// @nodoc
class __$GetCollegeCanteensCopyWithImpl<$Res>
    extends _$CanteenDetailsEventCopyWithImpl<$Res>
    implements _$GetCollegeCanteensCopyWith<$Res> {
  __$GetCollegeCanteensCopyWithImpl(
      _GetCollegeCanteens _value, $Res Function(_GetCollegeCanteens) _then)
      : super(_value, (v) => _then(v as _GetCollegeCanteens));

  @override
  _GetCollegeCanteens get _value => super._value as _GetCollegeCanteens;

  @override
  $Res call({
    Object? userCollege = freezed,
  }) {
    return _then(_GetCollegeCanteens(
      userCollege: userCollege == freezed
          ? _value.userCollege
          : userCollege // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GetCollegeCanteens implements _GetCollegeCanteens {
  const _$_GetCollegeCanteens({required this.userCollege});

  @override
  final String? userCollege;

  @override
  String toString() {
    return 'CanteenDetailsEvent.getCollegeCanteens(userCollege: $userCollege)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetCollegeCanteens &&
            (identical(other.userCollege, userCollege) ||
                const DeepCollectionEquality()
                    .equals(other.userCollege, userCollege)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userCollege);

  @JsonKey(ignore: true)
  @override
  _$GetCollegeCanteensCopyWith<_GetCollegeCanteens> get copyWith =>
      __$GetCollegeCanteensCopyWithImpl<_GetCollegeCanteens>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userCollege) getCollegeCanteens,
    required TResult Function(String? userCollege) getCanteensNearby,
    required TResult Function(
            CanteenBasicDetailsModel? canteenBasicDetailsModel)
        getCanteenDetails,
    required TResult Function() getCanteenCartItems,
    required TResult Function(bool? isIncreased, ItemModel? menuItemModel,
            CanteenBasicDetailsModel? canteenBasicDetailsModel)
        addToCart,
    required TResult Function(bool? isVeg, bool? isNonveg) changeVegNonveg,
    required TResult Function(
            CartModel? cartModel,
            bool? isDelivery,
            DeliverableZonesModel? deliverableZonesModel,
            String? deliveryAddress,
            CoolUser? coolUser,
            String? paymentId,
            bool? isTakeAway,
            String? comments)
        placeOrder,
    required TResult Function(bool? isLoading) placeOrderLoading,
    required TResult Function(bool? isShowingbackToTop) showBackToTop,
    required TResult Function(int deliveryAddressIndex)
        updateDeliveryAdressIndex,
  }) {
    return getCollegeCanteens(userCollege);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userCollege)? getCollegeCanteens,
    TResult Function(String? userCollege)? getCanteensNearby,
    TResult Function(CanteenBasicDetailsModel? canteenBasicDetailsModel)?
        getCanteenDetails,
    TResult Function()? getCanteenCartItems,
    TResult Function(bool? isIncreased, ItemModel? menuItemModel,
            CanteenBasicDetailsModel? canteenBasicDetailsModel)?
        addToCart,
    TResult Function(bool? isVeg, bool? isNonveg)? changeVegNonveg,
    TResult Function(
            CartModel? cartModel,
            bool? isDelivery,
            DeliverableZonesModel? deliverableZonesModel,
            String? deliveryAddress,
            CoolUser? coolUser,
            String? paymentId,
            bool? isTakeAway,
            String? comments)?
        placeOrder,
    TResult Function(bool? isLoading)? placeOrderLoading,
    TResult Function(bool? isShowingbackToTop)? showBackToTop,
    TResult Function(int deliveryAddressIndex)? updateDeliveryAdressIndex,
    required TResult orElse(),
  }) {
    if (getCollegeCanteens != null) {
      return getCollegeCanteens(userCollege);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCollegeCanteens value) getCollegeCanteens,
    required TResult Function(_GetCanteensNearby value) getCanteensNearby,
    required TResult Function(_GetCanteenDetails value) getCanteenDetails,
    required TResult Function(_GetCanteenCartItems value) getCanteenCartItems,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_ChangeVegNonveg value) changeVegNonveg,
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_PlaceOrderLoading value) placeOrderLoading,
    required TResult Function(_ShowBackToTop value) showBackToTop,
    required TResult Function(_UpdateDeliveryAdressIndex value)
        updateDeliveryAdressIndex,
  }) {
    return getCollegeCanteens(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCollegeCanteens value)? getCollegeCanteens,
    TResult Function(_GetCanteensNearby value)? getCanteensNearby,
    TResult Function(_GetCanteenDetails value)? getCanteenDetails,
    TResult Function(_GetCanteenCartItems value)? getCanteenCartItems,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_ChangeVegNonveg value)? changeVegNonveg,
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_PlaceOrderLoading value)? placeOrderLoading,
    TResult Function(_ShowBackToTop value)? showBackToTop,
    TResult Function(_UpdateDeliveryAdressIndex value)?
        updateDeliveryAdressIndex,
    required TResult orElse(),
  }) {
    if (getCollegeCanteens != null) {
      return getCollegeCanteens(this);
    }
    return orElse();
  }
}

abstract class _GetCollegeCanteens implements CanteenDetailsEvent {
  const factory _GetCollegeCanteens({required String? userCollege}) =
      _$_GetCollegeCanteens;

  String? get userCollege => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetCollegeCanteensCopyWith<_GetCollegeCanteens> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetCanteensNearbyCopyWith<$Res> {
  factory _$GetCanteensNearbyCopyWith(
          _GetCanteensNearby value, $Res Function(_GetCanteensNearby) then) =
      __$GetCanteensNearbyCopyWithImpl<$Res>;
  $Res call({String? userCollege});
}

/// @nodoc
class __$GetCanteensNearbyCopyWithImpl<$Res>
    extends _$CanteenDetailsEventCopyWithImpl<$Res>
    implements _$GetCanteensNearbyCopyWith<$Res> {
  __$GetCanteensNearbyCopyWithImpl(
      _GetCanteensNearby _value, $Res Function(_GetCanteensNearby) _then)
      : super(_value, (v) => _then(v as _GetCanteensNearby));

  @override
  _GetCanteensNearby get _value => super._value as _GetCanteensNearby;

  @override
  $Res call({
    Object? userCollege = freezed,
  }) {
    return _then(_GetCanteensNearby(
      userCollege: userCollege == freezed
          ? _value.userCollege
          : userCollege // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GetCanteensNearby implements _GetCanteensNearby {
  const _$_GetCanteensNearby({this.userCollege});

  @override
  final String? userCollege;

  @override
  String toString() {
    return 'CanteenDetailsEvent.getCanteensNearby(userCollege: $userCollege)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetCanteensNearby &&
            (identical(other.userCollege, userCollege) ||
                const DeepCollectionEquality()
                    .equals(other.userCollege, userCollege)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userCollege);

  @JsonKey(ignore: true)
  @override
  _$GetCanteensNearbyCopyWith<_GetCanteensNearby> get copyWith =>
      __$GetCanteensNearbyCopyWithImpl<_GetCanteensNearby>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userCollege) getCollegeCanteens,
    required TResult Function(String? userCollege) getCanteensNearby,
    required TResult Function(
            CanteenBasicDetailsModel? canteenBasicDetailsModel)
        getCanteenDetails,
    required TResult Function() getCanteenCartItems,
    required TResult Function(bool? isIncreased, ItemModel? menuItemModel,
            CanteenBasicDetailsModel? canteenBasicDetailsModel)
        addToCart,
    required TResult Function(bool? isVeg, bool? isNonveg) changeVegNonveg,
    required TResult Function(
            CartModel? cartModel,
            bool? isDelivery,
            DeliverableZonesModel? deliverableZonesModel,
            String? deliveryAddress,
            CoolUser? coolUser,
            String? paymentId,
            bool? isTakeAway,
            String? comments)
        placeOrder,
    required TResult Function(bool? isLoading) placeOrderLoading,
    required TResult Function(bool? isShowingbackToTop) showBackToTop,
    required TResult Function(int deliveryAddressIndex)
        updateDeliveryAdressIndex,
  }) {
    return getCanteensNearby(userCollege);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userCollege)? getCollegeCanteens,
    TResult Function(String? userCollege)? getCanteensNearby,
    TResult Function(CanteenBasicDetailsModel? canteenBasicDetailsModel)?
        getCanteenDetails,
    TResult Function()? getCanteenCartItems,
    TResult Function(bool? isIncreased, ItemModel? menuItemModel,
            CanteenBasicDetailsModel? canteenBasicDetailsModel)?
        addToCart,
    TResult Function(bool? isVeg, bool? isNonveg)? changeVegNonveg,
    TResult Function(
            CartModel? cartModel,
            bool? isDelivery,
            DeliverableZonesModel? deliverableZonesModel,
            String? deliveryAddress,
            CoolUser? coolUser,
            String? paymentId,
            bool? isTakeAway,
            String? comments)?
        placeOrder,
    TResult Function(bool? isLoading)? placeOrderLoading,
    TResult Function(bool? isShowingbackToTop)? showBackToTop,
    TResult Function(int deliveryAddressIndex)? updateDeliveryAdressIndex,
    required TResult orElse(),
  }) {
    if (getCanteensNearby != null) {
      return getCanteensNearby(userCollege);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCollegeCanteens value) getCollegeCanteens,
    required TResult Function(_GetCanteensNearby value) getCanteensNearby,
    required TResult Function(_GetCanteenDetails value) getCanteenDetails,
    required TResult Function(_GetCanteenCartItems value) getCanteenCartItems,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_ChangeVegNonveg value) changeVegNonveg,
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_PlaceOrderLoading value) placeOrderLoading,
    required TResult Function(_ShowBackToTop value) showBackToTop,
    required TResult Function(_UpdateDeliveryAdressIndex value)
        updateDeliveryAdressIndex,
  }) {
    return getCanteensNearby(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCollegeCanteens value)? getCollegeCanteens,
    TResult Function(_GetCanteensNearby value)? getCanteensNearby,
    TResult Function(_GetCanteenDetails value)? getCanteenDetails,
    TResult Function(_GetCanteenCartItems value)? getCanteenCartItems,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_ChangeVegNonveg value)? changeVegNonveg,
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_PlaceOrderLoading value)? placeOrderLoading,
    TResult Function(_ShowBackToTop value)? showBackToTop,
    TResult Function(_UpdateDeliveryAdressIndex value)?
        updateDeliveryAdressIndex,
    required TResult orElse(),
  }) {
    if (getCanteensNearby != null) {
      return getCanteensNearby(this);
    }
    return orElse();
  }
}

abstract class _GetCanteensNearby implements CanteenDetailsEvent {
  const factory _GetCanteensNearby({String? userCollege}) =
      _$_GetCanteensNearby;

  String? get userCollege => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetCanteensNearbyCopyWith<_GetCanteensNearby> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetCanteenDetailsCopyWith<$Res> {
  factory _$GetCanteenDetailsCopyWith(
          _GetCanteenDetails value, $Res Function(_GetCanteenDetails) then) =
      __$GetCanteenDetailsCopyWithImpl<$Res>;
  $Res call({CanteenBasicDetailsModel? canteenBasicDetailsModel});
}

/// @nodoc
class __$GetCanteenDetailsCopyWithImpl<$Res>
    extends _$CanteenDetailsEventCopyWithImpl<$Res>
    implements _$GetCanteenDetailsCopyWith<$Res> {
  __$GetCanteenDetailsCopyWithImpl(
      _GetCanteenDetails _value, $Res Function(_GetCanteenDetails) _then)
      : super(_value, (v) => _then(v as _GetCanteenDetails));

  @override
  _GetCanteenDetails get _value => super._value as _GetCanteenDetails;

  @override
  $Res call({
    Object? canteenBasicDetailsModel = freezed,
  }) {
    return _then(_GetCanteenDetails(
      canteenBasicDetailsModel: canteenBasicDetailsModel == freezed
          ? _value.canteenBasicDetailsModel
          : canteenBasicDetailsModel // ignore: cast_nullable_to_non_nullable
              as CanteenBasicDetailsModel?,
    ));
  }
}

/// @nodoc

class _$_GetCanteenDetails implements _GetCanteenDetails {
  const _$_GetCanteenDetails({required this.canteenBasicDetailsModel});

  @override
  final CanteenBasicDetailsModel? canteenBasicDetailsModel;

  @override
  String toString() {
    return 'CanteenDetailsEvent.getCanteenDetails(canteenBasicDetailsModel: $canteenBasicDetailsModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetCanteenDetails &&
            (identical(
                    other.canteenBasicDetailsModel, canteenBasicDetailsModel) ||
                const DeepCollectionEquality().equals(
                    other.canteenBasicDetailsModel, canteenBasicDetailsModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(canteenBasicDetailsModel);

  @JsonKey(ignore: true)
  @override
  _$GetCanteenDetailsCopyWith<_GetCanteenDetails> get copyWith =>
      __$GetCanteenDetailsCopyWithImpl<_GetCanteenDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userCollege) getCollegeCanteens,
    required TResult Function(String? userCollege) getCanteensNearby,
    required TResult Function(
            CanteenBasicDetailsModel? canteenBasicDetailsModel)
        getCanteenDetails,
    required TResult Function() getCanteenCartItems,
    required TResult Function(bool? isIncreased, ItemModel? menuItemModel,
            CanteenBasicDetailsModel? canteenBasicDetailsModel)
        addToCart,
    required TResult Function(bool? isVeg, bool? isNonveg) changeVegNonveg,
    required TResult Function(
            CartModel? cartModel,
            bool? isDelivery,
            DeliverableZonesModel? deliverableZonesModel,
            String? deliveryAddress,
            CoolUser? coolUser,
            String? paymentId,
            bool? isTakeAway,
            String? comments)
        placeOrder,
    required TResult Function(bool? isLoading) placeOrderLoading,
    required TResult Function(bool? isShowingbackToTop) showBackToTop,
    required TResult Function(int deliveryAddressIndex)
        updateDeliveryAdressIndex,
  }) {
    return getCanteenDetails(canteenBasicDetailsModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userCollege)? getCollegeCanteens,
    TResult Function(String? userCollege)? getCanteensNearby,
    TResult Function(CanteenBasicDetailsModel? canteenBasicDetailsModel)?
        getCanteenDetails,
    TResult Function()? getCanteenCartItems,
    TResult Function(bool? isIncreased, ItemModel? menuItemModel,
            CanteenBasicDetailsModel? canteenBasicDetailsModel)?
        addToCart,
    TResult Function(bool? isVeg, bool? isNonveg)? changeVegNonveg,
    TResult Function(
            CartModel? cartModel,
            bool? isDelivery,
            DeliverableZonesModel? deliverableZonesModel,
            String? deliveryAddress,
            CoolUser? coolUser,
            String? paymentId,
            bool? isTakeAway,
            String? comments)?
        placeOrder,
    TResult Function(bool? isLoading)? placeOrderLoading,
    TResult Function(bool? isShowingbackToTop)? showBackToTop,
    TResult Function(int deliveryAddressIndex)? updateDeliveryAdressIndex,
    required TResult orElse(),
  }) {
    if (getCanteenDetails != null) {
      return getCanteenDetails(canteenBasicDetailsModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCollegeCanteens value) getCollegeCanteens,
    required TResult Function(_GetCanteensNearby value) getCanteensNearby,
    required TResult Function(_GetCanteenDetails value) getCanteenDetails,
    required TResult Function(_GetCanteenCartItems value) getCanteenCartItems,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_ChangeVegNonveg value) changeVegNonveg,
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_PlaceOrderLoading value) placeOrderLoading,
    required TResult Function(_ShowBackToTop value) showBackToTop,
    required TResult Function(_UpdateDeliveryAdressIndex value)
        updateDeliveryAdressIndex,
  }) {
    return getCanteenDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCollegeCanteens value)? getCollegeCanteens,
    TResult Function(_GetCanteensNearby value)? getCanteensNearby,
    TResult Function(_GetCanteenDetails value)? getCanteenDetails,
    TResult Function(_GetCanteenCartItems value)? getCanteenCartItems,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_ChangeVegNonveg value)? changeVegNonveg,
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_PlaceOrderLoading value)? placeOrderLoading,
    TResult Function(_ShowBackToTop value)? showBackToTop,
    TResult Function(_UpdateDeliveryAdressIndex value)?
        updateDeliveryAdressIndex,
    required TResult orElse(),
  }) {
    if (getCanteenDetails != null) {
      return getCanteenDetails(this);
    }
    return orElse();
  }
}

abstract class _GetCanteenDetails implements CanteenDetailsEvent {
  const factory _GetCanteenDetails(
          {required CanteenBasicDetailsModel? canteenBasicDetailsModel}) =
      _$_GetCanteenDetails;

  CanteenBasicDetailsModel? get canteenBasicDetailsModel =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetCanteenDetailsCopyWith<_GetCanteenDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetCanteenCartItemsCopyWith<$Res> {
  factory _$GetCanteenCartItemsCopyWith(_GetCanteenCartItems value,
          $Res Function(_GetCanteenCartItems) then) =
      __$GetCanteenCartItemsCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetCanteenCartItemsCopyWithImpl<$Res>
    extends _$CanteenDetailsEventCopyWithImpl<$Res>
    implements _$GetCanteenCartItemsCopyWith<$Res> {
  __$GetCanteenCartItemsCopyWithImpl(
      _GetCanteenCartItems _value, $Res Function(_GetCanteenCartItems) _then)
      : super(_value, (v) => _then(v as _GetCanteenCartItems));

  @override
  _GetCanteenCartItems get _value => super._value as _GetCanteenCartItems;
}

/// @nodoc

class _$_GetCanteenCartItems implements _GetCanteenCartItems {
  const _$_GetCanteenCartItems();

  @override
  String toString() {
    return 'CanteenDetailsEvent.getCanteenCartItems()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetCanteenCartItems);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userCollege) getCollegeCanteens,
    required TResult Function(String? userCollege) getCanteensNearby,
    required TResult Function(
            CanteenBasicDetailsModel? canteenBasicDetailsModel)
        getCanteenDetails,
    required TResult Function() getCanteenCartItems,
    required TResult Function(bool? isIncreased, ItemModel? menuItemModel,
            CanteenBasicDetailsModel? canteenBasicDetailsModel)
        addToCart,
    required TResult Function(bool? isVeg, bool? isNonveg) changeVegNonveg,
    required TResult Function(
            CartModel? cartModel,
            bool? isDelivery,
            DeliverableZonesModel? deliverableZonesModel,
            String? deliveryAddress,
            CoolUser? coolUser,
            String? paymentId,
            bool? isTakeAway,
            String? comments)
        placeOrder,
    required TResult Function(bool? isLoading) placeOrderLoading,
    required TResult Function(bool? isShowingbackToTop) showBackToTop,
    required TResult Function(int deliveryAddressIndex)
        updateDeliveryAdressIndex,
  }) {
    return getCanteenCartItems();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userCollege)? getCollegeCanteens,
    TResult Function(String? userCollege)? getCanteensNearby,
    TResult Function(CanteenBasicDetailsModel? canteenBasicDetailsModel)?
        getCanteenDetails,
    TResult Function()? getCanteenCartItems,
    TResult Function(bool? isIncreased, ItemModel? menuItemModel,
            CanteenBasicDetailsModel? canteenBasicDetailsModel)?
        addToCart,
    TResult Function(bool? isVeg, bool? isNonveg)? changeVegNonveg,
    TResult Function(
            CartModel? cartModel,
            bool? isDelivery,
            DeliverableZonesModel? deliverableZonesModel,
            String? deliveryAddress,
            CoolUser? coolUser,
            String? paymentId,
            bool? isTakeAway,
            String? comments)?
        placeOrder,
    TResult Function(bool? isLoading)? placeOrderLoading,
    TResult Function(bool? isShowingbackToTop)? showBackToTop,
    TResult Function(int deliveryAddressIndex)? updateDeliveryAdressIndex,
    required TResult orElse(),
  }) {
    if (getCanteenCartItems != null) {
      return getCanteenCartItems();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCollegeCanteens value) getCollegeCanteens,
    required TResult Function(_GetCanteensNearby value) getCanteensNearby,
    required TResult Function(_GetCanteenDetails value) getCanteenDetails,
    required TResult Function(_GetCanteenCartItems value) getCanteenCartItems,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_ChangeVegNonveg value) changeVegNonveg,
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_PlaceOrderLoading value) placeOrderLoading,
    required TResult Function(_ShowBackToTop value) showBackToTop,
    required TResult Function(_UpdateDeliveryAdressIndex value)
        updateDeliveryAdressIndex,
  }) {
    return getCanteenCartItems(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCollegeCanteens value)? getCollegeCanteens,
    TResult Function(_GetCanteensNearby value)? getCanteensNearby,
    TResult Function(_GetCanteenDetails value)? getCanteenDetails,
    TResult Function(_GetCanteenCartItems value)? getCanteenCartItems,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_ChangeVegNonveg value)? changeVegNonveg,
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_PlaceOrderLoading value)? placeOrderLoading,
    TResult Function(_ShowBackToTop value)? showBackToTop,
    TResult Function(_UpdateDeliveryAdressIndex value)?
        updateDeliveryAdressIndex,
    required TResult orElse(),
  }) {
    if (getCanteenCartItems != null) {
      return getCanteenCartItems(this);
    }
    return orElse();
  }
}

abstract class _GetCanteenCartItems implements CanteenDetailsEvent {
  const factory _GetCanteenCartItems() = _$_GetCanteenCartItems;
}

/// @nodoc
abstract class _$AddToCartCopyWith<$Res> {
  factory _$AddToCartCopyWith(
          _AddToCart value, $Res Function(_AddToCart) then) =
      __$AddToCartCopyWithImpl<$Res>;
  $Res call(
      {bool? isIncreased,
      ItemModel? menuItemModel,
      CanteenBasicDetailsModel? canteenBasicDetailsModel});
}

/// @nodoc
class __$AddToCartCopyWithImpl<$Res>
    extends _$CanteenDetailsEventCopyWithImpl<$Res>
    implements _$AddToCartCopyWith<$Res> {
  __$AddToCartCopyWithImpl(_AddToCart _value, $Res Function(_AddToCart) _then)
      : super(_value, (v) => _then(v as _AddToCart));

  @override
  _AddToCart get _value => super._value as _AddToCart;

  @override
  $Res call({
    Object? isIncreased = freezed,
    Object? menuItemModel = freezed,
    Object? canteenBasicDetailsModel = freezed,
  }) {
    return _then(_AddToCart(
      isIncreased: isIncreased == freezed
          ? _value.isIncreased
          : isIncreased // ignore: cast_nullable_to_non_nullable
              as bool?,
      menuItemModel: menuItemModel == freezed
          ? _value.menuItemModel
          : menuItemModel // ignore: cast_nullable_to_non_nullable
              as ItemModel?,
      canteenBasicDetailsModel: canteenBasicDetailsModel == freezed
          ? _value.canteenBasicDetailsModel
          : canteenBasicDetailsModel // ignore: cast_nullable_to_non_nullable
              as CanteenBasicDetailsModel?,
    ));
  }
}

/// @nodoc

class _$_AddToCart implements _AddToCart {
  const _$_AddToCart(
      {required this.isIncreased,
      required this.menuItemModel,
      required this.canteenBasicDetailsModel});

  @override
  final bool? isIncreased;
  @override
  final ItemModel? menuItemModel;
  @override
  final CanteenBasicDetailsModel? canteenBasicDetailsModel;

  @override
  String toString() {
    return 'CanteenDetailsEvent.addToCart(isIncreased: $isIncreased, menuItemModel: $menuItemModel, canteenBasicDetailsModel: $canteenBasicDetailsModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddToCart &&
            (identical(other.isIncreased, isIncreased) ||
                const DeepCollectionEquality()
                    .equals(other.isIncreased, isIncreased)) &&
            (identical(other.menuItemModel, menuItemModel) ||
                const DeepCollectionEquality()
                    .equals(other.menuItemModel, menuItemModel)) &&
            (identical(
                    other.canteenBasicDetailsModel, canteenBasicDetailsModel) ||
                const DeepCollectionEquality().equals(
                    other.canteenBasicDetailsModel, canteenBasicDetailsModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isIncreased) ^
      const DeepCollectionEquality().hash(menuItemModel) ^
      const DeepCollectionEquality().hash(canteenBasicDetailsModel);

  @JsonKey(ignore: true)
  @override
  _$AddToCartCopyWith<_AddToCart> get copyWith =>
      __$AddToCartCopyWithImpl<_AddToCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userCollege) getCollegeCanteens,
    required TResult Function(String? userCollege) getCanteensNearby,
    required TResult Function(
            CanteenBasicDetailsModel? canteenBasicDetailsModel)
        getCanteenDetails,
    required TResult Function() getCanteenCartItems,
    required TResult Function(bool? isIncreased, ItemModel? menuItemModel,
            CanteenBasicDetailsModel? canteenBasicDetailsModel)
        addToCart,
    required TResult Function(bool? isVeg, bool? isNonveg) changeVegNonveg,
    required TResult Function(
            CartModel? cartModel,
            bool? isDelivery,
            DeliverableZonesModel? deliverableZonesModel,
            String? deliveryAddress,
            CoolUser? coolUser,
            String? paymentId,
            bool? isTakeAway,
            String? comments)
        placeOrder,
    required TResult Function(bool? isLoading) placeOrderLoading,
    required TResult Function(bool? isShowingbackToTop) showBackToTop,
    required TResult Function(int deliveryAddressIndex)
        updateDeliveryAdressIndex,
  }) {
    return addToCart(isIncreased, menuItemModel, canteenBasicDetailsModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userCollege)? getCollegeCanteens,
    TResult Function(String? userCollege)? getCanteensNearby,
    TResult Function(CanteenBasicDetailsModel? canteenBasicDetailsModel)?
        getCanteenDetails,
    TResult Function()? getCanteenCartItems,
    TResult Function(bool? isIncreased, ItemModel? menuItemModel,
            CanteenBasicDetailsModel? canteenBasicDetailsModel)?
        addToCart,
    TResult Function(bool? isVeg, bool? isNonveg)? changeVegNonveg,
    TResult Function(
            CartModel? cartModel,
            bool? isDelivery,
            DeliverableZonesModel? deliverableZonesModel,
            String? deliveryAddress,
            CoolUser? coolUser,
            String? paymentId,
            bool? isTakeAway,
            String? comments)?
        placeOrder,
    TResult Function(bool? isLoading)? placeOrderLoading,
    TResult Function(bool? isShowingbackToTop)? showBackToTop,
    TResult Function(int deliveryAddressIndex)? updateDeliveryAdressIndex,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(isIncreased, menuItemModel, canteenBasicDetailsModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCollegeCanteens value) getCollegeCanteens,
    required TResult Function(_GetCanteensNearby value) getCanteensNearby,
    required TResult Function(_GetCanteenDetails value) getCanteenDetails,
    required TResult Function(_GetCanteenCartItems value) getCanteenCartItems,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_ChangeVegNonveg value) changeVegNonveg,
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_PlaceOrderLoading value) placeOrderLoading,
    required TResult Function(_ShowBackToTop value) showBackToTop,
    required TResult Function(_UpdateDeliveryAdressIndex value)
        updateDeliveryAdressIndex,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCollegeCanteens value)? getCollegeCanteens,
    TResult Function(_GetCanteensNearby value)? getCanteensNearby,
    TResult Function(_GetCanteenDetails value)? getCanteenDetails,
    TResult Function(_GetCanteenCartItems value)? getCanteenCartItems,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_ChangeVegNonveg value)? changeVegNonveg,
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_PlaceOrderLoading value)? placeOrderLoading,
    TResult Function(_ShowBackToTop value)? showBackToTop,
    TResult Function(_UpdateDeliveryAdressIndex value)?
        updateDeliveryAdressIndex,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class _AddToCart implements CanteenDetailsEvent {
  const factory _AddToCart(
          {required bool? isIncreased,
          required ItemModel? menuItemModel,
          required CanteenBasicDetailsModel? canteenBasicDetailsModel}) =
      _$_AddToCart;

  bool? get isIncreased => throw _privateConstructorUsedError;
  ItemModel? get menuItemModel => throw _privateConstructorUsedError;
  CanteenBasicDetailsModel? get canteenBasicDetailsModel =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddToCartCopyWith<_AddToCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeVegNonvegCopyWith<$Res> {
  factory _$ChangeVegNonvegCopyWith(
          _ChangeVegNonveg value, $Res Function(_ChangeVegNonveg) then) =
      __$ChangeVegNonvegCopyWithImpl<$Res>;
  $Res call({bool? isVeg, bool? isNonveg});
}

/// @nodoc
class __$ChangeVegNonvegCopyWithImpl<$Res>
    extends _$CanteenDetailsEventCopyWithImpl<$Res>
    implements _$ChangeVegNonvegCopyWith<$Res> {
  __$ChangeVegNonvegCopyWithImpl(
      _ChangeVegNonveg _value, $Res Function(_ChangeVegNonveg) _then)
      : super(_value, (v) => _then(v as _ChangeVegNonveg));

  @override
  _ChangeVegNonveg get _value => super._value as _ChangeVegNonveg;

  @override
  $Res call({
    Object? isVeg = freezed,
    Object? isNonveg = freezed,
  }) {
    return _then(_ChangeVegNonveg(
      isVeg: isVeg == freezed
          ? _value.isVeg
          : isVeg // ignore: cast_nullable_to_non_nullable
              as bool?,
      isNonveg: isNonveg == freezed
          ? _value.isNonveg
          : isNonveg // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_ChangeVegNonveg implements _ChangeVegNonveg {
  const _$_ChangeVegNonveg({required this.isVeg, required this.isNonveg});

  @override
  final bool? isVeg;
  @override
  final bool? isNonveg;

  @override
  String toString() {
    return 'CanteenDetailsEvent.changeVegNonveg(isVeg: $isVeg, isNonveg: $isNonveg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeVegNonveg &&
            (identical(other.isVeg, isVeg) ||
                const DeepCollectionEquality().equals(other.isVeg, isVeg)) &&
            (identical(other.isNonveg, isNonveg) ||
                const DeepCollectionEquality()
                    .equals(other.isNonveg, isNonveg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isVeg) ^
      const DeepCollectionEquality().hash(isNonveg);

  @JsonKey(ignore: true)
  @override
  _$ChangeVegNonvegCopyWith<_ChangeVegNonveg> get copyWith =>
      __$ChangeVegNonvegCopyWithImpl<_ChangeVegNonveg>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userCollege) getCollegeCanteens,
    required TResult Function(String? userCollege) getCanteensNearby,
    required TResult Function(
            CanteenBasicDetailsModel? canteenBasicDetailsModel)
        getCanteenDetails,
    required TResult Function() getCanteenCartItems,
    required TResult Function(bool? isIncreased, ItemModel? menuItemModel,
            CanteenBasicDetailsModel? canteenBasicDetailsModel)
        addToCart,
    required TResult Function(bool? isVeg, bool? isNonveg) changeVegNonveg,
    required TResult Function(
            CartModel? cartModel,
            bool? isDelivery,
            DeliverableZonesModel? deliverableZonesModel,
            String? deliveryAddress,
            CoolUser? coolUser,
            String? paymentId,
            bool? isTakeAway,
            String? comments)
        placeOrder,
    required TResult Function(bool? isLoading) placeOrderLoading,
    required TResult Function(bool? isShowingbackToTop) showBackToTop,
    required TResult Function(int deliveryAddressIndex)
        updateDeliveryAdressIndex,
  }) {
    return changeVegNonveg(isVeg, isNonveg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userCollege)? getCollegeCanteens,
    TResult Function(String? userCollege)? getCanteensNearby,
    TResult Function(CanteenBasicDetailsModel? canteenBasicDetailsModel)?
        getCanteenDetails,
    TResult Function()? getCanteenCartItems,
    TResult Function(bool? isIncreased, ItemModel? menuItemModel,
            CanteenBasicDetailsModel? canteenBasicDetailsModel)?
        addToCart,
    TResult Function(bool? isVeg, bool? isNonveg)? changeVegNonveg,
    TResult Function(
            CartModel? cartModel,
            bool? isDelivery,
            DeliverableZonesModel? deliverableZonesModel,
            String? deliveryAddress,
            CoolUser? coolUser,
            String? paymentId,
            bool? isTakeAway,
            String? comments)?
        placeOrder,
    TResult Function(bool? isLoading)? placeOrderLoading,
    TResult Function(bool? isShowingbackToTop)? showBackToTop,
    TResult Function(int deliveryAddressIndex)? updateDeliveryAdressIndex,
    required TResult orElse(),
  }) {
    if (changeVegNonveg != null) {
      return changeVegNonveg(isVeg, isNonveg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCollegeCanteens value) getCollegeCanteens,
    required TResult Function(_GetCanteensNearby value) getCanteensNearby,
    required TResult Function(_GetCanteenDetails value) getCanteenDetails,
    required TResult Function(_GetCanteenCartItems value) getCanteenCartItems,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_ChangeVegNonveg value) changeVegNonveg,
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_PlaceOrderLoading value) placeOrderLoading,
    required TResult Function(_ShowBackToTop value) showBackToTop,
    required TResult Function(_UpdateDeliveryAdressIndex value)
        updateDeliveryAdressIndex,
  }) {
    return changeVegNonveg(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCollegeCanteens value)? getCollegeCanteens,
    TResult Function(_GetCanteensNearby value)? getCanteensNearby,
    TResult Function(_GetCanteenDetails value)? getCanteenDetails,
    TResult Function(_GetCanteenCartItems value)? getCanteenCartItems,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_ChangeVegNonveg value)? changeVegNonveg,
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_PlaceOrderLoading value)? placeOrderLoading,
    TResult Function(_ShowBackToTop value)? showBackToTop,
    TResult Function(_UpdateDeliveryAdressIndex value)?
        updateDeliveryAdressIndex,
    required TResult orElse(),
  }) {
    if (changeVegNonveg != null) {
      return changeVegNonveg(this);
    }
    return orElse();
  }
}

abstract class _ChangeVegNonveg implements CanteenDetailsEvent {
  const factory _ChangeVegNonveg(
      {required bool? isVeg, required bool? isNonveg}) = _$_ChangeVegNonveg;

  bool? get isVeg => throw _privateConstructorUsedError;
  bool? get isNonveg => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeVegNonvegCopyWith<_ChangeVegNonveg> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PlaceOrderCopyWith<$Res> {
  factory _$PlaceOrderCopyWith(
          _PlaceOrder value, $Res Function(_PlaceOrder) then) =
      __$PlaceOrderCopyWithImpl<$Res>;
  $Res call(
      {CartModel? cartModel,
      bool? isDelivery,
      DeliverableZonesModel? deliverableZonesModel,
      String? deliveryAddress,
      CoolUser? coolUser,
      String? paymentId,
      bool? isTakeAway,
      String? comments});
}

/// @nodoc
class __$PlaceOrderCopyWithImpl<$Res>
    extends _$CanteenDetailsEventCopyWithImpl<$Res>
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
    Object? deliverableZonesModel = freezed,
    Object? deliveryAddress = freezed,
    Object? coolUser = freezed,
    Object? paymentId = freezed,
    Object? isTakeAway = freezed,
    Object? comments = freezed,
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
      deliverableZonesModel: deliverableZonesModel == freezed
          ? _value.deliverableZonesModel
          : deliverableZonesModel // ignore: cast_nullable_to_non_nullable
              as DeliverableZonesModel?,
      deliveryAddress: deliveryAddress == freezed
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      coolUser: coolUser == freezed
          ? _value.coolUser
          : coolUser // ignore: cast_nullable_to_non_nullable
              as CoolUser?,
      paymentId: paymentId == freezed
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      isTakeAway: isTakeAway == freezed
          ? _value.isTakeAway
          : isTakeAway // ignore: cast_nullable_to_non_nullable
              as bool?,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PlaceOrder implements _PlaceOrder {
  const _$_PlaceOrder(
      {required this.cartModel,
      required this.isDelivery,
      required this.deliverableZonesModel,
      required this.deliveryAddress,
      required this.coolUser,
      required this.paymentId,
      required this.isTakeAway,
      required this.comments});

  @override
  final CartModel? cartModel;
  @override
  final bool? isDelivery;
  @override
  final DeliverableZonesModel? deliverableZonesModel;
  @override
  final String? deliveryAddress;
  @override
  final CoolUser? coolUser;
  @override
  final String? paymentId;
  @override
  final bool? isTakeAway;
  @override
  final String? comments;

  @override
  String toString() {
    return 'CanteenDetailsEvent.placeOrder(cartModel: $cartModel, isDelivery: $isDelivery, deliverableZonesModel: $deliverableZonesModel, deliveryAddress: $deliveryAddress, coolUser: $coolUser, paymentId: $paymentId, isTakeAway: $isTakeAway, comments: $comments)';
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
            (identical(other.deliverableZonesModel, deliverableZonesModel) ||
                const DeepCollectionEquality().equals(
                    other.deliverableZonesModel, deliverableZonesModel)) &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryAddress, deliveryAddress)) &&
            (identical(other.coolUser, coolUser) ||
                const DeepCollectionEquality()
                    .equals(other.coolUser, coolUser)) &&
            (identical(other.paymentId, paymentId) ||
                const DeepCollectionEquality()
                    .equals(other.paymentId, paymentId)) &&
            (identical(other.isTakeAway, isTakeAway) ||
                const DeepCollectionEquality()
                    .equals(other.isTakeAway, isTakeAway)) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cartModel) ^
      const DeepCollectionEquality().hash(isDelivery) ^
      const DeepCollectionEquality().hash(deliverableZonesModel) ^
      const DeepCollectionEquality().hash(deliveryAddress) ^
      const DeepCollectionEquality().hash(coolUser) ^
      const DeepCollectionEquality().hash(paymentId) ^
      const DeepCollectionEquality().hash(isTakeAway) ^
      const DeepCollectionEquality().hash(comments);

  @JsonKey(ignore: true)
  @override
  _$PlaceOrderCopyWith<_PlaceOrder> get copyWith =>
      __$PlaceOrderCopyWithImpl<_PlaceOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userCollege) getCollegeCanteens,
    required TResult Function(String? userCollege) getCanteensNearby,
    required TResult Function(
            CanteenBasicDetailsModel? canteenBasicDetailsModel)
        getCanteenDetails,
    required TResult Function() getCanteenCartItems,
    required TResult Function(bool? isIncreased, ItemModel? menuItemModel,
            CanteenBasicDetailsModel? canteenBasicDetailsModel)
        addToCart,
    required TResult Function(bool? isVeg, bool? isNonveg) changeVegNonveg,
    required TResult Function(
            CartModel? cartModel,
            bool? isDelivery,
            DeliverableZonesModel? deliverableZonesModel,
            String? deliveryAddress,
            CoolUser? coolUser,
            String? paymentId,
            bool? isTakeAway,
            String? comments)
        placeOrder,
    required TResult Function(bool? isLoading) placeOrderLoading,
    required TResult Function(bool? isShowingbackToTop) showBackToTop,
    required TResult Function(int deliveryAddressIndex)
        updateDeliveryAdressIndex,
  }) {
    return placeOrder(cartModel, isDelivery, deliverableZonesModel,
        deliveryAddress, coolUser, paymentId, isTakeAway, comments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userCollege)? getCollegeCanteens,
    TResult Function(String? userCollege)? getCanteensNearby,
    TResult Function(CanteenBasicDetailsModel? canteenBasicDetailsModel)?
        getCanteenDetails,
    TResult Function()? getCanteenCartItems,
    TResult Function(bool? isIncreased, ItemModel? menuItemModel,
            CanteenBasicDetailsModel? canteenBasicDetailsModel)?
        addToCart,
    TResult Function(bool? isVeg, bool? isNonveg)? changeVegNonveg,
    TResult Function(
            CartModel? cartModel,
            bool? isDelivery,
            DeliverableZonesModel? deliverableZonesModel,
            String? deliveryAddress,
            CoolUser? coolUser,
            String? paymentId,
            bool? isTakeAway,
            String? comments)?
        placeOrder,
    TResult Function(bool? isLoading)? placeOrderLoading,
    TResult Function(bool? isShowingbackToTop)? showBackToTop,
    TResult Function(int deliveryAddressIndex)? updateDeliveryAdressIndex,
    required TResult orElse(),
  }) {
    if (placeOrder != null) {
      return placeOrder(cartModel, isDelivery, deliverableZonesModel,
          deliveryAddress, coolUser, paymentId, isTakeAway, comments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCollegeCanteens value) getCollegeCanteens,
    required TResult Function(_GetCanteensNearby value) getCanteensNearby,
    required TResult Function(_GetCanteenDetails value) getCanteenDetails,
    required TResult Function(_GetCanteenCartItems value) getCanteenCartItems,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_ChangeVegNonveg value) changeVegNonveg,
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_PlaceOrderLoading value) placeOrderLoading,
    required TResult Function(_ShowBackToTop value) showBackToTop,
    required TResult Function(_UpdateDeliveryAdressIndex value)
        updateDeliveryAdressIndex,
  }) {
    return placeOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCollegeCanteens value)? getCollegeCanteens,
    TResult Function(_GetCanteensNearby value)? getCanteensNearby,
    TResult Function(_GetCanteenDetails value)? getCanteenDetails,
    TResult Function(_GetCanteenCartItems value)? getCanteenCartItems,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_ChangeVegNonveg value)? changeVegNonveg,
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_PlaceOrderLoading value)? placeOrderLoading,
    TResult Function(_ShowBackToTop value)? showBackToTop,
    TResult Function(_UpdateDeliveryAdressIndex value)?
        updateDeliveryAdressIndex,
    required TResult orElse(),
  }) {
    if (placeOrder != null) {
      return placeOrder(this);
    }
    return orElse();
  }
}

abstract class _PlaceOrder implements CanteenDetailsEvent {
  const factory _PlaceOrder(
      {required CartModel? cartModel,
      required bool? isDelivery,
      required DeliverableZonesModel? deliverableZonesModel,
      required String? deliveryAddress,
      required CoolUser? coolUser,
      required String? paymentId,
      required bool? isTakeAway,
      required String? comments}) = _$_PlaceOrder;

  CartModel? get cartModel => throw _privateConstructorUsedError;
  bool? get isDelivery => throw _privateConstructorUsedError;
  DeliverableZonesModel? get deliverableZonesModel =>
      throw _privateConstructorUsedError;
  String? get deliveryAddress => throw _privateConstructorUsedError;
  CoolUser? get coolUser => throw _privateConstructorUsedError;
  String? get paymentId => throw _privateConstructorUsedError;
  bool? get isTakeAway => throw _privateConstructorUsedError;
  String? get comments => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PlaceOrderCopyWith<_PlaceOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PlaceOrderLoadingCopyWith<$Res> {
  factory _$PlaceOrderLoadingCopyWith(
          _PlaceOrderLoading value, $Res Function(_PlaceOrderLoading) then) =
      __$PlaceOrderLoadingCopyWithImpl<$Res>;
  $Res call({bool? isLoading});
}

/// @nodoc
class __$PlaceOrderLoadingCopyWithImpl<$Res>
    extends _$CanteenDetailsEventCopyWithImpl<$Res>
    implements _$PlaceOrderLoadingCopyWith<$Res> {
  __$PlaceOrderLoadingCopyWithImpl(
      _PlaceOrderLoading _value, $Res Function(_PlaceOrderLoading) _then)
      : super(_value, (v) => _then(v as _PlaceOrderLoading));

  @override
  _PlaceOrderLoading get _value => super._value as _PlaceOrderLoading;

  @override
  $Res call({
    Object? isLoading = freezed,
  }) {
    return _then(_PlaceOrderLoading(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_PlaceOrderLoading implements _PlaceOrderLoading {
  const _$_PlaceOrderLoading({required this.isLoading});

  @override
  final bool? isLoading;

  @override
  String toString() {
    return 'CanteenDetailsEvent.placeOrderLoading(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlaceOrderLoading &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$PlaceOrderLoadingCopyWith<_PlaceOrderLoading> get copyWith =>
      __$PlaceOrderLoadingCopyWithImpl<_PlaceOrderLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userCollege) getCollegeCanteens,
    required TResult Function(String? userCollege) getCanteensNearby,
    required TResult Function(
            CanteenBasicDetailsModel? canteenBasicDetailsModel)
        getCanteenDetails,
    required TResult Function() getCanteenCartItems,
    required TResult Function(bool? isIncreased, ItemModel? menuItemModel,
            CanteenBasicDetailsModel? canteenBasicDetailsModel)
        addToCart,
    required TResult Function(bool? isVeg, bool? isNonveg) changeVegNonveg,
    required TResult Function(
            CartModel? cartModel,
            bool? isDelivery,
            DeliverableZonesModel? deliverableZonesModel,
            String? deliveryAddress,
            CoolUser? coolUser,
            String? paymentId,
            bool? isTakeAway,
            String? comments)
        placeOrder,
    required TResult Function(bool? isLoading) placeOrderLoading,
    required TResult Function(bool? isShowingbackToTop) showBackToTop,
    required TResult Function(int deliveryAddressIndex)
        updateDeliveryAdressIndex,
  }) {
    return placeOrderLoading(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userCollege)? getCollegeCanteens,
    TResult Function(String? userCollege)? getCanteensNearby,
    TResult Function(CanteenBasicDetailsModel? canteenBasicDetailsModel)?
        getCanteenDetails,
    TResult Function()? getCanteenCartItems,
    TResult Function(bool? isIncreased, ItemModel? menuItemModel,
            CanteenBasicDetailsModel? canteenBasicDetailsModel)?
        addToCart,
    TResult Function(bool? isVeg, bool? isNonveg)? changeVegNonveg,
    TResult Function(
            CartModel? cartModel,
            bool? isDelivery,
            DeliverableZonesModel? deliverableZonesModel,
            String? deliveryAddress,
            CoolUser? coolUser,
            String? paymentId,
            bool? isTakeAway,
            String? comments)?
        placeOrder,
    TResult Function(bool? isLoading)? placeOrderLoading,
    TResult Function(bool? isShowingbackToTop)? showBackToTop,
    TResult Function(int deliveryAddressIndex)? updateDeliveryAdressIndex,
    required TResult orElse(),
  }) {
    if (placeOrderLoading != null) {
      return placeOrderLoading(isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCollegeCanteens value) getCollegeCanteens,
    required TResult Function(_GetCanteensNearby value) getCanteensNearby,
    required TResult Function(_GetCanteenDetails value) getCanteenDetails,
    required TResult Function(_GetCanteenCartItems value) getCanteenCartItems,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_ChangeVegNonveg value) changeVegNonveg,
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_PlaceOrderLoading value) placeOrderLoading,
    required TResult Function(_ShowBackToTop value) showBackToTop,
    required TResult Function(_UpdateDeliveryAdressIndex value)
        updateDeliveryAdressIndex,
  }) {
    return placeOrderLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCollegeCanteens value)? getCollegeCanteens,
    TResult Function(_GetCanteensNearby value)? getCanteensNearby,
    TResult Function(_GetCanteenDetails value)? getCanteenDetails,
    TResult Function(_GetCanteenCartItems value)? getCanteenCartItems,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_ChangeVegNonveg value)? changeVegNonveg,
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_PlaceOrderLoading value)? placeOrderLoading,
    TResult Function(_ShowBackToTop value)? showBackToTop,
    TResult Function(_UpdateDeliveryAdressIndex value)?
        updateDeliveryAdressIndex,
    required TResult orElse(),
  }) {
    if (placeOrderLoading != null) {
      return placeOrderLoading(this);
    }
    return orElse();
  }
}

abstract class _PlaceOrderLoading implements CanteenDetailsEvent {
  const factory _PlaceOrderLoading({required bool? isLoading}) =
      _$_PlaceOrderLoading;

  bool? get isLoading => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PlaceOrderLoadingCopyWith<_PlaceOrderLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ShowBackToTopCopyWith<$Res> {
  factory _$ShowBackToTopCopyWith(
          _ShowBackToTop value, $Res Function(_ShowBackToTop) then) =
      __$ShowBackToTopCopyWithImpl<$Res>;
  $Res call({bool? isShowingbackToTop});
}

/// @nodoc
class __$ShowBackToTopCopyWithImpl<$Res>
    extends _$CanteenDetailsEventCopyWithImpl<$Res>
    implements _$ShowBackToTopCopyWith<$Res> {
  __$ShowBackToTopCopyWithImpl(
      _ShowBackToTop _value, $Res Function(_ShowBackToTop) _then)
      : super(_value, (v) => _then(v as _ShowBackToTop));

  @override
  _ShowBackToTop get _value => super._value as _ShowBackToTop;

  @override
  $Res call({
    Object? isShowingbackToTop = freezed,
  }) {
    return _then(_ShowBackToTop(
      isShowingbackToTop: isShowingbackToTop == freezed
          ? _value.isShowingbackToTop
          : isShowingbackToTop // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_ShowBackToTop implements _ShowBackToTop {
  const _$_ShowBackToTop({required this.isShowingbackToTop});

  @override
  final bool? isShowingbackToTop;

  @override
  String toString() {
    return 'CanteenDetailsEvent.showBackToTop(isShowingbackToTop: $isShowingbackToTop)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShowBackToTop &&
            (identical(other.isShowingbackToTop, isShowingbackToTop) ||
                const DeepCollectionEquality()
                    .equals(other.isShowingbackToTop, isShowingbackToTop)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isShowingbackToTop);

  @JsonKey(ignore: true)
  @override
  _$ShowBackToTopCopyWith<_ShowBackToTop> get copyWith =>
      __$ShowBackToTopCopyWithImpl<_ShowBackToTop>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userCollege) getCollegeCanteens,
    required TResult Function(String? userCollege) getCanteensNearby,
    required TResult Function(
            CanteenBasicDetailsModel? canteenBasicDetailsModel)
        getCanteenDetails,
    required TResult Function() getCanteenCartItems,
    required TResult Function(bool? isIncreased, ItemModel? menuItemModel,
            CanteenBasicDetailsModel? canteenBasicDetailsModel)
        addToCart,
    required TResult Function(bool? isVeg, bool? isNonveg) changeVegNonveg,
    required TResult Function(
            CartModel? cartModel,
            bool? isDelivery,
            DeliverableZonesModel? deliverableZonesModel,
            String? deliveryAddress,
            CoolUser? coolUser,
            String? paymentId,
            bool? isTakeAway,
            String? comments)
        placeOrder,
    required TResult Function(bool? isLoading) placeOrderLoading,
    required TResult Function(bool? isShowingbackToTop) showBackToTop,
    required TResult Function(int deliveryAddressIndex)
        updateDeliveryAdressIndex,
  }) {
    return showBackToTop(isShowingbackToTop);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userCollege)? getCollegeCanteens,
    TResult Function(String? userCollege)? getCanteensNearby,
    TResult Function(CanteenBasicDetailsModel? canteenBasicDetailsModel)?
        getCanteenDetails,
    TResult Function()? getCanteenCartItems,
    TResult Function(bool? isIncreased, ItemModel? menuItemModel,
            CanteenBasicDetailsModel? canteenBasicDetailsModel)?
        addToCart,
    TResult Function(bool? isVeg, bool? isNonveg)? changeVegNonveg,
    TResult Function(
            CartModel? cartModel,
            bool? isDelivery,
            DeliverableZonesModel? deliverableZonesModel,
            String? deliveryAddress,
            CoolUser? coolUser,
            String? paymentId,
            bool? isTakeAway,
            String? comments)?
        placeOrder,
    TResult Function(bool? isLoading)? placeOrderLoading,
    TResult Function(bool? isShowingbackToTop)? showBackToTop,
    TResult Function(int deliveryAddressIndex)? updateDeliveryAdressIndex,
    required TResult orElse(),
  }) {
    if (showBackToTop != null) {
      return showBackToTop(isShowingbackToTop);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCollegeCanteens value) getCollegeCanteens,
    required TResult Function(_GetCanteensNearby value) getCanteensNearby,
    required TResult Function(_GetCanteenDetails value) getCanteenDetails,
    required TResult Function(_GetCanteenCartItems value) getCanteenCartItems,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_ChangeVegNonveg value) changeVegNonveg,
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_PlaceOrderLoading value) placeOrderLoading,
    required TResult Function(_ShowBackToTop value) showBackToTop,
    required TResult Function(_UpdateDeliveryAdressIndex value)
        updateDeliveryAdressIndex,
  }) {
    return showBackToTop(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCollegeCanteens value)? getCollegeCanteens,
    TResult Function(_GetCanteensNearby value)? getCanteensNearby,
    TResult Function(_GetCanteenDetails value)? getCanteenDetails,
    TResult Function(_GetCanteenCartItems value)? getCanteenCartItems,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_ChangeVegNonveg value)? changeVegNonveg,
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_PlaceOrderLoading value)? placeOrderLoading,
    TResult Function(_ShowBackToTop value)? showBackToTop,
    TResult Function(_UpdateDeliveryAdressIndex value)?
        updateDeliveryAdressIndex,
    required TResult orElse(),
  }) {
    if (showBackToTop != null) {
      return showBackToTop(this);
    }
    return orElse();
  }
}

abstract class _ShowBackToTop implements CanteenDetailsEvent {
  const factory _ShowBackToTop({required bool? isShowingbackToTop}) =
      _$_ShowBackToTop;

  bool? get isShowingbackToTop => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ShowBackToTopCopyWith<_ShowBackToTop> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateDeliveryAdressIndexCopyWith<$Res> {
  factory _$UpdateDeliveryAdressIndexCopyWith(_UpdateDeliveryAdressIndex value,
          $Res Function(_UpdateDeliveryAdressIndex) then) =
      __$UpdateDeliveryAdressIndexCopyWithImpl<$Res>;
  $Res call({int deliveryAddressIndex});
}

/// @nodoc
class __$UpdateDeliveryAdressIndexCopyWithImpl<$Res>
    extends _$CanteenDetailsEventCopyWithImpl<$Res>
    implements _$UpdateDeliveryAdressIndexCopyWith<$Res> {
  __$UpdateDeliveryAdressIndexCopyWithImpl(_UpdateDeliveryAdressIndex _value,
      $Res Function(_UpdateDeliveryAdressIndex) _then)
      : super(_value, (v) => _then(v as _UpdateDeliveryAdressIndex));

  @override
  _UpdateDeliveryAdressIndex get _value =>
      super._value as _UpdateDeliveryAdressIndex;

  @override
  $Res call({
    Object? deliveryAddressIndex = freezed,
  }) {
    return _then(_UpdateDeliveryAdressIndex(
      deliveryAddressIndex: deliveryAddressIndex == freezed
          ? _value.deliveryAddressIndex
          : deliveryAddressIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_UpdateDeliveryAdressIndex implements _UpdateDeliveryAdressIndex {
  const _$_UpdateDeliveryAdressIndex({required this.deliveryAddressIndex});

  @override
  final int deliveryAddressIndex;

  @override
  String toString() {
    return 'CanteenDetailsEvent.updateDeliveryAdressIndex(deliveryAddressIndex: $deliveryAddressIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateDeliveryAdressIndex &&
            (identical(other.deliveryAddressIndex, deliveryAddressIndex) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryAddressIndex, deliveryAddressIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(deliveryAddressIndex);

  @JsonKey(ignore: true)
  @override
  _$UpdateDeliveryAdressIndexCopyWith<_UpdateDeliveryAdressIndex>
      get copyWith =>
          __$UpdateDeliveryAdressIndexCopyWithImpl<_UpdateDeliveryAdressIndex>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userCollege) getCollegeCanteens,
    required TResult Function(String? userCollege) getCanteensNearby,
    required TResult Function(
            CanteenBasicDetailsModel? canteenBasicDetailsModel)
        getCanteenDetails,
    required TResult Function() getCanteenCartItems,
    required TResult Function(bool? isIncreased, ItemModel? menuItemModel,
            CanteenBasicDetailsModel? canteenBasicDetailsModel)
        addToCart,
    required TResult Function(bool? isVeg, bool? isNonveg) changeVegNonveg,
    required TResult Function(
            CartModel? cartModel,
            bool? isDelivery,
            DeliverableZonesModel? deliverableZonesModel,
            String? deliveryAddress,
            CoolUser? coolUser,
            String? paymentId,
            bool? isTakeAway,
            String? comments)
        placeOrder,
    required TResult Function(bool? isLoading) placeOrderLoading,
    required TResult Function(bool? isShowingbackToTop) showBackToTop,
    required TResult Function(int deliveryAddressIndex)
        updateDeliveryAdressIndex,
  }) {
    return updateDeliveryAdressIndex(deliveryAddressIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userCollege)? getCollegeCanteens,
    TResult Function(String? userCollege)? getCanteensNearby,
    TResult Function(CanteenBasicDetailsModel? canteenBasicDetailsModel)?
        getCanteenDetails,
    TResult Function()? getCanteenCartItems,
    TResult Function(bool? isIncreased, ItemModel? menuItemModel,
            CanteenBasicDetailsModel? canteenBasicDetailsModel)?
        addToCart,
    TResult Function(bool? isVeg, bool? isNonveg)? changeVegNonveg,
    TResult Function(
            CartModel? cartModel,
            bool? isDelivery,
            DeliverableZonesModel? deliverableZonesModel,
            String? deliveryAddress,
            CoolUser? coolUser,
            String? paymentId,
            bool? isTakeAway,
            String? comments)?
        placeOrder,
    TResult Function(bool? isLoading)? placeOrderLoading,
    TResult Function(bool? isShowingbackToTop)? showBackToTop,
    TResult Function(int deliveryAddressIndex)? updateDeliveryAdressIndex,
    required TResult orElse(),
  }) {
    if (updateDeliveryAdressIndex != null) {
      return updateDeliveryAdressIndex(deliveryAddressIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCollegeCanteens value) getCollegeCanteens,
    required TResult Function(_GetCanteensNearby value) getCanteensNearby,
    required TResult Function(_GetCanteenDetails value) getCanteenDetails,
    required TResult Function(_GetCanteenCartItems value) getCanteenCartItems,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_ChangeVegNonveg value) changeVegNonveg,
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_PlaceOrderLoading value) placeOrderLoading,
    required TResult Function(_ShowBackToTop value) showBackToTop,
    required TResult Function(_UpdateDeliveryAdressIndex value)
        updateDeliveryAdressIndex,
  }) {
    return updateDeliveryAdressIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCollegeCanteens value)? getCollegeCanteens,
    TResult Function(_GetCanteensNearby value)? getCanteensNearby,
    TResult Function(_GetCanteenDetails value)? getCanteenDetails,
    TResult Function(_GetCanteenCartItems value)? getCanteenCartItems,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_ChangeVegNonveg value)? changeVegNonveg,
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_PlaceOrderLoading value)? placeOrderLoading,
    TResult Function(_ShowBackToTop value)? showBackToTop,
    TResult Function(_UpdateDeliveryAdressIndex value)?
        updateDeliveryAdressIndex,
    required TResult orElse(),
  }) {
    if (updateDeliveryAdressIndex != null) {
      return updateDeliveryAdressIndex(this);
    }
    return orElse();
  }
}

abstract class _UpdateDeliveryAdressIndex implements CanteenDetailsEvent {
  const factory _UpdateDeliveryAdressIndex(
      {required int deliveryAddressIndex}) = _$_UpdateDeliveryAdressIndex;

  int get deliveryAddressIndex => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateDeliveryAdressIndexCopyWith<_UpdateDeliveryAdressIndex>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CanteenDetailsStateTearOff {
  const _$CanteenDetailsStateTearOff();

  _CanteenDetailsState call(
      {bool? isShowingVeg,
      bool? isShowingNonVeg,
      bool? isCanteensListLoading,
      bool? isCanteensNearbyListLoading,
      bool? isCanteenDetailsLoading,
      bool? isCartLoading,
      bool? isPlacingOrder,
      bool? isModifyingCartItems,
      Option<FirebaseFailure>? canteenslistFailureOrSuccess,
      Option<FirebaseFailure>? canteenDetailsFailureOrSuccess,
      Option<FirebaseFailure>? canteenCartFailureOrSuccess,
      Option<Either<FirebaseFailure, String>>? placeOrderFailureOrSuccess,
      List<CanteenBasicDetailsModel>? canteensList,
      List<CanteenBasicDetailsModel>? canteensNearbyList,
      Map<String, CartModel>? cartItemsMap,
      List<MenuCategoryModel>? menuCategoriesList,
      Map<String, List<ItemModel>>? menuCategoryWiseItemsMap,
      List<ItemModel>? canteenItemsList,
      bool? isShowingBackToTop,
      required int deliveryAddressIndex}) {
    return _CanteenDetailsState(
      isShowingVeg: isShowingVeg,
      isShowingNonVeg: isShowingNonVeg,
      isCanteensListLoading: isCanteensListLoading,
      isCanteensNearbyListLoading: isCanteensNearbyListLoading,
      isCanteenDetailsLoading: isCanteenDetailsLoading,
      isCartLoading: isCartLoading,
      isPlacingOrder: isPlacingOrder,
      isModifyingCartItems: isModifyingCartItems,
      canteenslistFailureOrSuccess: canteenslistFailureOrSuccess,
      canteenDetailsFailureOrSuccess: canteenDetailsFailureOrSuccess,
      canteenCartFailureOrSuccess: canteenCartFailureOrSuccess,
      placeOrderFailureOrSuccess: placeOrderFailureOrSuccess,
      canteensList: canteensList,
      canteensNearbyList: canteensNearbyList,
      cartItemsMap: cartItemsMap,
      menuCategoriesList: menuCategoriesList,
      menuCategoryWiseItemsMap: menuCategoryWiseItemsMap,
      canteenItemsList: canteenItemsList,
      isShowingBackToTop: isShowingBackToTop,
      deliveryAddressIndex: deliveryAddressIndex,
    );
  }
}

/// @nodoc
const $CanteenDetailsState = _$CanteenDetailsStateTearOff();

/// @nodoc
mixin _$CanteenDetailsState {
  bool? get isShowingVeg => throw _privateConstructorUsedError;
  bool? get isShowingNonVeg => throw _privateConstructorUsedError;
  bool? get isCanteensListLoading => throw _privateConstructorUsedError;
  bool? get isCanteensNearbyListLoading => throw _privateConstructorUsedError;
  bool? get isCanteenDetailsLoading => throw _privateConstructorUsedError;
  bool? get isCartLoading => throw _privateConstructorUsedError;
  bool? get isPlacingOrder => throw _privateConstructorUsedError;
  bool? get isModifyingCartItems => throw _privateConstructorUsedError;
  Option<FirebaseFailure>? get canteenslistFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Option<FirebaseFailure>? get canteenDetailsFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Option<FirebaseFailure>? get canteenCartFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Option<Either<FirebaseFailure, String>>? get placeOrderFailureOrSuccess =>
      throw _privateConstructorUsedError;
  List<CanteenBasicDetailsModel>? get canteensList =>
      throw _privateConstructorUsedError;
  List<CanteenBasicDetailsModel>? get canteensNearbyList =>
      throw _privateConstructorUsedError;
  Map<String, CartModel>? get cartItemsMap =>
      throw _privateConstructorUsedError;
  List<MenuCategoryModel>? get menuCategoriesList =>
      throw _privateConstructorUsedError;
  Map<String, List<ItemModel>>? get menuCategoryWiseItemsMap =>
      throw _privateConstructorUsedError; //will store all the fetched canteen details in this map
  List<ItemModel>? get canteenItemsList => throw _privateConstructorUsedError;
  bool? get isShowingBackToTop => throw _privateConstructorUsedError;
  int get deliveryAddressIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CanteenDetailsStateCopyWith<CanteenDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CanteenDetailsStateCopyWith<$Res> {
  factory $CanteenDetailsStateCopyWith(
          CanteenDetailsState value, $Res Function(CanteenDetailsState) then) =
      _$CanteenDetailsStateCopyWithImpl<$Res>;
  $Res call(
      {bool? isShowingVeg,
      bool? isShowingNonVeg,
      bool? isCanteensListLoading,
      bool? isCanteensNearbyListLoading,
      bool? isCanteenDetailsLoading,
      bool? isCartLoading,
      bool? isPlacingOrder,
      bool? isModifyingCartItems,
      Option<FirebaseFailure>? canteenslistFailureOrSuccess,
      Option<FirebaseFailure>? canteenDetailsFailureOrSuccess,
      Option<FirebaseFailure>? canteenCartFailureOrSuccess,
      Option<Either<FirebaseFailure, String>>? placeOrderFailureOrSuccess,
      List<CanteenBasicDetailsModel>? canteensList,
      List<CanteenBasicDetailsModel>? canteensNearbyList,
      Map<String, CartModel>? cartItemsMap,
      List<MenuCategoryModel>? menuCategoriesList,
      Map<String, List<ItemModel>>? menuCategoryWiseItemsMap,
      List<ItemModel>? canteenItemsList,
      bool? isShowingBackToTop,
      int deliveryAddressIndex});
}

/// @nodoc
class _$CanteenDetailsStateCopyWithImpl<$Res>
    implements $CanteenDetailsStateCopyWith<$Res> {
  _$CanteenDetailsStateCopyWithImpl(this._value, this._then);

  final CanteenDetailsState _value;
  // ignore: unused_field
  final $Res Function(CanteenDetailsState) _then;

  @override
  $Res call({
    Object? isShowingVeg = freezed,
    Object? isShowingNonVeg = freezed,
    Object? isCanteensListLoading = freezed,
    Object? isCanteensNearbyListLoading = freezed,
    Object? isCanteenDetailsLoading = freezed,
    Object? isCartLoading = freezed,
    Object? isPlacingOrder = freezed,
    Object? isModifyingCartItems = freezed,
    Object? canteenslistFailureOrSuccess = freezed,
    Object? canteenDetailsFailureOrSuccess = freezed,
    Object? canteenCartFailureOrSuccess = freezed,
    Object? placeOrderFailureOrSuccess = freezed,
    Object? canteensList = freezed,
    Object? canteensNearbyList = freezed,
    Object? cartItemsMap = freezed,
    Object? menuCategoriesList = freezed,
    Object? menuCategoryWiseItemsMap = freezed,
    Object? canteenItemsList = freezed,
    Object? isShowingBackToTop = freezed,
    Object? deliveryAddressIndex = freezed,
  }) {
    return _then(_value.copyWith(
      isShowingVeg: isShowingVeg == freezed
          ? _value.isShowingVeg
          : isShowingVeg // ignore: cast_nullable_to_non_nullable
              as bool?,
      isShowingNonVeg: isShowingNonVeg == freezed
          ? _value.isShowingNonVeg
          : isShowingNonVeg // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCanteensListLoading: isCanteensListLoading == freezed
          ? _value.isCanteensListLoading
          : isCanteensListLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCanteensNearbyListLoading: isCanteensNearbyListLoading == freezed
          ? _value.isCanteensNearbyListLoading
          : isCanteensNearbyListLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCanteenDetailsLoading: isCanteenDetailsLoading == freezed
          ? _value.isCanteenDetailsLoading
          : isCanteenDetailsLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCartLoading: isCartLoading == freezed
          ? _value.isCartLoading
          : isCartLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPlacingOrder: isPlacingOrder == freezed
          ? _value.isPlacingOrder
          : isPlacingOrder // ignore: cast_nullable_to_non_nullable
              as bool?,
      isModifyingCartItems: isModifyingCartItems == freezed
          ? _value.isModifyingCartItems
          : isModifyingCartItems // ignore: cast_nullable_to_non_nullable
              as bool?,
      canteenslistFailureOrSuccess: canteenslistFailureOrSuccess == freezed
          ? _value.canteenslistFailureOrSuccess
          : canteenslistFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<FirebaseFailure>?,
      canteenDetailsFailureOrSuccess: canteenDetailsFailureOrSuccess == freezed
          ? _value.canteenDetailsFailureOrSuccess
          : canteenDetailsFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<FirebaseFailure>?,
      canteenCartFailureOrSuccess: canteenCartFailureOrSuccess == freezed
          ? _value.canteenCartFailureOrSuccess
          : canteenCartFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<FirebaseFailure>?,
      placeOrderFailureOrSuccess: placeOrderFailureOrSuccess == freezed
          ? _value.placeOrderFailureOrSuccess
          : placeOrderFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, String>>?,
      canteensList: canteensList == freezed
          ? _value.canteensList
          : canteensList // ignore: cast_nullable_to_non_nullable
              as List<CanteenBasicDetailsModel>?,
      canteensNearbyList: canteensNearbyList == freezed
          ? _value.canteensNearbyList
          : canteensNearbyList // ignore: cast_nullable_to_non_nullable
              as List<CanteenBasicDetailsModel>?,
      cartItemsMap: cartItemsMap == freezed
          ? _value.cartItemsMap
          : cartItemsMap // ignore: cast_nullable_to_non_nullable
              as Map<String, CartModel>?,
      menuCategoriesList: menuCategoriesList == freezed
          ? _value.menuCategoriesList
          : menuCategoriesList // ignore: cast_nullable_to_non_nullable
              as List<MenuCategoryModel>?,
      menuCategoryWiseItemsMap: menuCategoryWiseItemsMap == freezed
          ? _value.menuCategoryWiseItemsMap
          : menuCategoryWiseItemsMap // ignore: cast_nullable_to_non_nullable
              as Map<String, List<ItemModel>>?,
      canteenItemsList: canteenItemsList == freezed
          ? _value.canteenItemsList
          : canteenItemsList // ignore: cast_nullable_to_non_nullable
              as List<ItemModel>?,
      isShowingBackToTop: isShowingBackToTop == freezed
          ? _value.isShowingBackToTop
          : isShowingBackToTop // ignore: cast_nullable_to_non_nullable
              as bool?,
      deliveryAddressIndex: deliveryAddressIndex == freezed
          ? _value.deliveryAddressIndex
          : deliveryAddressIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CanteenDetailsStateCopyWith<$Res>
    implements $CanteenDetailsStateCopyWith<$Res> {
  factory _$CanteenDetailsStateCopyWith(_CanteenDetailsState value,
          $Res Function(_CanteenDetailsState) then) =
      __$CanteenDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? isShowingVeg,
      bool? isShowingNonVeg,
      bool? isCanteensListLoading,
      bool? isCanteensNearbyListLoading,
      bool? isCanteenDetailsLoading,
      bool? isCartLoading,
      bool? isPlacingOrder,
      bool? isModifyingCartItems,
      Option<FirebaseFailure>? canteenslistFailureOrSuccess,
      Option<FirebaseFailure>? canteenDetailsFailureOrSuccess,
      Option<FirebaseFailure>? canteenCartFailureOrSuccess,
      Option<Either<FirebaseFailure, String>>? placeOrderFailureOrSuccess,
      List<CanteenBasicDetailsModel>? canteensList,
      List<CanteenBasicDetailsModel>? canteensNearbyList,
      Map<String, CartModel>? cartItemsMap,
      List<MenuCategoryModel>? menuCategoriesList,
      Map<String, List<ItemModel>>? menuCategoryWiseItemsMap,
      List<ItemModel>? canteenItemsList,
      bool? isShowingBackToTop,
      int deliveryAddressIndex});
}

/// @nodoc
class __$CanteenDetailsStateCopyWithImpl<$Res>
    extends _$CanteenDetailsStateCopyWithImpl<$Res>
    implements _$CanteenDetailsStateCopyWith<$Res> {
  __$CanteenDetailsStateCopyWithImpl(
      _CanteenDetailsState _value, $Res Function(_CanteenDetailsState) _then)
      : super(_value, (v) => _then(v as _CanteenDetailsState));

  @override
  _CanteenDetailsState get _value => super._value as _CanteenDetailsState;

  @override
  $Res call({
    Object? isShowingVeg = freezed,
    Object? isShowingNonVeg = freezed,
    Object? isCanteensListLoading = freezed,
    Object? isCanteensNearbyListLoading = freezed,
    Object? isCanteenDetailsLoading = freezed,
    Object? isCartLoading = freezed,
    Object? isPlacingOrder = freezed,
    Object? isModifyingCartItems = freezed,
    Object? canteenslistFailureOrSuccess = freezed,
    Object? canteenDetailsFailureOrSuccess = freezed,
    Object? canteenCartFailureOrSuccess = freezed,
    Object? placeOrderFailureOrSuccess = freezed,
    Object? canteensList = freezed,
    Object? canteensNearbyList = freezed,
    Object? cartItemsMap = freezed,
    Object? menuCategoriesList = freezed,
    Object? menuCategoryWiseItemsMap = freezed,
    Object? canteenItemsList = freezed,
    Object? isShowingBackToTop = freezed,
    Object? deliveryAddressIndex = freezed,
  }) {
    return _then(_CanteenDetailsState(
      isShowingVeg: isShowingVeg == freezed
          ? _value.isShowingVeg
          : isShowingVeg // ignore: cast_nullable_to_non_nullable
              as bool?,
      isShowingNonVeg: isShowingNonVeg == freezed
          ? _value.isShowingNonVeg
          : isShowingNonVeg // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCanteensListLoading: isCanteensListLoading == freezed
          ? _value.isCanteensListLoading
          : isCanteensListLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCanteensNearbyListLoading: isCanteensNearbyListLoading == freezed
          ? _value.isCanteensNearbyListLoading
          : isCanteensNearbyListLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCanteenDetailsLoading: isCanteenDetailsLoading == freezed
          ? _value.isCanteenDetailsLoading
          : isCanteenDetailsLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCartLoading: isCartLoading == freezed
          ? _value.isCartLoading
          : isCartLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPlacingOrder: isPlacingOrder == freezed
          ? _value.isPlacingOrder
          : isPlacingOrder // ignore: cast_nullable_to_non_nullable
              as bool?,
      isModifyingCartItems: isModifyingCartItems == freezed
          ? _value.isModifyingCartItems
          : isModifyingCartItems // ignore: cast_nullable_to_non_nullable
              as bool?,
      canteenslistFailureOrSuccess: canteenslistFailureOrSuccess == freezed
          ? _value.canteenslistFailureOrSuccess
          : canteenslistFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<FirebaseFailure>?,
      canteenDetailsFailureOrSuccess: canteenDetailsFailureOrSuccess == freezed
          ? _value.canteenDetailsFailureOrSuccess
          : canteenDetailsFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<FirebaseFailure>?,
      canteenCartFailureOrSuccess: canteenCartFailureOrSuccess == freezed
          ? _value.canteenCartFailureOrSuccess
          : canteenCartFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<FirebaseFailure>?,
      placeOrderFailureOrSuccess: placeOrderFailureOrSuccess == freezed
          ? _value.placeOrderFailureOrSuccess
          : placeOrderFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, String>>?,
      canteensList: canteensList == freezed
          ? _value.canteensList
          : canteensList // ignore: cast_nullable_to_non_nullable
              as List<CanteenBasicDetailsModel>?,
      canteensNearbyList: canteensNearbyList == freezed
          ? _value.canteensNearbyList
          : canteensNearbyList // ignore: cast_nullable_to_non_nullable
              as List<CanteenBasicDetailsModel>?,
      cartItemsMap: cartItemsMap == freezed
          ? _value.cartItemsMap
          : cartItemsMap // ignore: cast_nullable_to_non_nullable
              as Map<String, CartModel>?,
      menuCategoriesList: menuCategoriesList == freezed
          ? _value.menuCategoriesList
          : menuCategoriesList // ignore: cast_nullable_to_non_nullable
              as List<MenuCategoryModel>?,
      menuCategoryWiseItemsMap: menuCategoryWiseItemsMap == freezed
          ? _value.menuCategoryWiseItemsMap
          : menuCategoryWiseItemsMap // ignore: cast_nullable_to_non_nullable
              as Map<String, List<ItemModel>>?,
      canteenItemsList: canteenItemsList == freezed
          ? _value.canteenItemsList
          : canteenItemsList // ignore: cast_nullable_to_non_nullable
              as List<ItemModel>?,
      isShowingBackToTop: isShowingBackToTop == freezed
          ? _value.isShowingBackToTop
          : isShowingBackToTop // ignore: cast_nullable_to_non_nullable
              as bool?,
      deliveryAddressIndex: deliveryAddressIndex == freezed
          ? _value.deliveryAddressIndex
          : deliveryAddressIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CanteenDetailsState implements _CanteenDetailsState {
  const _$_CanteenDetailsState(
      {this.isShowingVeg,
      this.isShowingNonVeg,
      this.isCanteensListLoading,
      this.isCanteensNearbyListLoading,
      this.isCanteenDetailsLoading,
      this.isCartLoading,
      this.isPlacingOrder,
      this.isModifyingCartItems,
      this.canteenslistFailureOrSuccess,
      this.canteenDetailsFailureOrSuccess,
      this.canteenCartFailureOrSuccess,
      this.placeOrderFailureOrSuccess,
      this.canteensList,
      this.canteensNearbyList,
      this.cartItemsMap,
      this.menuCategoriesList,
      this.menuCategoryWiseItemsMap,
      this.canteenItemsList,
      this.isShowingBackToTop,
      required this.deliveryAddressIndex});

  @override
  final bool? isShowingVeg;
  @override
  final bool? isShowingNonVeg;
  @override
  final bool? isCanteensListLoading;
  @override
  final bool? isCanteensNearbyListLoading;
  @override
  final bool? isCanteenDetailsLoading;
  @override
  final bool? isCartLoading;
  @override
  final bool? isPlacingOrder;
  @override
  final bool? isModifyingCartItems;
  @override
  final Option<FirebaseFailure>? canteenslistFailureOrSuccess;
  @override
  final Option<FirebaseFailure>? canteenDetailsFailureOrSuccess;
  @override
  final Option<FirebaseFailure>? canteenCartFailureOrSuccess;
  @override
  final Option<Either<FirebaseFailure, String>>? placeOrderFailureOrSuccess;
  @override
  final List<CanteenBasicDetailsModel>? canteensList;
  @override
  final List<CanteenBasicDetailsModel>? canteensNearbyList;
  @override
  final Map<String, CartModel>? cartItemsMap;
  @override
  final List<MenuCategoryModel>? menuCategoriesList;
  @override
  final Map<String, List<ItemModel>>? menuCategoryWiseItemsMap;
  @override //will store all the fetched canteen details in this map
  final List<ItemModel>? canteenItemsList;
  @override
  final bool? isShowingBackToTop;
  @override
  final int deliveryAddressIndex;

  @override
  String toString() {
    return 'CanteenDetailsState(isShowingVeg: $isShowingVeg, isShowingNonVeg: $isShowingNonVeg, isCanteensListLoading: $isCanteensListLoading, isCanteensNearbyListLoading: $isCanteensNearbyListLoading, isCanteenDetailsLoading: $isCanteenDetailsLoading, isCartLoading: $isCartLoading, isPlacingOrder: $isPlacingOrder, isModifyingCartItems: $isModifyingCartItems, canteenslistFailureOrSuccess: $canteenslistFailureOrSuccess, canteenDetailsFailureOrSuccess: $canteenDetailsFailureOrSuccess, canteenCartFailureOrSuccess: $canteenCartFailureOrSuccess, placeOrderFailureOrSuccess: $placeOrderFailureOrSuccess, canteensList: $canteensList, canteensNearbyList: $canteensNearbyList, cartItemsMap: $cartItemsMap, menuCategoriesList: $menuCategoriesList, menuCategoryWiseItemsMap: $menuCategoryWiseItemsMap, canteenItemsList: $canteenItemsList, isShowingBackToTop: $isShowingBackToTop, deliveryAddressIndex: $deliveryAddressIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CanteenDetailsState &&
            (identical(other.isShowingVeg, isShowingVeg) ||
                const DeepCollectionEquality()
                    .equals(other.isShowingVeg, isShowingVeg)) &&
            (identical(other.isShowingNonVeg, isShowingNonVeg) ||
                const DeepCollectionEquality()
                    .equals(other.isShowingNonVeg, isShowingNonVeg)) &&
            (identical(other.isCanteensListLoading, isCanteensListLoading) ||
                const DeepCollectionEquality().equals(
                    other.isCanteensListLoading, isCanteensListLoading)) &&
            (identical(other.isCanteensNearbyListLoading, isCanteensNearbyListLoading) ||
                const DeepCollectionEquality().equals(
                    other.isCanteensNearbyListLoading,
                    isCanteensNearbyListLoading)) &&
            (identical(other.isCanteenDetailsLoading, isCanteenDetailsLoading) ||
                const DeepCollectionEquality().equals(
                    other.isCanteenDetailsLoading, isCanteenDetailsLoading)) &&
            (identical(other.isCartLoading, isCartLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isCartLoading, isCartLoading)) &&
            (identical(other.isPlacingOrder, isPlacingOrder) ||
                const DeepCollectionEquality()
                    .equals(other.isPlacingOrder, isPlacingOrder)) &&
            (identical(other.isModifyingCartItems, isModifyingCartItems) ||
                const DeepCollectionEquality().equals(
                    other.isModifyingCartItems, isModifyingCartItems)) &&
            (identical(other.canteenslistFailureOrSuccess, canteenslistFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.canteenslistFailureOrSuccess,
                    canteenslistFailureOrSuccess)) &&
            (identical(other.canteenDetailsFailureOrSuccess, canteenDetailsFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.canteenDetailsFailureOrSuccess,
                    canteenDetailsFailureOrSuccess)) &&
            (identical(other.canteenCartFailureOrSuccess, canteenCartFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.canteenCartFailureOrSuccess,
                    canteenCartFailureOrSuccess)) &&
            (identical(other.placeOrderFailureOrSuccess, placeOrderFailureOrSuccess) || const DeepCollectionEquality().equals(other.placeOrderFailureOrSuccess, placeOrderFailureOrSuccess)) &&
            (identical(other.canteensList, canteensList) || const DeepCollectionEquality().equals(other.canteensList, canteensList)) &&
            (identical(other.canteensNearbyList, canteensNearbyList) || const DeepCollectionEquality().equals(other.canteensNearbyList, canteensNearbyList)) &&
            (identical(other.cartItemsMap, cartItemsMap) || const DeepCollectionEquality().equals(other.cartItemsMap, cartItemsMap)) &&
            (identical(other.menuCategoriesList, menuCategoriesList) || const DeepCollectionEquality().equals(other.menuCategoriesList, menuCategoriesList)) &&
            (identical(other.menuCategoryWiseItemsMap, menuCategoryWiseItemsMap) || const DeepCollectionEquality().equals(other.menuCategoryWiseItemsMap, menuCategoryWiseItemsMap)) &&
            (identical(other.canteenItemsList, canteenItemsList) || const DeepCollectionEquality().equals(other.canteenItemsList, canteenItemsList)) &&
            (identical(other.isShowingBackToTop, isShowingBackToTop) || const DeepCollectionEquality().equals(other.isShowingBackToTop, isShowingBackToTop)) &&
            (identical(other.deliveryAddressIndex, deliveryAddressIndex) || const DeepCollectionEquality().equals(other.deliveryAddressIndex, deliveryAddressIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isShowingVeg) ^
      const DeepCollectionEquality().hash(isShowingNonVeg) ^
      const DeepCollectionEquality().hash(isCanteensListLoading) ^
      const DeepCollectionEquality().hash(isCanteensNearbyListLoading) ^
      const DeepCollectionEquality().hash(isCanteenDetailsLoading) ^
      const DeepCollectionEquality().hash(isCartLoading) ^
      const DeepCollectionEquality().hash(isPlacingOrder) ^
      const DeepCollectionEquality().hash(isModifyingCartItems) ^
      const DeepCollectionEquality().hash(canteenslistFailureOrSuccess) ^
      const DeepCollectionEquality().hash(canteenDetailsFailureOrSuccess) ^
      const DeepCollectionEquality().hash(canteenCartFailureOrSuccess) ^
      const DeepCollectionEquality().hash(placeOrderFailureOrSuccess) ^
      const DeepCollectionEquality().hash(canteensList) ^
      const DeepCollectionEquality().hash(canteensNearbyList) ^
      const DeepCollectionEquality().hash(cartItemsMap) ^
      const DeepCollectionEquality().hash(menuCategoriesList) ^
      const DeepCollectionEquality().hash(menuCategoryWiseItemsMap) ^
      const DeepCollectionEquality().hash(canteenItemsList) ^
      const DeepCollectionEquality().hash(isShowingBackToTop) ^
      const DeepCollectionEquality().hash(deliveryAddressIndex);

  @JsonKey(ignore: true)
  @override
  _$CanteenDetailsStateCopyWith<_CanteenDetailsState> get copyWith =>
      __$CanteenDetailsStateCopyWithImpl<_CanteenDetailsState>(
          this, _$identity);
}

abstract class _CanteenDetailsState implements CanteenDetailsState {
  const factory _CanteenDetailsState(
      {bool? isShowingVeg,
      bool? isShowingNonVeg,
      bool? isCanteensListLoading,
      bool? isCanteensNearbyListLoading,
      bool? isCanteenDetailsLoading,
      bool? isCartLoading,
      bool? isPlacingOrder,
      bool? isModifyingCartItems,
      Option<FirebaseFailure>? canteenslistFailureOrSuccess,
      Option<FirebaseFailure>? canteenDetailsFailureOrSuccess,
      Option<FirebaseFailure>? canteenCartFailureOrSuccess,
      Option<Either<FirebaseFailure, String>>? placeOrderFailureOrSuccess,
      List<CanteenBasicDetailsModel>? canteensList,
      List<CanteenBasicDetailsModel>? canteensNearbyList,
      Map<String, CartModel>? cartItemsMap,
      List<MenuCategoryModel>? menuCategoriesList,
      Map<String, List<ItemModel>>? menuCategoryWiseItemsMap,
      List<ItemModel>? canteenItemsList,
      bool? isShowingBackToTop,
      required int deliveryAddressIndex}) = _$_CanteenDetailsState;

  @override
  bool? get isShowingVeg => throw _privateConstructorUsedError;
  @override
  bool? get isShowingNonVeg => throw _privateConstructorUsedError;
  @override
  bool? get isCanteensListLoading => throw _privateConstructorUsedError;
  @override
  bool? get isCanteensNearbyListLoading => throw _privateConstructorUsedError;
  @override
  bool? get isCanteenDetailsLoading => throw _privateConstructorUsedError;
  @override
  bool? get isCartLoading => throw _privateConstructorUsedError;
  @override
  bool? get isPlacingOrder => throw _privateConstructorUsedError;
  @override
  bool? get isModifyingCartItems => throw _privateConstructorUsedError;
  @override
  Option<FirebaseFailure>? get canteenslistFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  Option<FirebaseFailure>? get canteenDetailsFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  Option<FirebaseFailure>? get canteenCartFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<FirebaseFailure, String>>? get placeOrderFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  List<CanteenBasicDetailsModel>? get canteensList =>
      throw _privateConstructorUsedError;
  @override
  List<CanteenBasicDetailsModel>? get canteensNearbyList =>
      throw _privateConstructorUsedError;
  @override
  Map<String, CartModel>? get cartItemsMap =>
      throw _privateConstructorUsedError;
  @override
  List<MenuCategoryModel>? get menuCategoriesList =>
      throw _privateConstructorUsedError;
  @override
  Map<String, List<ItemModel>>? get menuCategoryWiseItemsMap =>
      throw _privateConstructorUsedError;
  @override //will store all the fetched canteen details in this map
  List<ItemModel>? get canteenItemsList => throw _privateConstructorUsedError;
  @override
  bool? get isShowingBackToTop => throw _privateConstructorUsedError;
  @override
  int get deliveryAddressIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CanteenDetailsStateCopyWith<_CanteenDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
