// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'stores_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StoresListEventTearOff {
  const _$StoresListEventTearOff();

  _GetCollegeStores getCollegeStores({String? userCollege}) {
    return _GetCollegeStores(
      userCollege: userCollege,
    );
  }

  _GetCategoryStores getCategoryStores({String? category}) {
    return _GetCategoryStores(
      category: category,
    );
  }

  _GetMoreCategoryStores getMoreCategoryStores({String? category}) {
    return _GetMoreCategoryStores(
      category: category,
    );
  }
}

/// @nodoc
const $StoresListEvent = _$StoresListEventTearOff();

/// @nodoc
mixin _$StoresListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userCollege) getCollegeStores,
    required TResult Function(String? category) getCategoryStores,
    required TResult Function(String? category) getMoreCategoryStores,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userCollege)? getCollegeStores,
    TResult Function(String? category)? getCategoryStores,
    TResult Function(String? category)? getMoreCategoryStores,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCollegeStores value) getCollegeStores,
    required TResult Function(_GetCategoryStores value) getCategoryStores,
    required TResult Function(_GetMoreCategoryStores value)
        getMoreCategoryStores,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCollegeStores value)? getCollegeStores,
    TResult Function(_GetCategoryStores value)? getCategoryStores,
    TResult Function(_GetMoreCategoryStores value)? getMoreCategoryStores,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoresListEventCopyWith<$Res> {
  factory $StoresListEventCopyWith(
          StoresListEvent value, $Res Function(StoresListEvent) then) =
      _$StoresListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoresListEventCopyWithImpl<$Res>
    implements $StoresListEventCopyWith<$Res> {
  _$StoresListEventCopyWithImpl(this._value, this._then);

  final StoresListEvent _value;
  // ignore: unused_field
  final $Res Function(StoresListEvent) _then;
}

/// @nodoc
abstract class _$GetCollegeStoresCopyWith<$Res> {
  factory _$GetCollegeStoresCopyWith(
          _GetCollegeStores value, $Res Function(_GetCollegeStores) then) =
      __$GetCollegeStoresCopyWithImpl<$Res>;
  $Res call({String? userCollege});
}

/// @nodoc
class __$GetCollegeStoresCopyWithImpl<$Res>
    extends _$StoresListEventCopyWithImpl<$Res>
    implements _$GetCollegeStoresCopyWith<$Res> {
  __$GetCollegeStoresCopyWithImpl(
      _GetCollegeStores _value, $Res Function(_GetCollegeStores) _then)
      : super(_value, (v) => _then(v as _GetCollegeStores));

  @override
  _GetCollegeStores get _value => super._value as _GetCollegeStores;

  @override
  $Res call({
    Object? userCollege = freezed,
  }) {
    return _then(_GetCollegeStores(
      userCollege: userCollege == freezed
          ? _value.userCollege
          : userCollege // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GetCollegeStores implements _GetCollegeStores {
  const _$_GetCollegeStores({this.userCollege});

  @override
  final String? userCollege;

  @override
  String toString() {
    return 'StoresListEvent.getCollegeStores(userCollege: $userCollege)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetCollegeStores &&
            (identical(other.userCollege, userCollege) ||
                const DeepCollectionEquality()
                    .equals(other.userCollege, userCollege)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userCollege);

  @JsonKey(ignore: true)
  @override
  _$GetCollegeStoresCopyWith<_GetCollegeStores> get copyWith =>
      __$GetCollegeStoresCopyWithImpl<_GetCollegeStores>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userCollege) getCollegeStores,
    required TResult Function(String? category) getCategoryStores,
    required TResult Function(String? category) getMoreCategoryStores,
  }) {
    return getCollegeStores(userCollege);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userCollege)? getCollegeStores,
    TResult Function(String? category)? getCategoryStores,
    TResult Function(String? category)? getMoreCategoryStores,
    required TResult orElse(),
  }) {
    if (getCollegeStores != null) {
      return getCollegeStores(userCollege);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCollegeStores value) getCollegeStores,
    required TResult Function(_GetCategoryStores value) getCategoryStores,
    required TResult Function(_GetMoreCategoryStores value)
        getMoreCategoryStores,
  }) {
    return getCollegeStores(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCollegeStores value)? getCollegeStores,
    TResult Function(_GetCategoryStores value)? getCategoryStores,
    TResult Function(_GetMoreCategoryStores value)? getMoreCategoryStores,
    required TResult orElse(),
  }) {
    if (getCollegeStores != null) {
      return getCollegeStores(this);
    }
    return orElse();
  }
}

abstract class _GetCollegeStores implements StoresListEvent {
  const factory _GetCollegeStores({String? userCollege}) = _$_GetCollegeStores;

  String? get userCollege => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetCollegeStoresCopyWith<_GetCollegeStores> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetCategoryStoresCopyWith<$Res> {
  factory _$GetCategoryStoresCopyWith(
          _GetCategoryStores value, $Res Function(_GetCategoryStores) then) =
      __$GetCategoryStoresCopyWithImpl<$Res>;
  $Res call({String? category});
}

/// @nodoc
class __$GetCategoryStoresCopyWithImpl<$Res>
    extends _$StoresListEventCopyWithImpl<$Res>
    implements _$GetCategoryStoresCopyWith<$Res> {
  __$GetCategoryStoresCopyWithImpl(
      _GetCategoryStores _value, $Res Function(_GetCategoryStores) _then)
      : super(_value, (v) => _then(v as _GetCategoryStores));

  @override
  _GetCategoryStores get _value => super._value as _GetCategoryStores;

  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_GetCategoryStores(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GetCategoryStores implements _GetCategoryStores {
  const _$_GetCategoryStores({this.category});

  @override
  final String? category;

  @override
  String toString() {
    return 'StoresListEvent.getCategoryStores(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetCategoryStores &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(category);

  @JsonKey(ignore: true)
  @override
  _$GetCategoryStoresCopyWith<_GetCategoryStores> get copyWith =>
      __$GetCategoryStoresCopyWithImpl<_GetCategoryStores>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userCollege) getCollegeStores,
    required TResult Function(String? category) getCategoryStores,
    required TResult Function(String? category) getMoreCategoryStores,
  }) {
    return getCategoryStores(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userCollege)? getCollegeStores,
    TResult Function(String? category)? getCategoryStores,
    TResult Function(String? category)? getMoreCategoryStores,
    required TResult orElse(),
  }) {
    if (getCategoryStores != null) {
      return getCategoryStores(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCollegeStores value) getCollegeStores,
    required TResult Function(_GetCategoryStores value) getCategoryStores,
    required TResult Function(_GetMoreCategoryStores value)
        getMoreCategoryStores,
  }) {
    return getCategoryStores(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCollegeStores value)? getCollegeStores,
    TResult Function(_GetCategoryStores value)? getCategoryStores,
    TResult Function(_GetMoreCategoryStores value)? getMoreCategoryStores,
    required TResult orElse(),
  }) {
    if (getCategoryStores != null) {
      return getCategoryStores(this);
    }
    return orElse();
  }
}

abstract class _GetCategoryStores implements StoresListEvent {
  const factory _GetCategoryStores({String? category}) = _$_GetCategoryStores;

  String? get category => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetCategoryStoresCopyWith<_GetCategoryStores> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetMoreCategoryStoresCopyWith<$Res> {
  factory _$GetMoreCategoryStoresCopyWith(_GetMoreCategoryStores value,
          $Res Function(_GetMoreCategoryStores) then) =
      __$GetMoreCategoryStoresCopyWithImpl<$Res>;
  $Res call({String? category});
}

/// @nodoc
class __$GetMoreCategoryStoresCopyWithImpl<$Res>
    extends _$StoresListEventCopyWithImpl<$Res>
    implements _$GetMoreCategoryStoresCopyWith<$Res> {
  __$GetMoreCategoryStoresCopyWithImpl(_GetMoreCategoryStores _value,
      $Res Function(_GetMoreCategoryStores) _then)
      : super(_value, (v) => _then(v as _GetMoreCategoryStores));

  @override
  _GetMoreCategoryStores get _value => super._value as _GetMoreCategoryStores;

  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_GetMoreCategoryStores(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GetMoreCategoryStores implements _GetMoreCategoryStores {
  const _$_GetMoreCategoryStores({this.category});

  @override
  final String? category;

  @override
  String toString() {
    return 'StoresListEvent.getMoreCategoryStores(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetMoreCategoryStores &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(category);

  @JsonKey(ignore: true)
  @override
  _$GetMoreCategoryStoresCopyWith<_GetMoreCategoryStores> get copyWith =>
      __$GetMoreCategoryStoresCopyWithImpl<_GetMoreCategoryStores>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userCollege) getCollegeStores,
    required TResult Function(String? category) getCategoryStores,
    required TResult Function(String? category) getMoreCategoryStores,
  }) {
    return getMoreCategoryStores(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userCollege)? getCollegeStores,
    TResult Function(String? category)? getCategoryStores,
    TResult Function(String? category)? getMoreCategoryStores,
    required TResult orElse(),
  }) {
    if (getMoreCategoryStores != null) {
      return getMoreCategoryStores(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCollegeStores value) getCollegeStores,
    required TResult Function(_GetCategoryStores value) getCategoryStores,
    required TResult Function(_GetMoreCategoryStores value)
        getMoreCategoryStores,
  }) {
    return getMoreCategoryStores(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCollegeStores value)? getCollegeStores,
    TResult Function(_GetCategoryStores value)? getCategoryStores,
    TResult Function(_GetMoreCategoryStores value)? getMoreCategoryStores,
    required TResult orElse(),
  }) {
    if (getMoreCategoryStores != null) {
      return getMoreCategoryStores(this);
    }
    return orElse();
  }
}

abstract class _GetMoreCategoryStores implements StoresListEvent {
  const factory _GetMoreCategoryStores({String? category}) =
      _$_GetMoreCategoryStores;

  String? get category => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetMoreCategoryStoresCopyWith<_GetMoreCategoryStores> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$StoresListStateTearOff {
  const _$StoresListStateTearOff();

  _StoresListState call(
      {bool? isCategoryStoresLoading,
      bool? isAddingMoreCategoryStores,
      bool? hasMoreThisCategoryStores,
      bool? isCollegeStoresLoading,
      Option<FirebaseFailure>? collegeStoresListFailureOrSuccess,
      Option<FirebaseFailure>? categoryStoresFailureOrSuccess,
      List<StoreBasicDetailsModel>? collegeStoresList,
      Map<String, List<StoreBasicDetailsModel>>? categoryStoresMap}) {
    return _StoresListState(
      isCategoryStoresLoading: isCategoryStoresLoading,
      isAddingMoreCategoryStores: isAddingMoreCategoryStores,
      hasMoreThisCategoryStores: hasMoreThisCategoryStores,
      isCollegeStoresLoading: isCollegeStoresLoading,
      collegeStoresListFailureOrSuccess: collegeStoresListFailureOrSuccess,
      categoryStoresFailureOrSuccess: categoryStoresFailureOrSuccess,
      collegeStoresList: collegeStoresList,
      categoryStoresMap: categoryStoresMap,
    );
  }
}

/// @nodoc
const $StoresListState = _$StoresListStateTearOff();

/// @nodoc
mixin _$StoresListState {
  bool? get isCategoryStoresLoading => throw _privateConstructorUsedError;
  bool? get isAddingMoreCategoryStores => throw _privateConstructorUsedError;
  bool? get hasMoreThisCategoryStores => throw _privateConstructorUsedError;
  bool? get isCollegeStoresLoading => throw _privateConstructorUsedError;
  Option<FirebaseFailure>? get collegeStoresListFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Option<FirebaseFailure>? get categoryStoresFailureOrSuccess =>
      throw _privateConstructorUsedError;
  List<StoreBasicDetailsModel>? get collegeStoresList =>
      throw _privateConstructorUsedError; //category is the key here
  Map<String, List<StoreBasicDetailsModel>>? get categoryStoresMap =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StoresListStateCopyWith<StoresListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoresListStateCopyWith<$Res> {
  factory $StoresListStateCopyWith(
          StoresListState value, $Res Function(StoresListState) then) =
      _$StoresListStateCopyWithImpl<$Res>;
  $Res call(
      {bool? isCategoryStoresLoading,
      bool? isAddingMoreCategoryStores,
      bool? hasMoreThisCategoryStores,
      bool? isCollegeStoresLoading,
      Option<FirebaseFailure>? collegeStoresListFailureOrSuccess,
      Option<FirebaseFailure>? categoryStoresFailureOrSuccess,
      List<StoreBasicDetailsModel>? collegeStoresList,
      Map<String, List<StoreBasicDetailsModel>>? categoryStoresMap});
}

/// @nodoc
class _$StoresListStateCopyWithImpl<$Res>
    implements $StoresListStateCopyWith<$Res> {
  _$StoresListStateCopyWithImpl(this._value, this._then);

  final StoresListState _value;
  // ignore: unused_field
  final $Res Function(StoresListState) _then;

  @override
  $Res call({
    Object? isCategoryStoresLoading = freezed,
    Object? isAddingMoreCategoryStores = freezed,
    Object? hasMoreThisCategoryStores = freezed,
    Object? isCollegeStoresLoading = freezed,
    Object? collegeStoresListFailureOrSuccess = freezed,
    Object? categoryStoresFailureOrSuccess = freezed,
    Object? collegeStoresList = freezed,
    Object? categoryStoresMap = freezed,
  }) {
    return _then(_value.copyWith(
      isCategoryStoresLoading: isCategoryStoresLoading == freezed
          ? _value.isCategoryStoresLoading
          : isCategoryStoresLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAddingMoreCategoryStores: isAddingMoreCategoryStores == freezed
          ? _value.isAddingMoreCategoryStores
          : isAddingMoreCategoryStores // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasMoreThisCategoryStores: hasMoreThisCategoryStores == freezed
          ? _value.hasMoreThisCategoryStores
          : hasMoreThisCategoryStores // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCollegeStoresLoading: isCollegeStoresLoading == freezed
          ? _value.isCollegeStoresLoading
          : isCollegeStoresLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      collegeStoresListFailureOrSuccess: collegeStoresListFailureOrSuccess ==
              freezed
          ? _value.collegeStoresListFailureOrSuccess
          : collegeStoresListFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<FirebaseFailure>?,
      categoryStoresFailureOrSuccess: categoryStoresFailureOrSuccess == freezed
          ? _value.categoryStoresFailureOrSuccess
          : categoryStoresFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<FirebaseFailure>?,
      collegeStoresList: collegeStoresList == freezed
          ? _value.collegeStoresList
          : collegeStoresList // ignore: cast_nullable_to_non_nullable
              as List<StoreBasicDetailsModel>?,
      categoryStoresMap: categoryStoresMap == freezed
          ? _value.categoryStoresMap
          : categoryStoresMap // ignore: cast_nullable_to_non_nullable
              as Map<String, List<StoreBasicDetailsModel>>?,
    ));
  }
}

/// @nodoc
abstract class _$StoresListStateCopyWith<$Res>
    implements $StoresListStateCopyWith<$Res> {
  factory _$StoresListStateCopyWith(
          _StoresListState value, $Res Function(_StoresListState) then) =
      __$StoresListStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? isCategoryStoresLoading,
      bool? isAddingMoreCategoryStores,
      bool? hasMoreThisCategoryStores,
      bool? isCollegeStoresLoading,
      Option<FirebaseFailure>? collegeStoresListFailureOrSuccess,
      Option<FirebaseFailure>? categoryStoresFailureOrSuccess,
      List<StoreBasicDetailsModel>? collegeStoresList,
      Map<String, List<StoreBasicDetailsModel>>? categoryStoresMap});
}

/// @nodoc
class __$StoresListStateCopyWithImpl<$Res>
    extends _$StoresListStateCopyWithImpl<$Res>
    implements _$StoresListStateCopyWith<$Res> {
  __$StoresListStateCopyWithImpl(
      _StoresListState _value, $Res Function(_StoresListState) _then)
      : super(_value, (v) => _then(v as _StoresListState));

  @override
  _StoresListState get _value => super._value as _StoresListState;

  @override
  $Res call({
    Object? isCategoryStoresLoading = freezed,
    Object? isAddingMoreCategoryStores = freezed,
    Object? hasMoreThisCategoryStores = freezed,
    Object? isCollegeStoresLoading = freezed,
    Object? collegeStoresListFailureOrSuccess = freezed,
    Object? categoryStoresFailureOrSuccess = freezed,
    Object? collegeStoresList = freezed,
    Object? categoryStoresMap = freezed,
  }) {
    return _then(_StoresListState(
      isCategoryStoresLoading: isCategoryStoresLoading == freezed
          ? _value.isCategoryStoresLoading
          : isCategoryStoresLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAddingMoreCategoryStores: isAddingMoreCategoryStores == freezed
          ? _value.isAddingMoreCategoryStores
          : isAddingMoreCategoryStores // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasMoreThisCategoryStores: hasMoreThisCategoryStores == freezed
          ? _value.hasMoreThisCategoryStores
          : hasMoreThisCategoryStores // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCollegeStoresLoading: isCollegeStoresLoading == freezed
          ? _value.isCollegeStoresLoading
          : isCollegeStoresLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      collegeStoresListFailureOrSuccess: collegeStoresListFailureOrSuccess ==
              freezed
          ? _value.collegeStoresListFailureOrSuccess
          : collegeStoresListFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<FirebaseFailure>?,
      categoryStoresFailureOrSuccess: categoryStoresFailureOrSuccess == freezed
          ? _value.categoryStoresFailureOrSuccess
          : categoryStoresFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<FirebaseFailure>?,
      collegeStoresList: collegeStoresList == freezed
          ? _value.collegeStoresList
          : collegeStoresList // ignore: cast_nullable_to_non_nullable
              as List<StoreBasicDetailsModel>?,
      categoryStoresMap: categoryStoresMap == freezed
          ? _value.categoryStoresMap
          : categoryStoresMap // ignore: cast_nullable_to_non_nullable
              as Map<String, List<StoreBasicDetailsModel>>?,
    ));
  }
}

/// @nodoc

class _$_StoresListState implements _StoresListState {
  const _$_StoresListState(
      {this.isCategoryStoresLoading,
      this.isAddingMoreCategoryStores,
      this.hasMoreThisCategoryStores,
      this.isCollegeStoresLoading,
      this.collegeStoresListFailureOrSuccess,
      this.categoryStoresFailureOrSuccess,
      this.collegeStoresList,
      this.categoryStoresMap});

  @override
  final bool? isCategoryStoresLoading;
  @override
  final bool? isAddingMoreCategoryStores;
  @override
  final bool? hasMoreThisCategoryStores;
  @override
  final bool? isCollegeStoresLoading;
  @override
  final Option<FirebaseFailure>? collegeStoresListFailureOrSuccess;
  @override
  final Option<FirebaseFailure>? categoryStoresFailureOrSuccess;
  @override
  final List<StoreBasicDetailsModel>? collegeStoresList;
  @override //category is the key here
  final Map<String, List<StoreBasicDetailsModel>>? categoryStoresMap;

  @override
  String toString() {
    return 'StoresListState(isCategoryStoresLoading: $isCategoryStoresLoading, isAddingMoreCategoryStores: $isAddingMoreCategoryStores, hasMoreThisCategoryStores: $hasMoreThisCategoryStores, isCollegeStoresLoading: $isCollegeStoresLoading, collegeStoresListFailureOrSuccess: $collegeStoresListFailureOrSuccess, categoryStoresFailureOrSuccess: $categoryStoresFailureOrSuccess, collegeStoresList: $collegeStoresList, categoryStoresMap: $categoryStoresMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StoresListState &&
            (identical(other.isCategoryStoresLoading, isCategoryStoresLoading) ||
                const DeepCollectionEquality().equals(
                    other.isCategoryStoresLoading, isCategoryStoresLoading)) &&
            (identical(other.isAddingMoreCategoryStores, isAddingMoreCategoryStores) ||
                const DeepCollectionEquality().equals(
                    other.isAddingMoreCategoryStores,
                    isAddingMoreCategoryStores)) &&
            (identical(other.hasMoreThisCategoryStores, hasMoreThisCategoryStores) ||
                const DeepCollectionEquality().equals(
                    other.hasMoreThisCategoryStores,
                    hasMoreThisCategoryStores)) &&
            (identical(other.isCollegeStoresLoading, isCollegeStoresLoading) ||
                const DeepCollectionEquality().equals(
                    other.isCollegeStoresLoading, isCollegeStoresLoading)) &&
            (identical(other.collegeStoresListFailureOrSuccess,
                    collegeStoresListFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.collegeStoresListFailureOrSuccess,
                    collegeStoresListFailureOrSuccess)) &&
            (identical(other.categoryStoresFailureOrSuccess, categoryStoresFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.categoryStoresFailureOrSuccess,
                    categoryStoresFailureOrSuccess)) &&
            (identical(other.collegeStoresList, collegeStoresList) ||
                const DeepCollectionEquality()
                    .equals(other.collegeStoresList, collegeStoresList)) &&
            (identical(other.categoryStoresMap, categoryStoresMap) ||
                const DeepCollectionEquality().equals(other.categoryStoresMap, categoryStoresMap)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isCategoryStoresLoading) ^
      const DeepCollectionEquality().hash(isAddingMoreCategoryStores) ^
      const DeepCollectionEquality().hash(hasMoreThisCategoryStores) ^
      const DeepCollectionEquality().hash(isCollegeStoresLoading) ^
      const DeepCollectionEquality().hash(collegeStoresListFailureOrSuccess) ^
      const DeepCollectionEquality().hash(categoryStoresFailureOrSuccess) ^
      const DeepCollectionEquality().hash(collegeStoresList) ^
      const DeepCollectionEquality().hash(categoryStoresMap);

  @JsonKey(ignore: true)
  @override
  _$StoresListStateCopyWith<_StoresListState> get copyWith =>
      __$StoresListStateCopyWithImpl<_StoresListState>(this, _$identity);
}

abstract class _StoresListState implements StoresListState {
  const factory _StoresListState(
          {bool? isCategoryStoresLoading,
          bool? isAddingMoreCategoryStores,
          bool? hasMoreThisCategoryStores,
          bool? isCollegeStoresLoading,
          Option<FirebaseFailure>? collegeStoresListFailureOrSuccess,
          Option<FirebaseFailure>? categoryStoresFailureOrSuccess,
          List<StoreBasicDetailsModel>? collegeStoresList,
          Map<String, List<StoreBasicDetailsModel>>? categoryStoresMap}) =
      _$_StoresListState;

  @override
  bool? get isCategoryStoresLoading => throw _privateConstructorUsedError;
  @override
  bool? get isAddingMoreCategoryStores => throw _privateConstructorUsedError;
  @override
  bool? get hasMoreThisCategoryStores => throw _privateConstructorUsedError;
  @override
  bool? get isCollegeStoresLoading => throw _privateConstructorUsedError;
  @override
  Option<FirebaseFailure>? get collegeStoresListFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  Option<FirebaseFailure>? get categoryStoresFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  List<StoreBasicDetailsModel>? get collegeStoresList =>
      throw _privateConstructorUsedError;
  @override //category is the key here
  Map<String, List<StoreBasicDetailsModel>>? get categoryStoresMap =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StoresListStateCopyWith<_StoresListState> get copyWith =>
      throw _privateConstructorUsedError;
}
