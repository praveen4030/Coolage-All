// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'refurbished_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RefurbishedEventTearOff {
  const _$RefurbishedEventTearOff();

  _GetRefurbishedItems getRefurbishedItems({String? college}) {
    return _GetRefurbishedItems(
      college: college,
    );
  }

  _GetMoreRefurbishedItems getMoreRefurbishedItems({String? college}) {
    return _GetMoreRefurbishedItems(
      college: college,
    );
  }

  _AddRefurbishedItem addRefurbishedItem(
      {String? college, RefurbishedModel? refurbishedModel}) {
    return _AddRefurbishedItem(
      college: college,
      refurbishedModel: refurbishedModel,
    );
  }
}

/// @nodoc
const $RefurbishedEvent = _$RefurbishedEventTearOff();

/// @nodoc
mixin _$RefurbishedEvent {
  String? get college => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? college) getRefurbishedItems,
    required TResult Function(String? college) getMoreRefurbishedItems,
    required TResult Function(
            String? college, RefurbishedModel? refurbishedModel)
        addRefurbishedItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? college)? getRefurbishedItems,
    TResult Function(String? college)? getMoreRefurbishedItems,
    TResult Function(String? college, RefurbishedModel? refurbishedModel)?
        addRefurbishedItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRefurbishedItems value) getRefurbishedItems,
    required TResult Function(_GetMoreRefurbishedItems value)
        getMoreRefurbishedItems,
    required TResult Function(_AddRefurbishedItem value) addRefurbishedItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRefurbishedItems value)? getRefurbishedItems,
    TResult Function(_GetMoreRefurbishedItems value)? getMoreRefurbishedItems,
    TResult Function(_AddRefurbishedItem value)? addRefurbishedItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RefurbishedEventCopyWith<RefurbishedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefurbishedEventCopyWith<$Res> {
  factory $RefurbishedEventCopyWith(
          RefurbishedEvent value, $Res Function(RefurbishedEvent) then) =
      _$RefurbishedEventCopyWithImpl<$Res>;
  $Res call({String? college});
}

/// @nodoc
class _$RefurbishedEventCopyWithImpl<$Res>
    implements $RefurbishedEventCopyWith<$Res> {
  _$RefurbishedEventCopyWithImpl(this._value, this._then);

  final RefurbishedEvent _value;
  // ignore: unused_field
  final $Res Function(RefurbishedEvent) _then;

  @override
  $Res call({
    Object? college = freezed,
  }) {
    return _then(_value.copyWith(
      college: college == freezed
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GetRefurbishedItemsCopyWith<$Res>
    implements $RefurbishedEventCopyWith<$Res> {
  factory _$GetRefurbishedItemsCopyWith(_GetRefurbishedItems value,
          $Res Function(_GetRefurbishedItems) then) =
      __$GetRefurbishedItemsCopyWithImpl<$Res>;
  @override
  $Res call({String? college});
}

/// @nodoc
class __$GetRefurbishedItemsCopyWithImpl<$Res>
    extends _$RefurbishedEventCopyWithImpl<$Res>
    implements _$GetRefurbishedItemsCopyWith<$Res> {
  __$GetRefurbishedItemsCopyWithImpl(
      _GetRefurbishedItems _value, $Res Function(_GetRefurbishedItems) _then)
      : super(_value, (v) => _then(v as _GetRefurbishedItems));

  @override
  _GetRefurbishedItems get _value => super._value as _GetRefurbishedItems;

  @override
  $Res call({
    Object? college = freezed,
  }) {
    return _then(_GetRefurbishedItems(
      college: college == freezed
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GetRefurbishedItems implements _GetRefurbishedItems {
  const _$_GetRefurbishedItems({this.college});

  @override
  final String? college;

  @override
  String toString() {
    return 'RefurbishedEvent.getRefurbishedItems(college: $college)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetRefurbishedItems &&
            (identical(other.college, college) ||
                const DeepCollectionEquality().equals(other.college, college)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(college);

  @JsonKey(ignore: true)
  @override
  _$GetRefurbishedItemsCopyWith<_GetRefurbishedItems> get copyWith =>
      __$GetRefurbishedItemsCopyWithImpl<_GetRefurbishedItems>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? college) getRefurbishedItems,
    required TResult Function(String? college) getMoreRefurbishedItems,
    required TResult Function(
            String? college, RefurbishedModel? refurbishedModel)
        addRefurbishedItem,
  }) {
    return getRefurbishedItems(college);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? college)? getRefurbishedItems,
    TResult Function(String? college)? getMoreRefurbishedItems,
    TResult Function(String? college, RefurbishedModel? refurbishedModel)?
        addRefurbishedItem,
    required TResult orElse(),
  }) {
    if (getRefurbishedItems != null) {
      return getRefurbishedItems(college);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRefurbishedItems value) getRefurbishedItems,
    required TResult Function(_GetMoreRefurbishedItems value)
        getMoreRefurbishedItems,
    required TResult Function(_AddRefurbishedItem value) addRefurbishedItem,
  }) {
    return getRefurbishedItems(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRefurbishedItems value)? getRefurbishedItems,
    TResult Function(_GetMoreRefurbishedItems value)? getMoreRefurbishedItems,
    TResult Function(_AddRefurbishedItem value)? addRefurbishedItem,
    required TResult orElse(),
  }) {
    if (getRefurbishedItems != null) {
      return getRefurbishedItems(this);
    }
    return orElse();
  }
}

abstract class _GetRefurbishedItems implements RefurbishedEvent {
  const factory _GetRefurbishedItems({String? college}) =
      _$_GetRefurbishedItems;

  @override
  String? get college => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetRefurbishedItemsCopyWith<_GetRefurbishedItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetMoreRefurbishedItemsCopyWith<$Res>
    implements $RefurbishedEventCopyWith<$Res> {
  factory _$GetMoreRefurbishedItemsCopyWith(_GetMoreRefurbishedItems value,
          $Res Function(_GetMoreRefurbishedItems) then) =
      __$GetMoreRefurbishedItemsCopyWithImpl<$Res>;
  @override
  $Res call({String? college});
}

/// @nodoc
class __$GetMoreRefurbishedItemsCopyWithImpl<$Res>
    extends _$RefurbishedEventCopyWithImpl<$Res>
    implements _$GetMoreRefurbishedItemsCopyWith<$Res> {
  __$GetMoreRefurbishedItemsCopyWithImpl(_GetMoreRefurbishedItems _value,
      $Res Function(_GetMoreRefurbishedItems) _then)
      : super(_value, (v) => _then(v as _GetMoreRefurbishedItems));

  @override
  _GetMoreRefurbishedItems get _value =>
      super._value as _GetMoreRefurbishedItems;

  @override
  $Res call({
    Object? college = freezed,
  }) {
    return _then(_GetMoreRefurbishedItems(
      college: college == freezed
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GetMoreRefurbishedItems implements _GetMoreRefurbishedItems {
  const _$_GetMoreRefurbishedItems({this.college});

  @override
  final String? college;

  @override
  String toString() {
    return 'RefurbishedEvent.getMoreRefurbishedItems(college: $college)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetMoreRefurbishedItems &&
            (identical(other.college, college) ||
                const DeepCollectionEquality().equals(other.college, college)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(college);

  @JsonKey(ignore: true)
  @override
  _$GetMoreRefurbishedItemsCopyWith<_GetMoreRefurbishedItems> get copyWith =>
      __$GetMoreRefurbishedItemsCopyWithImpl<_GetMoreRefurbishedItems>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? college) getRefurbishedItems,
    required TResult Function(String? college) getMoreRefurbishedItems,
    required TResult Function(
            String? college, RefurbishedModel? refurbishedModel)
        addRefurbishedItem,
  }) {
    return getMoreRefurbishedItems(college);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? college)? getRefurbishedItems,
    TResult Function(String? college)? getMoreRefurbishedItems,
    TResult Function(String? college, RefurbishedModel? refurbishedModel)?
        addRefurbishedItem,
    required TResult orElse(),
  }) {
    if (getMoreRefurbishedItems != null) {
      return getMoreRefurbishedItems(college);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRefurbishedItems value) getRefurbishedItems,
    required TResult Function(_GetMoreRefurbishedItems value)
        getMoreRefurbishedItems,
    required TResult Function(_AddRefurbishedItem value) addRefurbishedItem,
  }) {
    return getMoreRefurbishedItems(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRefurbishedItems value)? getRefurbishedItems,
    TResult Function(_GetMoreRefurbishedItems value)? getMoreRefurbishedItems,
    TResult Function(_AddRefurbishedItem value)? addRefurbishedItem,
    required TResult orElse(),
  }) {
    if (getMoreRefurbishedItems != null) {
      return getMoreRefurbishedItems(this);
    }
    return orElse();
  }
}

abstract class _GetMoreRefurbishedItems implements RefurbishedEvent {
  const factory _GetMoreRefurbishedItems({String? college}) =
      _$_GetMoreRefurbishedItems;

  @override
  String? get college => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetMoreRefurbishedItemsCopyWith<_GetMoreRefurbishedItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddRefurbishedItemCopyWith<$Res>
    implements $RefurbishedEventCopyWith<$Res> {
  factory _$AddRefurbishedItemCopyWith(
          _AddRefurbishedItem value, $Res Function(_AddRefurbishedItem) then) =
      __$AddRefurbishedItemCopyWithImpl<$Res>;
  @override
  $Res call({String? college, RefurbishedModel? refurbishedModel});
}

/// @nodoc
class __$AddRefurbishedItemCopyWithImpl<$Res>
    extends _$RefurbishedEventCopyWithImpl<$Res>
    implements _$AddRefurbishedItemCopyWith<$Res> {
  __$AddRefurbishedItemCopyWithImpl(
      _AddRefurbishedItem _value, $Res Function(_AddRefurbishedItem) _then)
      : super(_value, (v) => _then(v as _AddRefurbishedItem));

  @override
  _AddRefurbishedItem get _value => super._value as _AddRefurbishedItem;

  @override
  $Res call({
    Object? college = freezed,
    Object? refurbishedModel = freezed,
  }) {
    return _then(_AddRefurbishedItem(
      college: college == freezed
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String?,
      refurbishedModel: refurbishedModel == freezed
          ? _value.refurbishedModel
          : refurbishedModel // ignore: cast_nullable_to_non_nullable
              as RefurbishedModel?,
    ));
  }
}

/// @nodoc

class _$_AddRefurbishedItem implements _AddRefurbishedItem {
  const _$_AddRefurbishedItem({this.college, this.refurbishedModel});

  @override
  final String? college;
  @override
  final RefurbishedModel? refurbishedModel;

  @override
  String toString() {
    return 'RefurbishedEvent.addRefurbishedItem(college: $college, refurbishedModel: $refurbishedModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddRefurbishedItem &&
            (identical(other.college, college) ||
                const DeepCollectionEquality()
                    .equals(other.college, college)) &&
            (identical(other.refurbishedModel, refurbishedModel) ||
                const DeepCollectionEquality()
                    .equals(other.refurbishedModel, refurbishedModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(college) ^
      const DeepCollectionEquality().hash(refurbishedModel);

  @JsonKey(ignore: true)
  @override
  _$AddRefurbishedItemCopyWith<_AddRefurbishedItem> get copyWith =>
      __$AddRefurbishedItemCopyWithImpl<_AddRefurbishedItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? college) getRefurbishedItems,
    required TResult Function(String? college) getMoreRefurbishedItems,
    required TResult Function(
            String? college, RefurbishedModel? refurbishedModel)
        addRefurbishedItem,
  }) {
    return addRefurbishedItem(college, refurbishedModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? college)? getRefurbishedItems,
    TResult Function(String? college)? getMoreRefurbishedItems,
    TResult Function(String? college, RefurbishedModel? refurbishedModel)?
        addRefurbishedItem,
    required TResult orElse(),
  }) {
    if (addRefurbishedItem != null) {
      return addRefurbishedItem(college, refurbishedModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRefurbishedItems value) getRefurbishedItems,
    required TResult Function(_GetMoreRefurbishedItems value)
        getMoreRefurbishedItems,
    required TResult Function(_AddRefurbishedItem value) addRefurbishedItem,
  }) {
    return addRefurbishedItem(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRefurbishedItems value)? getRefurbishedItems,
    TResult Function(_GetMoreRefurbishedItems value)? getMoreRefurbishedItems,
    TResult Function(_AddRefurbishedItem value)? addRefurbishedItem,
    required TResult orElse(),
  }) {
    if (addRefurbishedItem != null) {
      return addRefurbishedItem(this);
    }
    return orElse();
  }
}

abstract class _AddRefurbishedItem implements RefurbishedEvent {
  const factory _AddRefurbishedItem(
      {String? college,
      RefurbishedModel? refurbishedModel}) = _$_AddRefurbishedItem;

  @override
  String? get college => throw _privateConstructorUsedError;
  RefurbishedModel? get refurbishedModel => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddRefurbishedItemCopyWith<_AddRefurbishedItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RefurbishedStateTearOff {
  const _$RefurbishedStateTearOff();

  _RefurbishedState call(
      {bool? hasMore,
      bool? isLoading,
      bool? isAddingMoreLoading,
      Option<FirebaseFailure>? failureOrSuccessOption,
      List<RefurbishedModel>? refurbishedItemsList}) {
    return _RefurbishedState(
      hasMore: hasMore,
      isLoading: isLoading,
      isAddingMoreLoading: isAddingMoreLoading,
      failureOrSuccessOption: failureOrSuccessOption,
      refurbishedItemsList: refurbishedItemsList,
    );
  }
}

/// @nodoc
const $RefurbishedState = _$RefurbishedStateTearOff();

/// @nodoc
mixin _$RefurbishedState {
  bool? get hasMore => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  bool? get isAddingMoreLoading => throw _privateConstructorUsedError;
  Option<FirebaseFailure>? get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  List<RefurbishedModel>? get refurbishedItemsList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RefurbishedStateCopyWith<RefurbishedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefurbishedStateCopyWith<$Res> {
  factory $RefurbishedStateCopyWith(
          RefurbishedState value, $Res Function(RefurbishedState) then) =
      _$RefurbishedStateCopyWithImpl<$Res>;
  $Res call(
      {bool? hasMore,
      bool? isLoading,
      bool? isAddingMoreLoading,
      Option<FirebaseFailure>? failureOrSuccessOption,
      List<RefurbishedModel>? refurbishedItemsList});
}

/// @nodoc
class _$RefurbishedStateCopyWithImpl<$Res>
    implements $RefurbishedStateCopyWith<$Res> {
  _$RefurbishedStateCopyWithImpl(this._value, this._then);

  final RefurbishedState _value;
  // ignore: unused_field
  final $Res Function(RefurbishedState) _then;

  @override
  $Res call({
    Object? hasMore = freezed,
    Object? isLoading = freezed,
    Object? isAddingMoreLoading = freezed,
    Object? failureOrSuccessOption = freezed,
    Object? refurbishedItemsList = freezed,
  }) {
    return _then(_value.copyWith(
      hasMore: hasMore == freezed
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAddingMoreLoading: isAddingMoreLoading == freezed
          ? _value.isAddingMoreLoading
          : isAddingMoreLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<FirebaseFailure>?,
      refurbishedItemsList: refurbishedItemsList == freezed
          ? _value.refurbishedItemsList
          : refurbishedItemsList // ignore: cast_nullable_to_non_nullable
              as List<RefurbishedModel>?,
    ));
  }
}

/// @nodoc
abstract class _$RefurbishedStateCopyWith<$Res>
    implements $RefurbishedStateCopyWith<$Res> {
  factory _$RefurbishedStateCopyWith(
          _RefurbishedState value, $Res Function(_RefurbishedState) then) =
      __$RefurbishedStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? hasMore,
      bool? isLoading,
      bool? isAddingMoreLoading,
      Option<FirebaseFailure>? failureOrSuccessOption,
      List<RefurbishedModel>? refurbishedItemsList});
}

/// @nodoc
class __$RefurbishedStateCopyWithImpl<$Res>
    extends _$RefurbishedStateCopyWithImpl<$Res>
    implements _$RefurbishedStateCopyWith<$Res> {
  __$RefurbishedStateCopyWithImpl(
      _RefurbishedState _value, $Res Function(_RefurbishedState) _then)
      : super(_value, (v) => _then(v as _RefurbishedState));

  @override
  _RefurbishedState get _value => super._value as _RefurbishedState;

  @override
  $Res call({
    Object? hasMore = freezed,
    Object? isLoading = freezed,
    Object? isAddingMoreLoading = freezed,
    Object? failureOrSuccessOption = freezed,
    Object? refurbishedItemsList = freezed,
  }) {
    return _then(_RefurbishedState(
      hasMore: hasMore == freezed
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAddingMoreLoading: isAddingMoreLoading == freezed
          ? _value.isAddingMoreLoading
          : isAddingMoreLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<FirebaseFailure>?,
      refurbishedItemsList: refurbishedItemsList == freezed
          ? _value.refurbishedItemsList
          : refurbishedItemsList // ignore: cast_nullable_to_non_nullable
              as List<RefurbishedModel>?,
    ));
  }
}

/// @nodoc

class _$_RefurbishedState implements _RefurbishedState {
  const _$_RefurbishedState(
      {this.hasMore,
      this.isLoading,
      this.isAddingMoreLoading,
      this.failureOrSuccessOption,
      this.refurbishedItemsList});

  @override
  final bool? hasMore;
  @override
  final bool? isLoading;
  @override
  final bool? isAddingMoreLoading;
  @override
  final Option<FirebaseFailure>? failureOrSuccessOption;
  @override
  final List<RefurbishedModel>? refurbishedItemsList;

  @override
  String toString() {
    return 'RefurbishedState(hasMore: $hasMore, isLoading: $isLoading, isAddingMoreLoading: $isAddingMoreLoading, failureOrSuccessOption: $failureOrSuccessOption, refurbishedItemsList: $refurbishedItemsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RefurbishedState &&
            (identical(other.hasMore, hasMore) ||
                const DeepCollectionEquality()
                    .equals(other.hasMore, hasMore)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isAddingMoreLoading, isAddingMoreLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isAddingMoreLoading, isAddingMoreLoading)) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.failureOrSuccessOption, failureOrSuccessOption)) &&
            (identical(other.refurbishedItemsList, refurbishedItemsList) ||
                const DeepCollectionEquality()
                    .equals(other.refurbishedItemsList, refurbishedItemsList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hasMore) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isAddingMoreLoading) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption) ^
      const DeepCollectionEquality().hash(refurbishedItemsList);

  @JsonKey(ignore: true)
  @override
  _$RefurbishedStateCopyWith<_RefurbishedState> get copyWith =>
      __$RefurbishedStateCopyWithImpl<_RefurbishedState>(this, _$identity);
}

abstract class _RefurbishedState implements RefurbishedState {
  const factory _RefurbishedState(
      {bool? hasMore,
      bool? isLoading,
      bool? isAddingMoreLoading,
      Option<FirebaseFailure>? failureOrSuccessOption,
      List<RefurbishedModel>? refurbishedItemsList}) = _$_RefurbishedState;

  @override
  bool? get hasMore => throw _privateConstructorUsedError;
  @override
  bool? get isLoading => throw _privateConstructorUsedError;
  @override
  bool? get isAddingMoreLoading => throw _privateConstructorUsedError;
  @override
  Option<FirebaseFailure>? get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  List<RefurbishedModel>? get refurbishedItemsList =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RefurbishedStateCopyWith<_RefurbishedState> get copyWith =>
      throw _privateConstructorUsedError;
}
