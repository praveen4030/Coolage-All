// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sales_statistics_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SalesStatisticsEventTearOff {
  const _$SalesStatisticsEventTearOff();

  _GetInititalSalesStatistics getInititalSalesStatistics(String canteenId) {
    return _GetInititalSalesStatistics(
      canteenId,
    );
  }

  _GetMoreSalesStatistics getMoreSalesStatistics(
      String canteenId, DateTime openingDate) {
    return _GetMoreSalesStatistics(
      canteenId,
      openingDate,
    );
  }

  _GetOverallSalesStatistics getOverallSalesStatistics(String canteenId) {
    return _GetOverallSalesStatistics(
      canteenId,
    );
  }
}

/// @nodoc
const $SalesStatisticsEvent = _$SalesStatisticsEventTearOff();

/// @nodoc
mixin _$SalesStatisticsEvent {
  String get canteenId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String canteenId) getInititalSalesStatistics,
    required TResult Function(String canteenId, DateTime openingDate)
        getMoreSalesStatistics,
    required TResult Function(String canteenId) getOverallSalesStatistics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getInititalSalesStatistics,
    TResult Function(String canteenId, DateTime openingDate)?
        getMoreSalesStatistics,
    TResult Function(String canteenId)? getOverallSalesStatistics,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetInititalSalesStatistics value)
        getInititalSalesStatistics,
    required TResult Function(_GetMoreSalesStatistics value)
        getMoreSalesStatistics,
    required TResult Function(_GetOverallSalesStatistics value)
        getOverallSalesStatistics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetInititalSalesStatistics value)?
        getInititalSalesStatistics,
    TResult Function(_GetMoreSalesStatistics value)? getMoreSalesStatistics,
    TResult Function(_GetOverallSalesStatistics value)?
        getOverallSalesStatistics,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SalesStatisticsEventCopyWith<SalesStatisticsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesStatisticsEventCopyWith<$Res> {
  factory $SalesStatisticsEventCopyWith(SalesStatisticsEvent value,
          $Res Function(SalesStatisticsEvent) then) =
      _$SalesStatisticsEventCopyWithImpl<$Res>;
  $Res call({String canteenId});
}

/// @nodoc
class _$SalesStatisticsEventCopyWithImpl<$Res>
    implements $SalesStatisticsEventCopyWith<$Res> {
  _$SalesStatisticsEventCopyWithImpl(this._value, this._then);

  final SalesStatisticsEvent _value;
  // ignore: unused_field
  final $Res Function(SalesStatisticsEvent) _then;

  @override
  $Res call({
    Object? canteenId = freezed,
  }) {
    return _then(_value.copyWith(
      canteenId: canteenId == freezed
          ? _value.canteenId
          : canteenId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GetInititalSalesStatisticsCopyWith<$Res>
    implements $SalesStatisticsEventCopyWith<$Res> {
  factory _$GetInititalSalesStatisticsCopyWith(
          _GetInititalSalesStatistics value,
          $Res Function(_GetInititalSalesStatistics) then) =
      __$GetInititalSalesStatisticsCopyWithImpl<$Res>;
  @override
  $Res call({String canteenId});
}

/// @nodoc
class __$GetInititalSalesStatisticsCopyWithImpl<$Res>
    extends _$SalesStatisticsEventCopyWithImpl<$Res>
    implements _$GetInititalSalesStatisticsCopyWith<$Res> {
  __$GetInititalSalesStatisticsCopyWithImpl(_GetInititalSalesStatistics _value,
      $Res Function(_GetInititalSalesStatistics) _then)
      : super(_value, (v) => _then(v as _GetInititalSalesStatistics));

  @override
  _GetInititalSalesStatistics get _value =>
      super._value as _GetInititalSalesStatistics;

  @override
  $Res call({
    Object? canteenId = freezed,
  }) {
    return _then(_GetInititalSalesStatistics(
      canteenId == freezed
          ? _value.canteenId
          : canteenId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetInititalSalesStatistics implements _GetInititalSalesStatistics {
  const _$_GetInititalSalesStatistics(this.canteenId);

  @override
  final String canteenId;

  @override
  String toString() {
    return 'SalesStatisticsEvent.getInititalSalesStatistics(canteenId: $canteenId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetInititalSalesStatistics &&
            (identical(other.canteenId, canteenId) ||
                const DeepCollectionEquality()
                    .equals(other.canteenId, canteenId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(canteenId);

  @JsonKey(ignore: true)
  @override
  _$GetInititalSalesStatisticsCopyWith<_GetInititalSalesStatistics>
      get copyWith => __$GetInititalSalesStatisticsCopyWithImpl<
          _GetInititalSalesStatistics>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String canteenId) getInititalSalesStatistics,
    required TResult Function(String canteenId, DateTime openingDate)
        getMoreSalesStatistics,
    required TResult Function(String canteenId) getOverallSalesStatistics,
  }) {
    return getInititalSalesStatistics(canteenId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getInititalSalesStatistics,
    TResult Function(String canteenId, DateTime openingDate)?
        getMoreSalesStatistics,
    TResult Function(String canteenId)? getOverallSalesStatistics,
    required TResult orElse(),
  }) {
    if (getInititalSalesStatistics != null) {
      return getInititalSalesStatistics(canteenId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetInititalSalesStatistics value)
        getInititalSalesStatistics,
    required TResult Function(_GetMoreSalesStatistics value)
        getMoreSalesStatistics,
    required TResult Function(_GetOverallSalesStatistics value)
        getOverallSalesStatistics,
  }) {
    return getInititalSalesStatistics(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetInititalSalesStatistics value)?
        getInititalSalesStatistics,
    TResult Function(_GetMoreSalesStatistics value)? getMoreSalesStatistics,
    TResult Function(_GetOverallSalesStatistics value)?
        getOverallSalesStatistics,
    required TResult orElse(),
  }) {
    if (getInititalSalesStatistics != null) {
      return getInititalSalesStatistics(this);
    }
    return orElse();
  }
}

abstract class _GetInititalSalesStatistics implements SalesStatisticsEvent {
  const factory _GetInititalSalesStatistics(String canteenId) =
      _$_GetInititalSalesStatistics;

  @override
  String get canteenId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetInititalSalesStatisticsCopyWith<_GetInititalSalesStatistics>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetMoreSalesStatisticsCopyWith<$Res>
    implements $SalesStatisticsEventCopyWith<$Res> {
  factory _$GetMoreSalesStatisticsCopyWith(_GetMoreSalesStatistics value,
          $Res Function(_GetMoreSalesStatistics) then) =
      __$GetMoreSalesStatisticsCopyWithImpl<$Res>;
  @override
  $Res call({String canteenId, DateTime openingDate});
}

/// @nodoc
class __$GetMoreSalesStatisticsCopyWithImpl<$Res>
    extends _$SalesStatisticsEventCopyWithImpl<$Res>
    implements _$GetMoreSalesStatisticsCopyWith<$Res> {
  __$GetMoreSalesStatisticsCopyWithImpl(_GetMoreSalesStatistics _value,
      $Res Function(_GetMoreSalesStatistics) _then)
      : super(_value, (v) => _then(v as _GetMoreSalesStatistics));

  @override
  _GetMoreSalesStatistics get _value => super._value as _GetMoreSalesStatistics;

  @override
  $Res call({
    Object? canteenId = freezed,
    Object? openingDate = freezed,
  }) {
    return _then(_GetMoreSalesStatistics(
      canteenId == freezed
          ? _value.canteenId
          : canteenId // ignore: cast_nullable_to_non_nullable
              as String,
      openingDate == freezed
          ? _value.openingDate
          : openingDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_GetMoreSalesStatistics implements _GetMoreSalesStatistics {
  const _$_GetMoreSalesStatistics(this.canteenId, this.openingDate);

  @override
  final String canteenId;
  @override
  final DateTime openingDate;

  @override
  String toString() {
    return 'SalesStatisticsEvent.getMoreSalesStatistics(canteenId: $canteenId, openingDate: $openingDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetMoreSalesStatistics &&
            (identical(other.canteenId, canteenId) ||
                const DeepCollectionEquality()
                    .equals(other.canteenId, canteenId)) &&
            (identical(other.openingDate, openingDate) ||
                const DeepCollectionEquality()
                    .equals(other.openingDate, openingDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(canteenId) ^
      const DeepCollectionEquality().hash(openingDate);

  @JsonKey(ignore: true)
  @override
  _$GetMoreSalesStatisticsCopyWith<_GetMoreSalesStatistics> get copyWith =>
      __$GetMoreSalesStatisticsCopyWithImpl<_GetMoreSalesStatistics>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String canteenId) getInititalSalesStatistics,
    required TResult Function(String canteenId, DateTime openingDate)
        getMoreSalesStatistics,
    required TResult Function(String canteenId) getOverallSalesStatistics,
  }) {
    return getMoreSalesStatistics(canteenId, openingDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getInititalSalesStatistics,
    TResult Function(String canteenId, DateTime openingDate)?
        getMoreSalesStatistics,
    TResult Function(String canteenId)? getOverallSalesStatistics,
    required TResult orElse(),
  }) {
    if (getMoreSalesStatistics != null) {
      return getMoreSalesStatistics(canteenId, openingDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetInititalSalesStatistics value)
        getInititalSalesStatistics,
    required TResult Function(_GetMoreSalesStatistics value)
        getMoreSalesStatistics,
    required TResult Function(_GetOverallSalesStatistics value)
        getOverallSalesStatistics,
  }) {
    return getMoreSalesStatistics(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetInititalSalesStatistics value)?
        getInititalSalesStatistics,
    TResult Function(_GetMoreSalesStatistics value)? getMoreSalesStatistics,
    TResult Function(_GetOverallSalesStatistics value)?
        getOverallSalesStatistics,
    required TResult orElse(),
  }) {
    if (getMoreSalesStatistics != null) {
      return getMoreSalesStatistics(this);
    }
    return orElse();
  }
}

abstract class _GetMoreSalesStatistics implements SalesStatisticsEvent {
  const factory _GetMoreSalesStatistics(
      String canteenId, DateTime openingDate) = _$_GetMoreSalesStatistics;

  @override
  String get canteenId => throw _privateConstructorUsedError;
  DateTime get openingDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetMoreSalesStatisticsCopyWith<_GetMoreSalesStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetOverallSalesStatisticsCopyWith<$Res>
    implements $SalesStatisticsEventCopyWith<$Res> {
  factory _$GetOverallSalesStatisticsCopyWith(_GetOverallSalesStatistics value,
          $Res Function(_GetOverallSalesStatistics) then) =
      __$GetOverallSalesStatisticsCopyWithImpl<$Res>;
  @override
  $Res call({String canteenId});
}

/// @nodoc
class __$GetOverallSalesStatisticsCopyWithImpl<$Res>
    extends _$SalesStatisticsEventCopyWithImpl<$Res>
    implements _$GetOverallSalesStatisticsCopyWith<$Res> {
  __$GetOverallSalesStatisticsCopyWithImpl(_GetOverallSalesStatistics _value,
      $Res Function(_GetOverallSalesStatistics) _then)
      : super(_value, (v) => _then(v as _GetOverallSalesStatistics));

  @override
  _GetOverallSalesStatistics get _value =>
      super._value as _GetOverallSalesStatistics;

  @override
  $Res call({
    Object? canteenId = freezed,
  }) {
    return _then(_GetOverallSalesStatistics(
      canteenId == freezed
          ? _value.canteenId
          : canteenId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetOverallSalesStatistics implements _GetOverallSalesStatistics {
  const _$_GetOverallSalesStatistics(this.canteenId);

  @override
  final String canteenId;

  @override
  String toString() {
    return 'SalesStatisticsEvent.getOverallSalesStatistics(canteenId: $canteenId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetOverallSalesStatistics &&
            (identical(other.canteenId, canteenId) ||
                const DeepCollectionEquality()
                    .equals(other.canteenId, canteenId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(canteenId);

  @JsonKey(ignore: true)
  @override
  _$GetOverallSalesStatisticsCopyWith<_GetOverallSalesStatistics>
      get copyWith =>
          __$GetOverallSalesStatisticsCopyWithImpl<_GetOverallSalesStatistics>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String canteenId) getInititalSalesStatistics,
    required TResult Function(String canteenId, DateTime openingDate)
        getMoreSalesStatistics,
    required TResult Function(String canteenId) getOverallSalesStatistics,
  }) {
    return getOverallSalesStatistics(canteenId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getInititalSalesStatistics,
    TResult Function(String canteenId, DateTime openingDate)?
        getMoreSalesStatistics,
    TResult Function(String canteenId)? getOverallSalesStatistics,
    required TResult orElse(),
  }) {
    if (getOverallSalesStatistics != null) {
      return getOverallSalesStatistics(canteenId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetInititalSalesStatistics value)
        getInititalSalesStatistics,
    required TResult Function(_GetMoreSalesStatistics value)
        getMoreSalesStatistics,
    required TResult Function(_GetOverallSalesStatistics value)
        getOverallSalesStatistics,
  }) {
    return getOverallSalesStatistics(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetInititalSalesStatistics value)?
        getInititalSalesStatistics,
    TResult Function(_GetMoreSalesStatistics value)? getMoreSalesStatistics,
    TResult Function(_GetOverallSalesStatistics value)?
        getOverallSalesStatistics,
    required TResult orElse(),
  }) {
    if (getOverallSalesStatistics != null) {
      return getOverallSalesStatistics(this);
    }
    return orElse();
  }
}

abstract class _GetOverallSalesStatistics implements SalesStatisticsEvent {
  const factory _GetOverallSalesStatistics(String canteenId) =
      _$_GetOverallSalesStatistics;

  @override
  String get canteenId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetOverallSalesStatisticsCopyWith<_GetOverallSalesStatistics>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$SalesStatisticsStateTearOff {
  const _$SalesStatisticsStateTearOff();

  _SalesStatisticsState call(
      {bool? isLoading,
      bool? isMoreLoading,
      List<DailySaleModel>? dailySalesList}) {
    return _SalesStatisticsState(
      isLoading: isLoading,
      isMoreLoading: isMoreLoading,
      dailySalesList: dailySalesList,
    );
  }
}

/// @nodoc
const $SalesStatisticsState = _$SalesStatisticsStateTearOff();

/// @nodoc
mixin _$SalesStatisticsState {
  bool? get isLoading => throw _privateConstructorUsedError;
  bool? get isMoreLoading => throw _privateConstructorUsedError;
  List<DailySaleModel>? get dailySalesList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SalesStatisticsStateCopyWith<SalesStatisticsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesStatisticsStateCopyWith<$Res> {
  factory $SalesStatisticsStateCopyWith(SalesStatisticsState value,
          $Res Function(SalesStatisticsState) then) =
      _$SalesStatisticsStateCopyWithImpl<$Res>;
  $Res call(
      {bool? isLoading,
      bool? isMoreLoading,
      List<DailySaleModel>? dailySalesList});
}

/// @nodoc
class _$SalesStatisticsStateCopyWithImpl<$Res>
    implements $SalesStatisticsStateCopyWith<$Res> {
  _$SalesStatisticsStateCopyWithImpl(this._value, this._then);

  final SalesStatisticsState _value;
  // ignore: unused_field
  final $Res Function(SalesStatisticsState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isMoreLoading = freezed,
    Object? dailySalesList = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isMoreLoading: isMoreLoading == freezed
          ? _value.isMoreLoading
          : isMoreLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      dailySalesList: dailySalesList == freezed
          ? _value.dailySalesList
          : dailySalesList // ignore: cast_nullable_to_non_nullable
              as List<DailySaleModel>?,
    ));
  }
}

/// @nodoc
abstract class _$SalesStatisticsStateCopyWith<$Res>
    implements $SalesStatisticsStateCopyWith<$Res> {
  factory _$SalesStatisticsStateCopyWith(_SalesStatisticsState value,
          $Res Function(_SalesStatisticsState) then) =
      __$SalesStatisticsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? isLoading,
      bool? isMoreLoading,
      List<DailySaleModel>? dailySalesList});
}

/// @nodoc
class __$SalesStatisticsStateCopyWithImpl<$Res>
    extends _$SalesStatisticsStateCopyWithImpl<$Res>
    implements _$SalesStatisticsStateCopyWith<$Res> {
  __$SalesStatisticsStateCopyWithImpl(
      _SalesStatisticsState _value, $Res Function(_SalesStatisticsState) _then)
      : super(_value, (v) => _then(v as _SalesStatisticsState));

  @override
  _SalesStatisticsState get _value => super._value as _SalesStatisticsState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isMoreLoading = freezed,
    Object? dailySalesList = freezed,
  }) {
    return _then(_SalesStatisticsState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isMoreLoading: isMoreLoading == freezed
          ? _value.isMoreLoading
          : isMoreLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      dailySalesList: dailySalesList == freezed
          ? _value.dailySalesList
          : dailySalesList // ignore: cast_nullable_to_non_nullable
              as List<DailySaleModel>?,
    ));
  }
}

/// @nodoc

class _$_SalesStatisticsState implements _SalesStatisticsState {
  const _$_SalesStatisticsState(
      {this.isLoading, this.isMoreLoading, this.dailySalesList});

  @override
  final bool? isLoading;
  @override
  final bool? isMoreLoading;
  @override
  final List<DailySaleModel>? dailySalesList;

  @override
  String toString() {
    return 'SalesStatisticsState(isLoading: $isLoading, isMoreLoading: $isMoreLoading, dailySalesList: $dailySalesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SalesStatisticsState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isMoreLoading, isMoreLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isMoreLoading, isMoreLoading)) &&
            (identical(other.dailySalesList, dailySalesList) ||
                const DeepCollectionEquality()
                    .equals(other.dailySalesList, dailySalesList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isMoreLoading) ^
      const DeepCollectionEquality().hash(dailySalesList);

  @JsonKey(ignore: true)
  @override
  _$SalesStatisticsStateCopyWith<_SalesStatisticsState> get copyWith =>
      __$SalesStatisticsStateCopyWithImpl<_SalesStatisticsState>(
          this, _$identity);
}

abstract class _SalesStatisticsState implements SalesStatisticsState {
  const factory _SalesStatisticsState(
      {bool? isLoading,
      bool? isMoreLoading,
      List<DailySaleModel>? dailySalesList}) = _$_SalesStatisticsState;

  @override
  bool? get isLoading => throw _privateConstructorUsedError;
  @override
  bool? get isMoreLoading => throw _privateConstructorUsedError;
  @override
  List<DailySaleModel>? get dailySalesList =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SalesStatisticsStateCopyWith<_SalesStatisticsState> get copyWith =>
      throw _privateConstructorUsedError;
}
