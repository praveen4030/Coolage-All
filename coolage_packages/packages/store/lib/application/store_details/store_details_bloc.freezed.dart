// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'store_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StoreDetailsEventTearOff {
  const _$StoreDetailsEventTearOff();

  _GetCollegeStores getCollegeStores(String college) {
    return _GetCollegeStores(
      college,
    );
  }

  _GetStoreProductsList getStoreProductsList(String storeId) {
    return _GetStoreProductsList(
      storeId,
    );
  }

  _AddToCart addToCart(
      {bool? isIncreased,
      List<ItemModel>? storeItems,
      StoreBasicDetailsModel? storeBasicDetailsModel}) {
    return _AddToCart(
      isIncreased: isIncreased,
      storeItems: storeItems,
      storeBasicDetailsModel: storeBasicDetailsModel,
    );
  }
}

/// @nodoc
const $StoreDetailsEvent = _$StoreDetailsEventTearOff();

/// @nodoc
mixin _$StoreDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String college) getCollegeStores,
    required TResult Function(String storeId) getStoreProductsList,
    required TResult Function(bool? isIncreased, List<ItemModel>? storeItems,
            StoreBasicDetailsModel? storeBasicDetailsModel)
        addToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String college)? getCollegeStores,
    TResult Function(String storeId)? getStoreProductsList,
    TResult Function(bool? isIncreased, List<ItemModel>? storeItems,
            StoreBasicDetailsModel? storeBasicDetailsModel)?
        addToCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCollegeStores value) getCollegeStores,
    required TResult Function(_GetStoreProductsList value) getStoreProductsList,
    required TResult Function(_AddToCart value) addToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCollegeStores value)? getCollegeStores,
    TResult Function(_GetStoreProductsList value)? getStoreProductsList,
    TResult Function(_AddToCart value)? addToCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreDetailsEventCopyWith<$Res> {
  factory $StoreDetailsEventCopyWith(
          StoreDetailsEvent value, $Res Function(StoreDetailsEvent) then) =
      _$StoreDetailsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoreDetailsEventCopyWithImpl<$Res>
    implements $StoreDetailsEventCopyWith<$Res> {
  _$StoreDetailsEventCopyWithImpl(this._value, this._then);

  final StoreDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(StoreDetailsEvent) _then;
}

/// @nodoc
abstract class _$GetCollegeStoresCopyWith<$Res> {
  factory _$GetCollegeStoresCopyWith(
          _GetCollegeStores value, $Res Function(_GetCollegeStores) then) =
      __$GetCollegeStoresCopyWithImpl<$Res>;
  $Res call({String college});
}

/// @nodoc
class __$GetCollegeStoresCopyWithImpl<$Res>
    extends _$StoreDetailsEventCopyWithImpl<$Res>
    implements _$GetCollegeStoresCopyWith<$Res> {
  __$GetCollegeStoresCopyWithImpl(
      _GetCollegeStores _value, $Res Function(_GetCollegeStores) _then)
      : super(_value, (v) => _then(v as _GetCollegeStores));

  @override
  _GetCollegeStores get _value => super._value as _GetCollegeStores;

  @override
  $Res call({
    Object? college = freezed,
  }) {
    return _then(_GetCollegeStores(
      college == freezed
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetCollegeStores implements _GetCollegeStores {
  const _$_GetCollegeStores(this.college);

  @override
  final String college;

  @override
  String toString() {
    return 'StoreDetailsEvent.getCollegeStores(college: $college)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetCollegeStores &&
            (identical(other.college, college) ||
                const DeepCollectionEquality().equals(other.college, college)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(college);

  @JsonKey(ignore: true)
  @override
  _$GetCollegeStoresCopyWith<_GetCollegeStores> get copyWith =>
      __$GetCollegeStoresCopyWithImpl<_GetCollegeStores>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String college) getCollegeStores,
    required TResult Function(String storeId) getStoreProductsList,
    required TResult Function(bool? isIncreased, List<ItemModel>? storeItems,
            StoreBasicDetailsModel? storeBasicDetailsModel)
        addToCart,
  }) {
    return getCollegeStores(college);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String college)? getCollegeStores,
    TResult Function(String storeId)? getStoreProductsList,
    TResult Function(bool? isIncreased, List<ItemModel>? storeItems,
            StoreBasicDetailsModel? storeBasicDetailsModel)?
        addToCart,
    required TResult orElse(),
  }) {
    if (getCollegeStores != null) {
      return getCollegeStores(college);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCollegeStores value) getCollegeStores,
    required TResult Function(_GetStoreProductsList value) getStoreProductsList,
    required TResult Function(_AddToCart value) addToCart,
  }) {
    return getCollegeStores(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCollegeStores value)? getCollegeStores,
    TResult Function(_GetStoreProductsList value)? getStoreProductsList,
    TResult Function(_AddToCart value)? addToCart,
    required TResult orElse(),
  }) {
    if (getCollegeStores != null) {
      return getCollegeStores(this);
    }
    return orElse();
  }
}

abstract class _GetCollegeStores implements StoreDetailsEvent {
  const factory _GetCollegeStores(String college) = _$_GetCollegeStores;

  String get college => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetCollegeStoresCopyWith<_GetCollegeStores> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetStoreProductsListCopyWith<$Res> {
  factory _$GetStoreProductsListCopyWith(_GetStoreProductsList value,
          $Res Function(_GetStoreProductsList) then) =
      __$GetStoreProductsListCopyWithImpl<$Res>;
  $Res call({String storeId});
}

/// @nodoc
class __$GetStoreProductsListCopyWithImpl<$Res>
    extends _$StoreDetailsEventCopyWithImpl<$Res>
    implements _$GetStoreProductsListCopyWith<$Res> {
  __$GetStoreProductsListCopyWithImpl(
      _GetStoreProductsList _value, $Res Function(_GetStoreProductsList) _then)
      : super(_value, (v) => _then(v as _GetStoreProductsList));

  @override
  _GetStoreProductsList get _value => super._value as _GetStoreProductsList;

  @override
  $Res call({
    Object? storeId = freezed,
  }) {
    return _then(_GetStoreProductsList(
      storeId == freezed
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetStoreProductsList implements _GetStoreProductsList {
  const _$_GetStoreProductsList(this.storeId);

  @override
  final String storeId;

  @override
  String toString() {
    return 'StoreDetailsEvent.getStoreProductsList(storeId: $storeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetStoreProductsList &&
            (identical(other.storeId, storeId) ||
                const DeepCollectionEquality().equals(other.storeId, storeId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(storeId);

  @JsonKey(ignore: true)
  @override
  _$GetStoreProductsListCopyWith<_GetStoreProductsList> get copyWith =>
      __$GetStoreProductsListCopyWithImpl<_GetStoreProductsList>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String college) getCollegeStores,
    required TResult Function(String storeId) getStoreProductsList,
    required TResult Function(bool? isIncreased, List<ItemModel>? storeItems,
            StoreBasicDetailsModel? storeBasicDetailsModel)
        addToCart,
  }) {
    return getStoreProductsList(storeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String college)? getCollegeStores,
    TResult Function(String storeId)? getStoreProductsList,
    TResult Function(bool? isIncreased, List<ItemModel>? storeItems,
            StoreBasicDetailsModel? storeBasicDetailsModel)?
        addToCart,
    required TResult orElse(),
  }) {
    if (getStoreProductsList != null) {
      return getStoreProductsList(storeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCollegeStores value) getCollegeStores,
    required TResult Function(_GetStoreProductsList value) getStoreProductsList,
    required TResult Function(_AddToCart value) addToCart,
  }) {
    return getStoreProductsList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCollegeStores value)? getCollegeStores,
    TResult Function(_GetStoreProductsList value)? getStoreProductsList,
    TResult Function(_AddToCart value)? addToCart,
    required TResult orElse(),
  }) {
    if (getStoreProductsList != null) {
      return getStoreProductsList(this);
    }
    return orElse();
  }
}

abstract class _GetStoreProductsList implements StoreDetailsEvent {
  const factory _GetStoreProductsList(String storeId) = _$_GetStoreProductsList;

  String get storeId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetStoreProductsListCopyWith<_GetStoreProductsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddToCartCopyWith<$Res> {
  factory _$AddToCartCopyWith(
          _AddToCart value, $Res Function(_AddToCart) then) =
      __$AddToCartCopyWithImpl<$Res>;
  $Res call(
      {bool? isIncreased,
      List<ItemModel>? storeItems,
      StoreBasicDetailsModel? storeBasicDetailsModel});
}

/// @nodoc
class __$AddToCartCopyWithImpl<$Res>
    extends _$StoreDetailsEventCopyWithImpl<$Res>
    implements _$AddToCartCopyWith<$Res> {
  __$AddToCartCopyWithImpl(_AddToCart _value, $Res Function(_AddToCart) _then)
      : super(_value, (v) => _then(v as _AddToCart));

  @override
  _AddToCart get _value => super._value as _AddToCart;

  @override
  $Res call({
    Object? isIncreased = freezed,
    Object? storeItems = freezed,
    Object? storeBasicDetailsModel = freezed,
  }) {
    return _then(_AddToCart(
      isIncreased: isIncreased == freezed
          ? _value.isIncreased
          : isIncreased // ignore: cast_nullable_to_non_nullable
              as bool?,
      storeItems: storeItems == freezed
          ? _value.storeItems
          : storeItems // ignore: cast_nullable_to_non_nullable
              as List<ItemModel>?,
      storeBasicDetailsModel: storeBasicDetailsModel == freezed
          ? _value.storeBasicDetailsModel
          : storeBasicDetailsModel // ignore: cast_nullable_to_non_nullable
              as StoreBasicDetailsModel?,
    ));
  }
}

/// @nodoc

class _$_AddToCart implements _AddToCart {
  const _$_AddToCart(
      {this.isIncreased, this.storeItems, this.storeBasicDetailsModel});

  @override
  final bool? isIncreased;
  @override
  final List<ItemModel>? storeItems;
  @override
  final StoreBasicDetailsModel? storeBasicDetailsModel;

  @override
  String toString() {
    return 'StoreDetailsEvent.addToCart(isIncreased: $isIncreased, storeItems: $storeItems, storeBasicDetailsModel: $storeBasicDetailsModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddToCart &&
            (identical(other.isIncreased, isIncreased) ||
                const DeepCollectionEquality()
                    .equals(other.isIncreased, isIncreased)) &&
            (identical(other.storeItems, storeItems) ||
                const DeepCollectionEquality()
                    .equals(other.storeItems, storeItems)) &&
            (identical(other.storeBasicDetailsModel, storeBasicDetailsModel) ||
                const DeepCollectionEquality().equals(
                    other.storeBasicDetailsModel, storeBasicDetailsModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isIncreased) ^
      const DeepCollectionEquality().hash(storeItems) ^
      const DeepCollectionEquality().hash(storeBasicDetailsModel);

  @JsonKey(ignore: true)
  @override
  _$AddToCartCopyWith<_AddToCart> get copyWith =>
      __$AddToCartCopyWithImpl<_AddToCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String college) getCollegeStores,
    required TResult Function(String storeId) getStoreProductsList,
    required TResult Function(bool? isIncreased, List<ItemModel>? storeItems,
            StoreBasicDetailsModel? storeBasicDetailsModel)
        addToCart,
  }) {
    return addToCart(isIncreased, storeItems, storeBasicDetailsModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String college)? getCollegeStores,
    TResult Function(String storeId)? getStoreProductsList,
    TResult Function(bool? isIncreased, List<ItemModel>? storeItems,
            StoreBasicDetailsModel? storeBasicDetailsModel)?
        addToCart,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(isIncreased, storeItems, storeBasicDetailsModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCollegeStores value) getCollegeStores,
    required TResult Function(_GetStoreProductsList value) getStoreProductsList,
    required TResult Function(_AddToCart value) addToCart,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCollegeStores value)? getCollegeStores,
    TResult Function(_GetStoreProductsList value)? getStoreProductsList,
    TResult Function(_AddToCart value)? addToCart,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class _AddToCart implements StoreDetailsEvent {
  const factory _AddToCart(
      {bool? isIncreased,
      List<ItemModel>? storeItems,
      StoreBasicDetailsModel? storeBasicDetailsModel}) = _$_AddToCart;

  bool? get isIncreased => throw _privateConstructorUsedError;
  List<ItemModel>? get storeItems => throw _privateConstructorUsedError;
  StoreBasicDetailsModel? get storeBasicDetailsModel =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddToCartCopyWith<_AddToCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$StoreDetailsStateTearOff {
  const _$StoreDetailsStateTearOff();

  _StoreDetailsState call(
      {bool? isStoresListLoading,
      bool? isStoreProductsListLoading,
      Option<FirebaseFailure>? collegeStoresListFailureOrSuccess,
      Option<FirebaseFailure>? storeProductsListFailureOrSuccess,
      Option<Either<FirebaseFailure, Unit>>? addToCartFailureOrSuccess,
      List<ItemModel>? storeProductsList,
      List<StoreBasicDetailsModel>? collegeStoresList}) {
    return _StoreDetailsState(
      isStoresListLoading: isStoresListLoading,
      isStoreProductsListLoading: isStoreProductsListLoading,
      collegeStoresListFailureOrSuccess: collegeStoresListFailureOrSuccess,
      storeProductsListFailureOrSuccess: storeProductsListFailureOrSuccess,
      addToCartFailureOrSuccess: addToCartFailureOrSuccess,
      storeProductsList: storeProductsList,
      collegeStoresList: collegeStoresList,
    );
  }
}

/// @nodoc
const $StoreDetailsState = _$StoreDetailsStateTearOff();

/// @nodoc
mixin _$StoreDetailsState {
  bool? get isStoresListLoading => throw _privateConstructorUsedError;
  bool? get isStoreProductsListLoading =>
      throw _privateConstructorUsedError; //failures
  Option<FirebaseFailure>? get collegeStoresListFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Option<FirebaseFailure>? get storeProductsListFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Option<Either<FirebaseFailure, Unit>>? get addToCartFailureOrSuccess =>
      throw _privateConstructorUsedError;
  List<ItemModel>? get storeProductsList => throw _privateConstructorUsedError;
  List<StoreBasicDetailsModel>? get collegeStoresList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StoreDetailsStateCopyWith<StoreDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreDetailsStateCopyWith<$Res> {
  factory $StoreDetailsStateCopyWith(
          StoreDetailsState value, $Res Function(StoreDetailsState) then) =
      _$StoreDetailsStateCopyWithImpl<$Res>;
  $Res call(
      {bool? isStoresListLoading,
      bool? isStoreProductsListLoading,
      Option<FirebaseFailure>? collegeStoresListFailureOrSuccess,
      Option<FirebaseFailure>? storeProductsListFailureOrSuccess,
      Option<Either<FirebaseFailure, Unit>>? addToCartFailureOrSuccess,
      List<ItemModel>? storeProductsList,
      List<StoreBasicDetailsModel>? collegeStoresList});
}

/// @nodoc
class _$StoreDetailsStateCopyWithImpl<$Res>
    implements $StoreDetailsStateCopyWith<$Res> {
  _$StoreDetailsStateCopyWithImpl(this._value, this._then);

  final StoreDetailsState _value;
  // ignore: unused_field
  final $Res Function(StoreDetailsState) _then;

  @override
  $Res call({
    Object? isStoresListLoading = freezed,
    Object? isStoreProductsListLoading = freezed,
    Object? collegeStoresListFailureOrSuccess = freezed,
    Object? storeProductsListFailureOrSuccess = freezed,
    Object? addToCartFailureOrSuccess = freezed,
    Object? storeProductsList = freezed,
    Object? collegeStoresList = freezed,
  }) {
    return _then(_value.copyWith(
      isStoresListLoading: isStoresListLoading == freezed
          ? _value.isStoresListLoading
          : isStoresListLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isStoreProductsListLoading: isStoreProductsListLoading == freezed
          ? _value.isStoreProductsListLoading
          : isStoreProductsListLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      collegeStoresListFailureOrSuccess: collegeStoresListFailureOrSuccess ==
              freezed
          ? _value.collegeStoresListFailureOrSuccess
          : collegeStoresListFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<FirebaseFailure>?,
      storeProductsListFailureOrSuccess: storeProductsListFailureOrSuccess ==
              freezed
          ? _value.storeProductsListFailureOrSuccess
          : storeProductsListFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<FirebaseFailure>?,
      addToCartFailureOrSuccess: addToCartFailureOrSuccess == freezed
          ? _value.addToCartFailureOrSuccess
          : addToCartFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, Unit>>?,
      storeProductsList: storeProductsList == freezed
          ? _value.storeProductsList
          : storeProductsList // ignore: cast_nullable_to_non_nullable
              as List<ItemModel>?,
      collegeStoresList: collegeStoresList == freezed
          ? _value.collegeStoresList
          : collegeStoresList // ignore: cast_nullable_to_non_nullable
              as List<StoreBasicDetailsModel>?,
    ));
  }
}

/// @nodoc
abstract class _$StoreDetailsStateCopyWith<$Res>
    implements $StoreDetailsStateCopyWith<$Res> {
  factory _$StoreDetailsStateCopyWith(
          _StoreDetailsState value, $Res Function(_StoreDetailsState) then) =
      __$StoreDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? isStoresListLoading,
      bool? isStoreProductsListLoading,
      Option<FirebaseFailure>? collegeStoresListFailureOrSuccess,
      Option<FirebaseFailure>? storeProductsListFailureOrSuccess,
      Option<Either<FirebaseFailure, Unit>>? addToCartFailureOrSuccess,
      List<ItemModel>? storeProductsList,
      List<StoreBasicDetailsModel>? collegeStoresList});
}

/// @nodoc
class __$StoreDetailsStateCopyWithImpl<$Res>
    extends _$StoreDetailsStateCopyWithImpl<$Res>
    implements _$StoreDetailsStateCopyWith<$Res> {
  __$StoreDetailsStateCopyWithImpl(
      _StoreDetailsState _value, $Res Function(_StoreDetailsState) _then)
      : super(_value, (v) => _then(v as _StoreDetailsState));

  @override
  _StoreDetailsState get _value => super._value as _StoreDetailsState;

  @override
  $Res call({
    Object? isStoresListLoading = freezed,
    Object? isStoreProductsListLoading = freezed,
    Object? collegeStoresListFailureOrSuccess = freezed,
    Object? storeProductsListFailureOrSuccess = freezed,
    Object? addToCartFailureOrSuccess = freezed,
    Object? storeProductsList = freezed,
    Object? collegeStoresList = freezed,
  }) {
    return _then(_StoreDetailsState(
      isStoresListLoading: isStoresListLoading == freezed
          ? _value.isStoresListLoading
          : isStoresListLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isStoreProductsListLoading: isStoreProductsListLoading == freezed
          ? _value.isStoreProductsListLoading
          : isStoreProductsListLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      collegeStoresListFailureOrSuccess: collegeStoresListFailureOrSuccess ==
              freezed
          ? _value.collegeStoresListFailureOrSuccess
          : collegeStoresListFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<FirebaseFailure>?,
      storeProductsListFailureOrSuccess: storeProductsListFailureOrSuccess ==
              freezed
          ? _value.storeProductsListFailureOrSuccess
          : storeProductsListFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<FirebaseFailure>?,
      addToCartFailureOrSuccess: addToCartFailureOrSuccess == freezed
          ? _value.addToCartFailureOrSuccess
          : addToCartFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, Unit>>?,
      storeProductsList: storeProductsList == freezed
          ? _value.storeProductsList
          : storeProductsList // ignore: cast_nullable_to_non_nullable
              as List<ItemModel>?,
      collegeStoresList: collegeStoresList == freezed
          ? _value.collegeStoresList
          : collegeStoresList // ignore: cast_nullable_to_non_nullable
              as List<StoreBasicDetailsModel>?,
    ));
  }
}

/// @nodoc

class _$_StoreDetailsState implements _StoreDetailsState {
  const _$_StoreDetailsState(
      {this.isStoresListLoading,
      this.isStoreProductsListLoading,
      this.collegeStoresListFailureOrSuccess,
      this.storeProductsListFailureOrSuccess,
      this.addToCartFailureOrSuccess,
      this.storeProductsList,
      this.collegeStoresList});

  @override
  final bool? isStoresListLoading;
  @override
  final bool? isStoreProductsListLoading;
  @override //failures
  final Option<FirebaseFailure>? collegeStoresListFailureOrSuccess;
  @override
  final Option<FirebaseFailure>? storeProductsListFailureOrSuccess;
  @override
  final Option<Either<FirebaseFailure, Unit>>? addToCartFailureOrSuccess;
  @override
  final List<ItemModel>? storeProductsList;
  @override
  final List<StoreBasicDetailsModel>? collegeStoresList;

  @override
  String toString() {
    return 'StoreDetailsState(isStoresListLoading: $isStoresListLoading, isStoreProductsListLoading: $isStoreProductsListLoading, collegeStoresListFailureOrSuccess: $collegeStoresListFailureOrSuccess, storeProductsListFailureOrSuccess: $storeProductsListFailureOrSuccess, addToCartFailureOrSuccess: $addToCartFailureOrSuccess, storeProductsList: $storeProductsList, collegeStoresList: $collegeStoresList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StoreDetailsState &&
            (identical(other.isStoresListLoading, isStoresListLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isStoresListLoading, isStoresListLoading)) &&
            (identical(other.isStoreProductsListLoading,
                    isStoreProductsListLoading) ||
                const DeepCollectionEquality().equals(
                    other.isStoreProductsListLoading,
                    isStoreProductsListLoading)) &&
            (identical(other.collegeStoresListFailureOrSuccess,
                    collegeStoresListFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.collegeStoresListFailureOrSuccess,
                    collegeStoresListFailureOrSuccess)) &&
            (identical(other.storeProductsListFailureOrSuccess,
                    storeProductsListFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.storeProductsListFailureOrSuccess,
                    storeProductsListFailureOrSuccess)) &&
            (identical(other.addToCartFailureOrSuccess, addToCartFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.addToCartFailureOrSuccess,
                    addToCartFailureOrSuccess)) &&
            (identical(other.storeProductsList, storeProductsList) ||
                const DeepCollectionEquality()
                    .equals(other.storeProductsList, storeProductsList)) &&
            (identical(other.collegeStoresList, collegeStoresList) ||
                const DeepCollectionEquality()
                    .equals(other.collegeStoresList, collegeStoresList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isStoresListLoading) ^
      const DeepCollectionEquality().hash(isStoreProductsListLoading) ^
      const DeepCollectionEquality().hash(collegeStoresListFailureOrSuccess) ^
      const DeepCollectionEquality().hash(storeProductsListFailureOrSuccess) ^
      const DeepCollectionEquality().hash(addToCartFailureOrSuccess) ^
      const DeepCollectionEquality().hash(storeProductsList) ^
      const DeepCollectionEquality().hash(collegeStoresList);

  @JsonKey(ignore: true)
  @override
  _$StoreDetailsStateCopyWith<_StoreDetailsState> get copyWith =>
      __$StoreDetailsStateCopyWithImpl<_StoreDetailsState>(this, _$identity);
}

abstract class _StoreDetailsState implements StoreDetailsState {
  const factory _StoreDetailsState(
      {bool? isStoresListLoading,
      bool? isStoreProductsListLoading,
      Option<FirebaseFailure>? collegeStoresListFailureOrSuccess,
      Option<FirebaseFailure>? storeProductsListFailureOrSuccess,
      Option<Either<FirebaseFailure, Unit>>? addToCartFailureOrSuccess,
      List<ItemModel>? storeProductsList,
      List<StoreBasicDetailsModel>? collegeStoresList}) = _$_StoreDetailsState;

  @override
  bool? get isStoresListLoading => throw _privateConstructorUsedError;
  @override
  bool? get isStoreProductsListLoading => throw _privateConstructorUsedError;
  @override //failures
  Option<FirebaseFailure>? get collegeStoresListFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  Option<FirebaseFailure>? get storeProductsListFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<FirebaseFailure, Unit>>? get addToCartFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  List<ItemModel>? get storeProductsList => throw _privateConstructorUsedError;
  @override
  List<StoreBasicDetailsModel>? get collegeStoresList =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StoreDetailsStateCopyWith<_StoreDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
