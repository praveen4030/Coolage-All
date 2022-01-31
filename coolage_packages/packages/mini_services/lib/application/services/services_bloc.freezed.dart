// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'services_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ServicesEventTearOff {
  const _$ServicesEventTearOff();

  _GetServiceProviders getServiceProviders(
      {String? userCollege, String? category}) {
    return _GetServiceProviders(
      userCollege: userCollege,
      category: category,
    );
  }

  _AddServiceProvider addServiceProvider(
      {String? userCollege,
      ServiceProviderModel? serviceProviderModel,
      File? file,
      int? index}) {
    return _AddServiceProvider(
      userCollege: userCollege,
      serviceProviderModel: serviceProviderModel,
      file: file,
      index: index,
    );
  }

  _DeleteServiceProvider deleteServiceProvider(
      {String? userCollege,
      ServiceProviderModel? serviceProviderModel,
      int? index}) {
    return _DeleteServiceProvider(
      userCollege: userCollege,
      serviceProviderModel: serviceProviderModel,
      index: index,
    );
  }
}

/// @nodoc
const $ServicesEvent = _$ServicesEventTearOff();

/// @nodoc
mixin _$ServicesEvent {
  String? get userCollege => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userCollege, String? category)
        getServiceProviders,
    required TResult Function(String? userCollege,
            ServiceProviderModel? serviceProviderModel, File? file, int? index)
        addServiceProvider,
    required TResult Function(String? userCollege,
            ServiceProviderModel? serviceProviderModel, int? index)
        deleteServiceProvider,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userCollege, String? category)?
        getServiceProviders,
    TResult Function(String? userCollege,
            ServiceProviderModel? serviceProviderModel, File? file, int? index)?
        addServiceProvider,
    TResult Function(String? userCollege,
            ServiceProviderModel? serviceProviderModel, int? index)?
        deleteServiceProvider,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetServiceProviders value) getServiceProviders,
    required TResult Function(_AddServiceProvider value) addServiceProvider,
    required TResult Function(_DeleteServiceProvider value)
        deleteServiceProvider,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetServiceProviders value)? getServiceProviders,
    TResult Function(_AddServiceProvider value)? addServiceProvider,
    TResult Function(_DeleteServiceProvider value)? deleteServiceProvider,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ServicesEventCopyWith<ServicesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServicesEventCopyWith<$Res> {
  factory $ServicesEventCopyWith(
          ServicesEvent value, $Res Function(ServicesEvent) then) =
      _$ServicesEventCopyWithImpl<$Res>;
  $Res call({String? userCollege});
}

/// @nodoc
class _$ServicesEventCopyWithImpl<$Res>
    implements $ServicesEventCopyWith<$Res> {
  _$ServicesEventCopyWithImpl(this._value, this._then);

  final ServicesEvent _value;
  // ignore: unused_field
  final $Res Function(ServicesEvent) _then;

  @override
  $Res call({
    Object? userCollege = freezed,
  }) {
    return _then(_value.copyWith(
      userCollege: userCollege == freezed
          ? _value.userCollege
          : userCollege // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GetServiceProvidersCopyWith<$Res>
    implements $ServicesEventCopyWith<$Res> {
  factory _$GetServiceProvidersCopyWith(_GetServiceProviders value,
          $Res Function(_GetServiceProviders) then) =
      __$GetServiceProvidersCopyWithImpl<$Res>;
  @override
  $Res call({String? userCollege, String? category});
}

/// @nodoc
class __$GetServiceProvidersCopyWithImpl<$Res>
    extends _$ServicesEventCopyWithImpl<$Res>
    implements _$GetServiceProvidersCopyWith<$Res> {
  __$GetServiceProvidersCopyWithImpl(
      _GetServiceProviders _value, $Res Function(_GetServiceProviders) _then)
      : super(_value, (v) => _then(v as _GetServiceProviders));

  @override
  _GetServiceProviders get _value => super._value as _GetServiceProviders;

  @override
  $Res call({
    Object? userCollege = freezed,
    Object? category = freezed,
  }) {
    return _then(_GetServiceProviders(
      userCollege: userCollege == freezed
          ? _value.userCollege
          : userCollege // ignore: cast_nullable_to_non_nullable
              as String?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GetServiceProviders implements _GetServiceProviders {
  const _$_GetServiceProviders({this.userCollege, this.category});

  @override
  final String? userCollege;
  @override
  final String? category;

  @override
  String toString() {
    return 'ServicesEvent.getServiceProviders(userCollege: $userCollege, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetServiceProviders &&
            (identical(other.userCollege, userCollege) ||
                const DeepCollectionEquality()
                    .equals(other.userCollege, userCollege)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userCollege) ^
      const DeepCollectionEquality().hash(category);

  @JsonKey(ignore: true)
  @override
  _$GetServiceProvidersCopyWith<_GetServiceProviders> get copyWith =>
      __$GetServiceProvidersCopyWithImpl<_GetServiceProviders>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userCollege, String? category)
        getServiceProviders,
    required TResult Function(String? userCollege,
            ServiceProviderModel? serviceProviderModel, File? file, int? index)
        addServiceProvider,
    required TResult Function(String? userCollege,
            ServiceProviderModel? serviceProviderModel, int? index)
        deleteServiceProvider,
  }) {
    return getServiceProviders(userCollege, category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userCollege, String? category)?
        getServiceProviders,
    TResult Function(String? userCollege,
            ServiceProviderModel? serviceProviderModel, File? file, int? index)?
        addServiceProvider,
    TResult Function(String? userCollege,
            ServiceProviderModel? serviceProviderModel, int? index)?
        deleteServiceProvider,
    required TResult orElse(),
  }) {
    if (getServiceProviders != null) {
      return getServiceProviders(userCollege, category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetServiceProviders value) getServiceProviders,
    required TResult Function(_AddServiceProvider value) addServiceProvider,
    required TResult Function(_DeleteServiceProvider value)
        deleteServiceProvider,
  }) {
    return getServiceProviders(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetServiceProviders value)? getServiceProviders,
    TResult Function(_AddServiceProvider value)? addServiceProvider,
    TResult Function(_DeleteServiceProvider value)? deleteServiceProvider,
    required TResult orElse(),
  }) {
    if (getServiceProviders != null) {
      return getServiceProviders(this);
    }
    return orElse();
  }
}

abstract class _GetServiceProviders implements ServicesEvent {
  const factory _GetServiceProviders({String? userCollege, String? category}) =
      _$_GetServiceProviders;

  @override
  String? get userCollege => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetServiceProvidersCopyWith<_GetServiceProviders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddServiceProviderCopyWith<$Res>
    implements $ServicesEventCopyWith<$Res> {
  factory _$AddServiceProviderCopyWith(
          _AddServiceProvider value, $Res Function(_AddServiceProvider) then) =
      __$AddServiceProviderCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? userCollege,
      ServiceProviderModel? serviceProviderModel,
      File? file,
      int? index});
}

/// @nodoc
class __$AddServiceProviderCopyWithImpl<$Res>
    extends _$ServicesEventCopyWithImpl<$Res>
    implements _$AddServiceProviderCopyWith<$Res> {
  __$AddServiceProviderCopyWithImpl(
      _AddServiceProvider _value, $Res Function(_AddServiceProvider) _then)
      : super(_value, (v) => _then(v as _AddServiceProvider));

  @override
  _AddServiceProvider get _value => super._value as _AddServiceProvider;

  @override
  $Res call({
    Object? userCollege = freezed,
    Object? serviceProviderModel = freezed,
    Object? file = freezed,
    Object? index = freezed,
  }) {
    return _then(_AddServiceProvider(
      userCollege: userCollege == freezed
          ? _value.userCollege
          : userCollege // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceProviderModel: serviceProviderModel == freezed
          ? _value.serviceProviderModel
          : serviceProviderModel // ignore: cast_nullable_to_non_nullable
              as ServiceProviderModel?,
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_AddServiceProvider implements _AddServiceProvider {
  const _$_AddServiceProvider(
      {this.userCollege, this.serviceProviderModel, this.file, this.index});

  @override
  final String? userCollege;
  @override
  final ServiceProviderModel? serviceProviderModel;
  @override
  final File? file;
  @override
  final int? index;

  @override
  String toString() {
    return 'ServicesEvent.addServiceProvider(userCollege: $userCollege, serviceProviderModel: $serviceProviderModel, file: $file, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddServiceProvider &&
            (identical(other.userCollege, userCollege) ||
                const DeepCollectionEquality()
                    .equals(other.userCollege, userCollege)) &&
            (identical(other.serviceProviderModel, serviceProviderModel) ||
                const DeepCollectionEquality().equals(
                    other.serviceProviderModel, serviceProviderModel)) &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userCollege) ^
      const DeepCollectionEquality().hash(serviceProviderModel) ^
      const DeepCollectionEquality().hash(file) ^
      const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$AddServiceProviderCopyWith<_AddServiceProvider> get copyWith =>
      __$AddServiceProviderCopyWithImpl<_AddServiceProvider>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userCollege, String? category)
        getServiceProviders,
    required TResult Function(String? userCollege,
            ServiceProviderModel? serviceProviderModel, File? file, int? index)
        addServiceProvider,
    required TResult Function(String? userCollege,
            ServiceProviderModel? serviceProviderModel, int? index)
        deleteServiceProvider,
  }) {
    return addServiceProvider(userCollege, serviceProviderModel, file, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userCollege, String? category)?
        getServiceProviders,
    TResult Function(String? userCollege,
            ServiceProviderModel? serviceProviderModel, File? file, int? index)?
        addServiceProvider,
    TResult Function(String? userCollege,
            ServiceProviderModel? serviceProviderModel, int? index)?
        deleteServiceProvider,
    required TResult orElse(),
  }) {
    if (addServiceProvider != null) {
      return addServiceProvider(userCollege, serviceProviderModel, file, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetServiceProviders value) getServiceProviders,
    required TResult Function(_AddServiceProvider value) addServiceProvider,
    required TResult Function(_DeleteServiceProvider value)
        deleteServiceProvider,
  }) {
    return addServiceProvider(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetServiceProviders value)? getServiceProviders,
    TResult Function(_AddServiceProvider value)? addServiceProvider,
    TResult Function(_DeleteServiceProvider value)? deleteServiceProvider,
    required TResult orElse(),
  }) {
    if (addServiceProvider != null) {
      return addServiceProvider(this);
    }
    return orElse();
  }
}

abstract class _AddServiceProvider implements ServicesEvent {
  const factory _AddServiceProvider(
      {String? userCollege,
      ServiceProviderModel? serviceProviderModel,
      File? file,
      int? index}) = _$_AddServiceProvider;

  @override
  String? get userCollege => throw _privateConstructorUsedError;
  ServiceProviderModel? get serviceProviderModel =>
      throw _privateConstructorUsedError;
  File? get file => throw _privateConstructorUsedError;
  int? get index => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddServiceProviderCopyWith<_AddServiceProvider> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteServiceProviderCopyWith<$Res>
    implements $ServicesEventCopyWith<$Res> {
  factory _$DeleteServiceProviderCopyWith(_DeleteServiceProvider value,
          $Res Function(_DeleteServiceProvider) then) =
      __$DeleteServiceProviderCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? userCollege,
      ServiceProviderModel? serviceProviderModel,
      int? index});
}

/// @nodoc
class __$DeleteServiceProviderCopyWithImpl<$Res>
    extends _$ServicesEventCopyWithImpl<$Res>
    implements _$DeleteServiceProviderCopyWith<$Res> {
  __$DeleteServiceProviderCopyWithImpl(_DeleteServiceProvider _value,
      $Res Function(_DeleteServiceProvider) _then)
      : super(_value, (v) => _then(v as _DeleteServiceProvider));

  @override
  _DeleteServiceProvider get _value => super._value as _DeleteServiceProvider;

  @override
  $Res call({
    Object? userCollege = freezed,
    Object? serviceProviderModel = freezed,
    Object? index = freezed,
  }) {
    return _then(_DeleteServiceProvider(
      userCollege: userCollege == freezed
          ? _value.userCollege
          : userCollege // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceProviderModel: serviceProviderModel == freezed
          ? _value.serviceProviderModel
          : serviceProviderModel // ignore: cast_nullable_to_non_nullable
              as ServiceProviderModel?,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_DeleteServiceProvider implements _DeleteServiceProvider {
  const _$_DeleteServiceProvider(
      {this.userCollege, this.serviceProviderModel, this.index});

  @override
  final String? userCollege;
  @override
  final ServiceProviderModel? serviceProviderModel;
  @override
  final int? index;

  @override
  String toString() {
    return 'ServicesEvent.deleteServiceProvider(userCollege: $userCollege, serviceProviderModel: $serviceProviderModel, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteServiceProvider &&
            (identical(other.userCollege, userCollege) ||
                const DeepCollectionEquality()
                    .equals(other.userCollege, userCollege)) &&
            (identical(other.serviceProviderModel, serviceProviderModel) ||
                const DeepCollectionEquality().equals(
                    other.serviceProviderModel, serviceProviderModel)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userCollege) ^
      const DeepCollectionEquality().hash(serviceProviderModel) ^
      const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$DeleteServiceProviderCopyWith<_DeleteServiceProvider> get copyWith =>
      __$DeleteServiceProviderCopyWithImpl<_DeleteServiceProvider>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userCollege, String? category)
        getServiceProviders,
    required TResult Function(String? userCollege,
            ServiceProviderModel? serviceProviderModel, File? file, int? index)
        addServiceProvider,
    required TResult Function(String? userCollege,
            ServiceProviderModel? serviceProviderModel, int? index)
        deleteServiceProvider,
  }) {
    return deleteServiceProvider(userCollege, serviceProviderModel, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userCollege, String? category)?
        getServiceProviders,
    TResult Function(String? userCollege,
            ServiceProviderModel? serviceProviderModel, File? file, int? index)?
        addServiceProvider,
    TResult Function(String? userCollege,
            ServiceProviderModel? serviceProviderModel, int? index)?
        deleteServiceProvider,
    required TResult orElse(),
  }) {
    if (deleteServiceProvider != null) {
      return deleteServiceProvider(userCollege, serviceProviderModel, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetServiceProviders value) getServiceProviders,
    required TResult Function(_AddServiceProvider value) addServiceProvider,
    required TResult Function(_DeleteServiceProvider value)
        deleteServiceProvider,
  }) {
    return deleteServiceProvider(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetServiceProviders value)? getServiceProviders,
    TResult Function(_AddServiceProvider value)? addServiceProvider,
    TResult Function(_DeleteServiceProvider value)? deleteServiceProvider,
    required TResult orElse(),
  }) {
    if (deleteServiceProvider != null) {
      return deleteServiceProvider(this);
    }
    return orElse();
  }
}

abstract class _DeleteServiceProvider implements ServicesEvent {
  const factory _DeleteServiceProvider(
      {String? userCollege,
      ServiceProviderModel? serviceProviderModel,
      int? index}) = _$_DeleteServiceProvider;

  @override
  String? get userCollege => throw _privateConstructorUsedError;
  ServiceProviderModel? get serviceProviderModel =>
      throw _privateConstructorUsedError;
  int? get index => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeleteServiceProviderCopyWith<_DeleteServiceProvider> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ServicesStateTearOff {
  const _$ServicesStateTearOff();

  _ServicesState call(
      {Map<String, List<ServiceProviderModel>>? serviceProvidersMap,
      bool? isLoading,
      Option<FirebaseFailure>? failureOrSuccessOption,
      bool? isAddingServiceProvider,
      Option<Either<FirebaseFailure, Unit>>? addServiceResultOpt,
      bool? isDeletingServiceProvider,
      Option<Either<FirebaseFailure, Unit>>? deleteServiceResultOpt}) {
    return _ServicesState(
      serviceProvidersMap: serviceProvidersMap,
      isLoading: isLoading,
      failureOrSuccessOption: failureOrSuccessOption,
      isAddingServiceProvider: isAddingServiceProvider,
      addServiceResultOpt: addServiceResultOpt,
      isDeletingServiceProvider: isDeletingServiceProvider,
      deleteServiceResultOpt: deleteServiceResultOpt,
    );
  }
}

/// @nodoc
const $ServicesState = _$ServicesStateTearOff();

/// @nodoc
mixin _$ServicesState {
  Map<String, List<ServiceProviderModel>>? get serviceProvidersMap =>
      throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  Option<FirebaseFailure>? get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool? get isAddingServiceProvider => throw _privateConstructorUsedError;
  Option<Either<FirebaseFailure, Unit>>? get addServiceResultOpt =>
      throw _privateConstructorUsedError;
  bool? get isDeletingServiceProvider => throw _privateConstructorUsedError;
  Option<Either<FirebaseFailure, Unit>>? get deleteServiceResultOpt =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ServicesStateCopyWith<ServicesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServicesStateCopyWith<$Res> {
  factory $ServicesStateCopyWith(
          ServicesState value, $Res Function(ServicesState) then) =
      _$ServicesStateCopyWithImpl<$Res>;
  $Res call(
      {Map<String, List<ServiceProviderModel>>? serviceProvidersMap,
      bool? isLoading,
      Option<FirebaseFailure>? failureOrSuccessOption,
      bool? isAddingServiceProvider,
      Option<Either<FirebaseFailure, Unit>>? addServiceResultOpt,
      bool? isDeletingServiceProvider,
      Option<Either<FirebaseFailure, Unit>>? deleteServiceResultOpt});
}

/// @nodoc
class _$ServicesStateCopyWithImpl<$Res>
    implements $ServicesStateCopyWith<$Res> {
  _$ServicesStateCopyWithImpl(this._value, this._then);

  final ServicesState _value;
  // ignore: unused_field
  final $Res Function(ServicesState) _then;

  @override
  $Res call({
    Object? serviceProvidersMap = freezed,
    Object? isLoading = freezed,
    Object? failureOrSuccessOption = freezed,
    Object? isAddingServiceProvider = freezed,
    Object? addServiceResultOpt = freezed,
    Object? isDeletingServiceProvider = freezed,
    Object? deleteServiceResultOpt = freezed,
  }) {
    return _then(_value.copyWith(
      serviceProvidersMap: serviceProvidersMap == freezed
          ? _value.serviceProvidersMap
          : serviceProvidersMap // ignore: cast_nullable_to_non_nullable
              as Map<String, List<ServiceProviderModel>>?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<FirebaseFailure>?,
      isAddingServiceProvider: isAddingServiceProvider == freezed
          ? _value.isAddingServiceProvider
          : isAddingServiceProvider // ignore: cast_nullable_to_non_nullable
              as bool?,
      addServiceResultOpt: addServiceResultOpt == freezed
          ? _value.addServiceResultOpt
          : addServiceResultOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, Unit>>?,
      isDeletingServiceProvider: isDeletingServiceProvider == freezed
          ? _value.isDeletingServiceProvider
          : isDeletingServiceProvider // ignore: cast_nullable_to_non_nullable
              as bool?,
      deleteServiceResultOpt: deleteServiceResultOpt == freezed
          ? _value.deleteServiceResultOpt
          : deleteServiceResultOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, Unit>>?,
    ));
  }
}

/// @nodoc
abstract class _$ServicesStateCopyWith<$Res>
    implements $ServicesStateCopyWith<$Res> {
  factory _$ServicesStateCopyWith(
          _ServicesState value, $Res Function(_ServicesState) then) =
      __$ServicesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Map<String, List<ServiceProviderModel>>? serviceProvidersMap,
      bool? isLoading,
      Option<FirebaseFailure>? failureOrSuccessOption,
      bool? isAddingServiceProvider,
      Option<Either<FirebaseFailure, Unit>>? addServiceResultOpt,
      bool? isDeletingServiceProvider,
      Option<Either<FirebaseFailure, Unit>>? deleteServiceResultOpt});
}

/// @nodoc
class __$ServicesStateCopyWithImpl<$Res>
    extends _$ServicesStateCopyWithImpl<$Res>
    implements _$ServicesStateCopyWith<$Res> {
  __$ServicesStateCopyWithImpl(
      _ServicesState _value, $Res Function(_ServicesState) _then)
      : super(_value, (v) => _then(v as _ServicesState));

  @override
  _ServicesState get _value => super._value as _ServicesState;

  @override
  $Res call({
    Object? serviceProvidersMap = freezed,
    Object? isLoading = freezed,
    Object? failureOrSuccessOption = freezed,
    Object? isAddingServiceProvider = freezed,
    Object? addServiceResultOpt = freezed,
    Object? isDeletingServiceProvider = freezed,
    Object? deleteServiceResultOpt = freezed,
  }) {
    return _then(_ServicesState(
      serviceProvidersMap: serviceProvidersMap == freezed
          ? _value.serviceProvidersMap
          : serviceProvidersMap // ignore: cast_nullable_to_non_nullable
              as Map<String, List<ServiceProviderModel>>?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<FirebaseFailure>?,
      isAddingServiceProvider: isAddingServiceProvider == freezed
          ? _value.isAddingServiceProvider
          : isAddingServiceProvider // ignore: cast_nullable_to_non_nullable
              as bool?,
      addServiceResultOpt: addServiceResultOpt == freezed
          ? _value.addServiceResultOpt
          : addServiceResultOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, Unit>>?,
      isDeletingServiceProvider: isDeletingServiceProvider == freezed
          ? _value.isDeletingServiceProvider
          : isDeletingServiceProvider // ignore: cast_nullable_to_non_nullable
              as bool?,
      deleteServiceResultOpt: deleteServiceResultOpt == freezed
          ? _value.deleteServiceResultOpt
          : deleteServiceResultOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, Unit>>?,
    ));
  }
}

/// @nodoc

class _$_ServicesState implements _ServicesState {
  const _$_ServicesState(
      {this.serviceProvidersMap,
      this.isLoading,
      this.failureOrSuccessOption,
      this.isAddingServiceProvider,
      this.addServiceResultOpt,
      this.isDeletingServiceProvider,
      this.deleteServiceResultOpt});

  @override
  final Map<String, List<ServiceProviderModel>>? serviceProvidersMap;
  @override
  final bool? isLoading;
  @override
  final Option<FirebaseFailure>? failureOrSuccessOption;
  @override
  final bool? isAddingServiceProvider;
  @override
  final Option<Either<FirebaseFailure, Unit>>? addServiceResultOpt;
  @override
  final bool? isDeletingServiceProvider;
  @override
  final Option<Either<FirebaseFailure, Unit>>? deleteServiceResultOpt;

  @override
  String toString() {
    return 'ServicesState(serviceProvidersMap: $serviceProvidersMap, isLoading: $isLoading, failureOrSuccessOption: $failureOrSuccessOption, isAddingServiceProvider: $isAddingServiceProvider, addServiceResultOpt: $addServiceResultOpt, isDeletingServiceProvider: $isDeletingServiceProvider, deleteServiceResultOpt: $deleteServiceResultOpt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ServicesState &&
            (identical(other.serviceProvidersMap, serviceProvidersMap) ||
                const DeepCollectionEquality()
                    .equals(other.serviceProvidersMap, serviceProvidersMap)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.failureOrSuccessOption, failureOrSuccessOption)) &&
            (identical(
                    other.isAddingServiceProvider, isAddingServiceProvider) ||
                const DeepCollectionEquality().equals(
                    other.isAddingServiceProvider, isAddingServiceProvider)) &&
            (identical(other.addServiceResultOpt, addServiceResultOpt) ||
                const DeepCollectionEquality()
                    .equals(other.addServiceResultOpt, addServiceResultOpt)) &&
            (identical(other.isDeletingServiceProvider,
                    isDeletingServiceProvider) ||
                const DeepCollectionEquality().equals(
                    other.isDeletingServiceProvider,
                    isDeletingServiceProvider)) &&
            (identical(other.deleteServiceResultOpt, deleteServiceResultOpt) ||
                const DeepCollectionEquality().equals(
                    other.deleteServiceResultOpt, deleteServiceResultOpt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(serviceProvidersMap) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption) ^
      const DeepCollectionEquality().hash(isAddingServiceProvider) ^
      const DeepCollectionEquality().hash(addServiceResultOpt) ^
      const DeepCollectionEquality().hash(isDeletingServiceProvider) ^
      const DeepCollectionEquality().hash(deleteServiceResultOpt);

  @JsonKey(ignore: true)
  @override
  _$ServicesStateCopyWith<_ServicesState> get copyWith =>
      __$ServicesStateCopyWithImpl<_ServicesState>(this, _$identity);
}

abstract class _ServicesState implements ServicesState {
  const factory _ServicesState(
          {Map<String, List<ServiceProviderModel>>? serviceProvidersMap,
          bool? isLoading,
          Option<FirebaseFailure>? failureOrSuccessOption,
          bool? isAddingServiceProvider,
          Option<Either<FirebaseFailure, Unit>>? addServiceResultOpt,
          bool? isDeletingServiceProvider,
          Option<Either<FirebaseFailure, Unit>>? deleteServiceResultOpt}) =
      _$_ServicesState;

  @override
  Map<String, List<ServiceProviderModel>>? get serviceProvidersMap =>
      throw _privateConstructorUsedError;
  @override
  bool? get isLoading => throw _privateConstructorUsedError;
  @override
  Option<FirebaseFailure>? get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  bool? get isAddingServiceProvider => throw _privateConstructorUsedError;
  @override
  Option<Either<FirebaseFailure, Unit>>? get addServiceResultOpt =>
      throw _privateConstructorUsedError;
  @override
  bool? get isDeletingServiceProvider => throw _privateConstructorUsedError;
  @override
  Option<Either<FirebaseFailure, Unit>>? get deleteServiceResultOpt =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ServicesStateCopyWith<_ServicesState> get copyWith =>
      throw _privateConstructorUsedError;
}
