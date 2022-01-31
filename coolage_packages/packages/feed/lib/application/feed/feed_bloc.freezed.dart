// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'feed_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FeedEventTearOff {
  const _$FeedEventTearOff();

  _GetApprovedPosts getApprovedPosts({required String userCollege}) {
    return _GetApprovedPosts(
      userCollege: userCollege,
    );
  }

  _GetMoreApprovedPosts getMoreApprovedPosts({required String userCollege}) {
    return _GetMoreApprovedPosts(
      userCollege: userCollege,
    );
  }

  _GetPublishingPosts getPublishingPosts(
      {required String userCollege, String? status, DateTime? selectedDate}) {
    return _GetPublishingPosts(
      userCollege: userCollege,
      status: status,
      selectedDate: selectedDate,
    );
  }

  _GetMorePublishingPosts getMorePublishingPosts(
      {required String userCollege, String? status, DateTime? selectedDate}) {
    return _GetMorePublishingPosts(
      userCollege: userCollege,
      status: status,
      selectedDate: selectedDate,
    );
  }

  _GetUserPosts getUserPosts(
      {required CoolUser coolUser, String? status, DateTime? selectedDate}) {
    return _GetUserPosts(
      coolUser: coolUser,
      status: status,
      selectedDate: selectedDate,
    );
  }

  _GetMoreUserPosts getMoreUserPosts(
      {required CoolUser coolUser, String? status, DateTime? selectedDate}) {
    return _GetMoreUserPosts(
      coolUser: coolUser,
      status: status,
      selectedDate: selectedDate,
    );
  }

  _AddFeed addFeed(
      {String? userCollege,
      FeedModel? feedModel,
      File? feedImageFile,
      File? feedLogoFile,
      int? index}) {
    return _AddFeed(
      userCollege: userCollege,
      feedModel: feedModel,
      feedImageFile: feedImageFile,
      feedLogoFile: feedLogoFile,
      index: index,
    );
  }

  _DeleteFeed deleteFeed(
      {required String userCollege,
      required FeedModel feedModel,
      required int index,
      required bool isDeletedFromApproved}) {
    return _DeleteFeed(
      userCollege: userCollege,
      feedModel: feedModel,
      index: index,
      isDeletedFromApproved: isDeletedFromApproved,
    );
  }

  _DeclineFeed declineFeed(
      {required String userCollege,
      required FeedModel feedModel,
      required int index}) {
    return _DeclineFeed(
      userCollege: userCollege,
      feedModel: feedModel,
      index: index,
    );
  }

  _ApproveFeed approveFeed(
      {required String userCollege,
      required FeedModel feedModel,
      required int index}) {
    return _ApproveFeed(
      userCollege: userCollege,
      feedModel: feedModel,
      index: index,
    );
  }
}

/// @nodoc
const $FeedEvent = _$FeedEventTearOff();

/// @nodoc
mixin _$FeedEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userCollege) getApprovedPosts,
    required TResult Function(String userCollege) getMoreApprovedPosts,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getPublishingPosts,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getMorePublishingPosts,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getUserPosts,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getMoreUserPosts,
    required TResult Function(String? userCollege, FeedModel? feedModel,
            File? feedImageFile, File? feedLogoFile, int? index)
        addFeed,
    required TResult Function(String userCollege, FeedModel feedModel,
            int index, bool isDeletedFromApproved)
        deleteFeed,
    required TResult Function(
            String userCollege, FeedModel feedModel, int index)
        declineFeed,
    required TResult Function(
            String userCollege, FeedModel feedModel, int index)
        approveFeed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userCollege)? getApprovedPosts,
    TResult Function(String userCollege)? getMoreApprovedPosts,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getPublishingPosts,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getMorePublishingPosts,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getUserPosts,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getMoreUserPosts,
    TResult Function(String? userCollege, FeedModel? feedModel,
            File? feedImageFile, File? feedLogoFile, int? index)?
        addFeed,
    TResult Function(String userCollege, FeedModel feedModel, int index,
            bool isDeletedFromApproved)?
        deleteFeed,
    TResult Function(String userCollege, FeedModel feedModel, int index)?
        declineFeed,
    TResult Function(String userCollege, FeedModel feedModel, int index)?
        approveFeed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetApprovedPosts value) getApprovedPosts,
    required TResult Function(_GetMoreApprovedPosts value) getMoreApprovedPosts,
    required TResult Function(_GetPublishingPosts value) getPublishingPosts,
    required TResult Function(_GetMorePublishingPosts value)
        getMorePublishingPosts,
    required TResult Function(_GetUserPosts value) getUserPosts,
    required TResult Function(_GetMoreUserPosts value) getMoreUserPosts,
    required TResult Function(_AddFeed value) addFeed,
    required TResult Function(_DeleteFeed value) deleteFeed,
    required TResult Function(_DeclineFeed value) declineFeed,
    required TResult Function(_ApproveFeed value) approveFeed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetApprovedPosts value)? getApprovedPosts,
    TResult Function(_GetMoreApprovedPosts value)? getMoreApprovedPosts,
    TResult Function(_GetPublishingPosts value)? getPublishingPosts,
    TResult Function(_GetMorePublishingPosts value)? getMorePublishingPosts,
    TResult Function(_GetUserPosts value)? getUserPosts,
    TResult Function(_GetMoreUserPosts value)? getMoreUserPosts,
    TResult Function(_AddFeed value)? addFeed,
    TResult Function(_DeleteFeed value)? deleteFeed,
    TResult Function(_DeclineFeed value)? declineFeed,
    TResult Function(_ApproveFeed value)? approveFeed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedEventCopyWith<$Res> {
  factory $FeedEventCopyWith(FeedEvent value, $Res Function(FeedEvent) then) =
      _$FeedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FeedEventCopyWithImpl<$Res> implements $FeedEventCopyWith<$Res> {
  _$FeedEventCopyWithImpl(this._value, this._then);

  final FeedEvent _value;
  // ignore: unused_field
  final $Res Function(FeedEvent) _then;
}

/// @nodoc
abstract class _$GetApprovedPostsCopyWith<$Res> {
  factory _$GetApprovedPostsCopyWith(
          _GetApprovedPosts value, $Res Function(_GetApprovedPosts) then) =
      __$GetApprovedPostsCopyWithImpl<$Res>;
  $Res call({String userCollege});
}

/// @nodoc
class __$GetApprovedPostsCopyWithImpl<$Res>
    extends _$FeedEventCopyWithImpl<$Res>
    implements _$GetApprovedPostsCopyWith<$Res> {
  __$GetApprovedPostsCopyWithImpl(
      _GetApprovedPosts _value, $Res Function(_GetApprovedPosts) _then)
      : super(_value, (v) => _then(v as _GetApprovedPosts));

  @override
  _GetApprovedPosts get _value => super._value as _GetApprovedPosts;

  @override
  $Res call({
    Object? userCollege = freezed,
  }) {
    return _then(_GetApprovedPosts(
      userCollege: userCollege == freezed
          ? _value.userCollege
          : userCollege // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetApprovedPosts implements _GetApprovedPosts {
  const _$_GetApprovedPosts({required this.userCollege});

  @override
  final String userCollege;

  @override
  String toString() {
    return 'FeedEvent.getApprovedPosts(userCollege: $userCollege)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetApprovedPosts &&
            (identical(other.userCollege, userCollege) ||
                const DeepCollectionEquality()
                    .equals(other.userCollege, userCollege)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userCollege);

  @JsonKey(ignore: true)
  @override
  _$GetApprovedPostsCopyWith<_GetApprovedPosts> get copyWith =>
      __$GetApprovedPostsCopyWithImpl<_GetApprovedPosts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userCollege) getApprovedPosts,
    required TResult Function(String userCollege) getMoreApprovedPosts,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getPublishingPosts,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getMorePublishingPosts,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getUserPosts,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getMoreUserPosts,
    required TResult Function(String? userCollege, FeedModel? feedModel,
            File? feedImageFile, File? feedLogoFile, int? index)
        addFeed,
    required TResult Function(String userCollege, FeedModel feedModel,
            int index, bool isDeletedFromApproved)
        deleteFeed,
    required TResult Function(
            String userCollege, FeedModel feedModel, int index)
        declineFeed,
    required TResult Function(
            String userCollege, FeedModel feedModel, int index)
        approveFeed,
  }) {
    return getApprovedPosts(userCollege);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userCollege)? getApprovedPosts,
    TResult Function(String userCollege)? getMoreApprovedPosts,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getPublishingPosts,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getMorePublishingPosts,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getUserPosts,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getMoreUserPosts,
    TResult Function(String? userCollege, FeedModel? feedModel,
            File? feedImageFile, File? feedLogoFile, int? index)?
        addFeed,
    TResult Function(String userCollege, FeedModel feedModel, int index,
            bool isDeletedFromApproved)?
        deleteFeed,
    TResult Function(String userCollege, FeedModel feedModel, int index)?
        declineFeed,
    TResult Function(String userCollege, FeedModel feedModel, int index)?
        approveFeed,
    required TResult orElse(),
  }) {
    if (getApprovedPosts != null) {
      return getApprovedPosts(userCollege);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetApprovedPosts value) getApprovedPosts,
    required TResult Function(_GetMoreApprovedPosts value) getMoreApprovedPosts,
    required TResult Function(_GetPublishingPosts value) getPublishingPosts,
    required TResult Function(_GetMorePublishingPosts value)
        getMorePublishingPosts,
    required TResult Function(_GetUserPosts value) getUserPosts,
    required TResult Function(_GetMoreUserPosts value) getMoreUserPosts,
    required TResult Function(_AddFeed value) addFeed,
    required TResult Function(_DeleteFeed value) deleteFeed,
    required TResult Function(_DeclineFeed value) declineFeed,
    required TResult Function(_ApproveFeed value) approveFeed,
  }) {
    return getApprovedPosts(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetApprovedPosts value)? getApprovedPosts,
    TResult Function(_GetMoreApprovedPosts value)? getMoreApprovedPosts,
    TResult Function(_GetPublishingPosts value)? getPublishingPosts,
    TResult Function(_GetMorePublishingPosts value)? getMorePublishingPosts,
    TResult Function(_GetUserPosts value)? getUserPosts,
    TResult Function(_GetMoreUserPosts value)? getMoreUserPosts,
    TResult Function(_AddFeed value)? addFeed,
    TResult Function(_DeleteFeed value)? deleteFeed,
    TResult Function(_DeclineFeed value)? declineFeed,
    TResult Function(_ApproveFeed value)? approveFeed,
    required TResult orElse(),
  }) {
    if (getApprovedPosts != null) {
      return getApprovedPosts(this);
    }
    return orElse();
  }
}

abstract class _GetApprovedPosts implements FeedEvent {
  const factory _GetApprovedPosts({required String userCollege}) =
      _$_GetApprovedPosts;

  String get userCollege => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetApprovedPostsCopyWith<_GetApprovedPosts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetMoreApprovedPostsCopyWith<$Res> {
  factory _$GetMoreApprovedPostsCopyWith(_GetMoreApprovedPosts value,
          $Res Function(_GetMoreApprovedPosts) then) =
      __$GetMoreApprovedPostsCopyWithImpl<$Res>;
  $Res call({String userCollege});
}

/// @nodoc
class __$GetMoreApprovedPostsCopyWithImpl<$Res>
    extends _$FeedEventCopyWithImpl<$Res>
    implements _$GetMoreApprovedPostsCopyWith<$Res> {
  __$GetMoreApprovedPostsCopyWithImpl(
      _GetMoreApprovedPosts _value, $Res Function(_GetMoreApprovedPosts) _then)
      : super(_value, (v) => _then(v as _GetMoreApprovedPosts));

  @override
  _GetMoreApprovedPosts get _value => super._value as _GetMoreApprovedPosts;

  @override
  $Res call({
    Object? userCollege = freezed,
  }) {
    return _then(_GetMoreApprovedPosts(
      userCollege: userCollege == freezed
          ? _value.userCollege
          : userCollege // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetMoreApprovedPosts implements _GetMoreApprovedPosts {
  const _$_GetMoreApprovedPosts({required this.userCollege});

  @override
  final String userCollege;

  @override
  String toString() {
    return 'FeedEvent.getMoreApprovedPosts(userCollege: $userCollege)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetMoreApprovedPosts &&
            (identical(other.userCollege, userCollege) ||
                const DeepCollectionEquality()
                    .equals(other.userCollege, userCollege)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userCollege);

  @JsonKey(ignore: true)
  @override
  _$GetMoreApprovedPostsCopyWith<_GetMoreApprovedPosts> get copyWith =>
      __$GetMoreApprovedPostsCopyWithImpl<_GetMoreApprovedPosts>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userCollege) getApprovedPosts,
    required TResult Function(String userCollege) getMoreApprovedPosts,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getPublishingPosts,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getMorePublishingPosts,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getUserPosts,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getMoreUserPosts,
    required TResult Function(String? userCollege, FeedModel? feedModel,
            File? feedImageFile, File? feedLogoFile, int? index)
        addFeed,
    required TResult Function(String userCollege, FeedModel feedModel,
            int index, bool isDeletedFromApproved)
        deleteFeed,
    required TResult Function(
            String userCollege, FeedModel feedModel, int index)
        declineFeed,
    required TResult Function(
            String userCollege, FeedModel feedModel, int index)
        approveFeed,
  }) {
    return getMoreApprovedPosts(userCollege);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userCollege)? getApprovedPosts,
    TResult Function(String userCollege)? getMoreApprovedPosts,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getPublishingPosts,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getMorePublishingPosts,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getUserPosts,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getMoreUserPosts,
    TResult Function(String? userCollege, FeedModel? feedModel,
            File? feedImageFile, File? feedLogoFile, int? index)?
        addFeed,
    TResult Function(String userCollege, FeedModel feedModel, int index,
            bool isDeletedFromApproved)?
        deleteFeed,
    TResult Function(String userCollege, FeedModel feedModel, int index)?
        declineFeed,
    TResult Function(String userCollege, FeedModel feedModel, int index)?
        approveFeed,
    required TResult orElse(),
  }) {
    if (getMoreApprovedPosts != null) {
      return getMoreApprovedPosts(userCollege);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetApprovedPosts value) getApprovedPosts,
    required TResult Function(_GetMoreApprovedPosts value) getMoreApprovedPosts,
    required TResult Function(_GetPublishingPosts value) getPublishingPosts,
    required TResult Function(_GetMorePublishingPosts value)
        getMorePublishingPosts,
    required TResult Function(_GetUserPosts value) getUserPosts,
    required TResult Function(_GetMoreUserPosts value) getMoreUserPosts,
    required TResult Function(_AddFeed value) addFeed,
    required TResult Function(_DeleteFeed value) deleteFeed,
    required TResult Function(_DeclineFeed value) declineFeed,
    required TResult Function(_ApproveFeed value) approveFeed,
  }) {
    return getMoreApprovedPosts(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetApprovedPosts value)? getApprovedPosts,
    TResult Function(_GetMoreApprovedPosts value)? getMoreApprovedPosts,
    TResult Function(_GetPublishingPosts value)? getPublishingPosts,
    TResult Function(_GetMorePublishingPosts value)? getMorePublishingPosts,
    TResult Function(_GetUserPosts value)? getUserPosts,
    TResult Function(_GetMoreUserPosts value)? getMoreUserPosts,
    TResult Function(_AddFeed value)? addFeed,
    TResult Function(_DeleteFeed value)? deleteFeed,
    TResult Function(_DeclineFeed value)? declineFeed,
    TResult Function(_ApproveFeed value)? approveFeed,
    required TResult orElse(),
  }) {
    if (getMoreApprovedPosts != null) {
      return getMoreApprovedPosts(this);
    }
    return orElse();
  }
}

abstract class _GetMoreApprovedPosts implements FeedEvent {
  const factory _GetMoreApprovedPosts({required String userCollege}) =
      _$_GetMoreApprovedPosts;

  String get userCollege => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetMoreApprovedPostsCopyWith<_GetMoreApprovedPosts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetPublishingPostsCopyWith<$Res> {
  factory _$GetPublishingPostsCopyWith(
          _GetPublishingPosts value, $Res Function(_GetPublishingPosts) then) =
      __$GetPublishingPostsCopyWithImpl<$Res>;
  $Res call({String userCollege, String? status, DateTime? selectedDate});
}

/// @nodoc
class __$GetPublishingPostsCopyWithImpl<$Res>
    extends _$FeedEventCopyWithImpl<$Res>
    implements _$GetPublishingPostsCopyWith<$Res> {
  __$GetPublishingPostsCopyWithImpl(
      _GetPublishingPosts _value, $Res Function(_GetPublishingPosts) _then)
      : super(_value, (v) => _then(v as _GetPublishingPosts));

  @override
  _GetPublishingPosts get _value => super._value as _GetPublishingPosts;

  @override
  $Res call({
    Object? userCollege = freezed,
    Object? status = freezed,
    Object? selectedDate = freezed,
  }) {
    return _then(_GetPublishingPosts(
      userCollege: userCollege == freezed
          ? _value.userCollege
          : userCollege // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedDate: selectedDate == freezed
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_GetPublishingPosts implements _GetPublishingPosts {
  const _$_GetPublishingPosts(
      {required this.userCollege, this.status, this.selectedDate});

  @override
  final String userCollege;
  @override
  final String? status;
  @override
  final DateTime? selectedDate;

  @override
  String toString() {
    return 'FeedEvent.getPublishingPosts(userCollege: $userCollege, status: $status, selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetPublishingPosts &&
            (identical(other.userCollege, userCollege) ||
                const DeepCollectionEquality()
                    .equals(other.userCollege, userCollege)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.selectedDate, selectedDate) ||
                const DeepCollectionEquality()
                    .equals(other.selectedDate, selectedDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userCollege) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(selectedDate);

  @JsonKey(ignore: true)
  @override
  _$GetPublishingPostsCopyWith<_GetPublishingPosts> get copyWith =>
      __$GetPublishingPostsCopyWithImpl<_GetPublishingPosts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userCollege) getApprovedPosts,
    required TResult Function(String userCollege) getMoreApprovedPosts,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getPublishingPosts,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getMorePublishingPosts,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getUserPosts,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getMoreUserPosts,
    required TResult Function(String? userCollege, FeedModel? feedModel,
            File? feedImageFile, File? feedLogoFile, int? index)
        addFeed,
    required TResult Function(String userCollege, FeedModel feedModel,
            int index, bool isDeletedFromApproved)
        deleteFeed,
    required TResult Function(
            String userCollege, FeedModel feedModel, int index)
        declineFeed,
    required TResult Function(
            String userCollege, FeedModel feedModel, int index)
        approveFeed,
  }) {
    return getPublishingPosts(userCollege, status, selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userCollege)? getApprovedPosts,
    TResult Function(String userCollege)? getMoreApprovedPosts,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getPublishingPosts,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getMorePublishingPosts,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getUserPosts,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getMoreUserPosts,
    TResult Function(String? userCollege, FeedModel? feedModel,
            File? feedImageFile, File? feedLogoFile, int? index)?
        addFeed,
    TResult Function(String userCollege, FeedModel feedModel, int index,
            bool isDeletedFromApproved)?
        deleteFeed,
    TResult Function(String userCollege, FeedModel feedModel, int index)?
        declineFeed,
    TResult Function(String userCollege, FeedModel feedModel, int index)?
        approveFeed,
    required TResult orElse(),
  }) {
    if (getPublishingPosts != null) {
      return getPublishingPosts(userCollege, status, selectedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetApprovedPosts value) getApprovedPosts,
    required TResult Function(_GetMoreApprovedPosts value) getMoreApprovedPosts,
    required TResult Function(_GetPublishingPosts value) getPublishingPosts,
    required TResult Function(_GetMorePublishingPosts value)
        getMorePublishingPosts,
    required TResult Function(_GetUserPosts value) getUserPosts,
    required TResult Function(_GetMoreUserPosts value) getMoreUserPosts,
    required TResult Function(_AddFeed value) addFeed,
    required TResult Function(_DeleteFeed value) deleteFeed,
    required TResult Function(_DeclineFeed value) declineFeed,
    required TResult Function(_ApproveFeed value) approveFeed,
  }) {
    return getPublishingPosts(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetApprovedPosts value)? getApprovedPosts,
    TResult Function(_GetMoreApprovedPosts value)? getMoreApprovedPosts,
    TResult Function(_GetPublishingPosts value)? getPublishingPosts,
    TResult Function(_GetMorePublishingPosts value)? getMorePublishingPosts,
    TResult Function(_GetUserPosts value)? getUserPosts,
    TResult Function(_GetMoreUserPosts value)? getMoreUserPosts,
    TResult Function(_AddFeed value)? addFeed,
    TResult Function(_DeleteFeed value)? deleteFeed,
    TResult Function(_DeclineFeed value)? declineFeed,
    TResult Function(_ApproveFeed value)? approveFeed,
    required TResult orElse(),
  }) {
    if (getPublishingPosts != null) {
      return getPublishingPosts(this);
    }
    return orElse();
  }
}

abstract class _GetPublishingPosts implements FeedEvent {
  const factory _GetPublishingPosts(
      {required String userCollege,
      String? status,
      DateTime? selectedDate}) = _$_GetPublishingPosts;

  String get userCollege => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  DateTime? get selectedDate => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetPublishingPostsCopyWith<_GetPublishingPosts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetMorePublishingPostsCopyWith<$Res> {
  factory _$GetMorePublishingPostsCopyWith(_GetMorePublishingPosts value,
          $Res Function(_GetMorePublishingPosts) then) =
      __$GetMorePublishingPostsCopyWithImpl<$Res>;
  $Res call({String userCollege, String? status, DateTime? selectedDate});
}

/// @nodoc
class __$GetMorePublishingPostsCopyWithImpl<$Res>
    extends _$FeedEventCopyWithImpl<$Res>
    implements _$GetMorePublishingPostsCopyWith<$Res> {
  __$GetMorePublishingPostsCopyWithImpl(_GetMorePublishingPosts _value,
      $Res Function(_GetMorePublishingPosts) _then)
      : super(_value, (v) => _then(v as _GetMorePublishingPosts));

  @override
  _GetMorePublishingPosts get _value => super._value as _GetMorePublishingPosts;

  @override
  $Res call({
    Object? userCollege = freezed,
    Object? status = freezed,
    Object? selectedDate = freezed,
  }) {
    return _then(_GetMorePublishingPosts(
      userCollege: userCollege == freezed
          ? _value.userCollege
          : userCollege // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedDate: selectedDate == freezed
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_GetMorePublishingPosts implements _GetMorePublishingPosts {
  const _$_GetMorePublishingPosts(
      {required this.userCollege, this.status, this.selectedDate});

  @override
  final String userCollege;
  @override
  final String? status;
  @override
  final DateTime? selectedDate;

  @override
  String toString() {
    return 'FeedEvent.getMorePublishingPosts(userCollege: $userCollege, status: $status, selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetMorePublishingPosts &&
            (identical(other.userCollege, userCollege) ||
                const DeepCollectionEquality()
                    .equals(other.userCollege, userCollege)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.selectedDate, selectedDate) ||
                const DeepCollectionEquality()
                    .equals(other.selectedDate, selectedDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userCollege) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(selectedDate);

  @JsonKey(ignore: true)
  @override
  _$GetMorePublishingPostsCopyWith<_GetMorePublishingPosts> get copyWith =>
      __$GetMorePublishingPostsCopyWithImpl<_GetMorePublishingPosts>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userCollege) getApprovedPosts,
    required TResult Function(String userCollege) getMoreApprovedPosts,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getPublishingPosts,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getMorePublishingPosts,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getUserPosts,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getMoreUserPosts,
    required TResult Function(String? userCollege, FeedModel? feedModel,
            File? feedImageFile, File? feedLogoFile, int? index)
        addFeed,
    required TResult Function(String userCollege, FeedModel feedModel,
            int index, bool isDeletedFromApproved)
        deleteFeed,
    required TResult Function(
            String userCollege, FeedModel feedModel, int index)
        declineFeed,
    required TResult Function(
            String userCollege, FeedModel feedModel, int index)
        approveFeed,
  }) {
    return getMorePublishingPosts(userCollege, status, selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userCollege)? getApprovedPosts,
    TResult Function(String userCollege)? getMoreApprovedPosts,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getPublishingPosts,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getMorePublishingPosts,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getUserPosts,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getMoreUserPosts,
    TResult Function(String? userCollege, FeedModel? feedModel,
            File? feedImageFile, File? feedLogoFile, int? index)?
        addFeed,
    TResult Function(String userCollege, FeedModel feedModel, int index,
            bool isDeletedFromApproved)?
        deleteFeed,
    TResult Function(String userCollege, FeedModel feedModel, int index)?
        declineFeed,
    TResult Function(String userCollege, FeedModel feedModel, int index)?
        approveFeed,
    required TResult orElse(),
  }) {
    if (getMorePublishingPosts != null) {
      return getMorePublishingPosts(userCollege, status, selectedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetApprovedPosts value) getApprovedPosts,
    required TResult Function(_GetMoreApprovedPosts value) getMoreApprovedPosts,
    required TResult Function(_GetPublishingPosts value) getPublishingPosts,
    required TResult Function(_GetMorePublishingPosts value)
        getMorePublishingPosts,
    required TResult Function(_GetUserPosts value) getUserPosts,
    required TResult Function(_GetMoreUserPosts value) getMoreUserPosts,
    required TResult Function(_AddFeed value) addFeed,
    required TResult Function(_DeleteFeed value) deleteFeed,
    required TResult Function(_DeclineFeed value) declineFeed,
    required TResult Function(_ApproveFeed value) approveFeed,
  }) {
    return getMorePublishingPosts(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetApprovedPosts value)? getApprovedPosts,
    TResult Function(_GetMoreApprovedPosts value)? getMoreApprovedPosts,
    TResult Function(_GetPublishingPosts value)? getPublishingPosts,
    TResult Function(_GetMorePublishingPosts value)? getMorePublishingPosts,
    TResult Function(_GetUserPosts value)? getUserPosts,
    TResult Function(_GetMoreUserPosts value)? getMoreUserPosts,
    TResult Function(_AddFeed value)? addFeed,
    TResult Function(_DeleteFeed value)? deleteFeed,
    TResult Function(_DeclineFeed value)? declineFeed,
    TResult Function(_ApproveFeed value)? approveFeed,
    required TResult orElse(),
  }) {
    if (getMorePublishingPosts != null) {
      return getMorePublishingPosts(this);
    }
    return orElse();
  }
}

abstract class _GetMorePublishingPosts implements FeedEvent {
  const factory _GetMorePublishingPosts(
      {required String userCollege,
      String? status,
      DateTime? selectedDate}) = _$_GetMorePublishingPosts;

  String get userCollege => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  DateTime? get selectedDate => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetMorePublishingPostsCopyWith<_GetMorePublishingPosts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetUserPostsCopyWith<$Res> {
  factory _$GetUserPostsCopyWith(
          _GetUserPosts value, $Res Function(_GetUserPosts) then) =
      __$GetUserPostsCopyWithImpl<$Res>;
  $Res call({CoolUser coolUser, String? status, DateTime? selectedDate});
}

/// @nodoc
class __$GetUserPostsCopyWithImpl<$Res> extends _$FeedEventCopyWithImpl<$Res>
    implements _$GetUserPostsCopyWith<$Res> {
  __$GetUserPostsCopyWithImpl(
      _GetUserPosts _value, $Res Function(_GetUserPosts) _then)
      : super(_value, (v) => _then(v as _GetUserPosts));

  @override
  _GetUserPosts get _value => super._value as _GetUserPosts;

  @override
  $Res call({
    Object? coolUser = freezed,
    Object? status = freezed,
    Object? selectedDate = freezed,
  }) {
    return _then(_GetUserPosts(
      coolUser: coolUser == freezed
          ? _value.coolUser
          : coolUser // ignore: cast_nullable_to_non_nullable
              as CoolUser,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedDate: selectedDate == freezed
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_GetUserPosts implements _GetUserPosts {
  const _$_GetUserPosts(
      {required this.coolUser, this.status, this.selectedDate});

  @override
  final CoolUser coolUser;
  @override
  final String? status;
  @override
  final DateTime? selectedDate;

  @override
  String toString() {
    return 'FeedEvent.getUserPosts(coolUser: $coolUser, status: $status, selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetUserPosts &&
            (identical(other.coolUser, coolUser) ||
                const DeepCollectionEquality()
                    .equals(other.coolUser, coolUser)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.selectedDate, selectedDate) ||
                const DeepCollectionEquality()
                    .equals(other.selectedDate, selectedDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(coolUser) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(selectedDate);

  @JsonKey(ignore: true)
  @override
  _$GetUserPostsCopyWith<_GetUserPosts> get copyWith =>
      __$GetUserPostsCopyWithImpl<_GetUserPosts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userCollege) getApprovedPosts,
    required TResult Function(String userCollege) getMoreApprovedPosts,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getPublishingPosts,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getMorePublishingPosts,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getUserPosts,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getMoreUserPosts,
    required TResult Function(String? userCollege, FeedModel? feedModel,
            File? feedImageFile, File? feedLogoFile, int? index)
        addFeed,
    required TResult Function(String userCollege, FeedModel feedModel,
            int index, bool isDeletedFromApproved)
        deleteFeed,
    required TResult Function(
            String userCollege, FeedModel feedModel, int index)
        declineFeed,
    required TResult Function(
            String userCollege, FeedModel feedModel, int index)
        approveFeed,
  }) {
    return getUserPosts(coolUser, status, selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userCollege)? getApprovedPosts,
    TResult Function(String userCollege)? getMoreApprovedPosts,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getPublishingPosts,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getMorePublishingPosts,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getUserPosts,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getMoreUserPosts,
    TResult Function(String? userCollege, FeedModel? feedModel,
            File? feedImageFile, File? feedLogoFile, int? index)?
        addFeed,
    TResult Function(String userCollege, FeedModel feedModel, int index,
            bool isDeletedFromApproved)?
        deleteFeed,
    TResult Function(String userCollege, FeedModel feedModel, int index)?
        declineFeed,
    TResult Function(String userCollege, FeedModel feedModel, int index)?
        approveFeed,
    required TResult orElse(),
  }) {
    if (getUserPosts != null) {
      return getUserPosts(coolUser, status, selectedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetApprovedPosts value) getApprovedPosts,
    required TResult Function(_GetMoreApprovedPosts value) getMoreApprovedPosts,
    required TResult Function(_GetPublishingPosts value) getPublishingPosts,
    required TResult Function(_GetMorePublishingPosts value)
        getMorePublishingPosts,
    required TResult Function(_GetUserPosts value) getUserPosts,
    required TResult Function(_GetMoreUserPosts value) getMoreUserPosts,
    required TResult Function(_AddFeed value) addFeed,
    required TResult Function(_DeleteFeed value) deleteFeed,
    required TResult Function(_DeclineFeed value) declineFeed,
    required TResult Function(_ApproveFeed value) approveFeed,
  }) {
    return getUserPosts(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetApprovedPosts value)? getApprovedPosts,
    TResult Function(_GetMoreApprovedPosts value)? getMoreApprovedPosts,
    TResult Function(_GetPublishingPosts value)? getPublishingPosts,
    TResult Function(_GetMorePublishingPosts value)? getMorePublishingPosts,
    TResult Function(_GetUserPosts value)? getUserPosts,
    TResult Function(_GetMoreUserPosts value)? getMoreUserPosts,
    TResult Function(_AddFeed value)? addFeed,
    TResult Function(_DeleteFeed value)? deleteFeed,
    TResult Function(_DeclineFeed value)? declineFeed,
    TResult Function(_ApproveFeed value)? approveFeed,
    required TResult orElse(),
  }) {
    if (getUserPosts != null) {
      return getUserPosts(this);
    }
    return orElse();
  }
}

abstract class _GetUserPosts implements FeedEvent {
  const factory _GetUserPosts(
      {required CoolUser coolUser,
      String? status,
      DateTime? selectedDate}) = _$_GetUserPosts;

  CoolUser get coolUser => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  DateTime? get selectedDate => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetUserPostsCopyWith<_GetUserPosts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetMoreUserPostsCopyWith<$Res> {
  factory _$GetMoreUserPostsCopyWith(
          _GetMoreUserPosts value, $Res Function(_GetMoreUserPosts) then) =
      __$GetMoreUserPostsCopyWithImpl<$Res>;
  $Res call({CoolUser coolUser, String? status, DateTime? selectedDate});
}

/// @nodoc
class __$GetMoreUserPostsCopyWithImpl<$Res>
    extends _$FeedEventCopyWithImpl<$Res>
    implements _$GetMoreUserPostsCopyWith<$Res> {
  __$GetMoreUserPostsCopyWithImpl(
      _GetMoreUserPosts _value, $Res Function(_GetMoreUserPosts) _then)
      : super(_value, (v) => _then(v as _GetMoreUserPosts));

  @override
  _GetMoreUserPosts get _value => super._value as _GetMoreUserPosts;

  @override
  $Res call({
    Object? coolUser = freezed,
    Object? status = freezed,
    Object? selectedDate = freezed,
  }) {
    return _then(_GetMoreUserPosts(
      coolUser: coolUser == freezed
          ? _value.coolUser
          : coolUser // ignore: cast_nullable_to_non_nullable
              as CoolUser,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedDate: selectedDate == freezed
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_GetMoreUserPosts implements _GetMoreUserPosts {
  const _$_GetMoreUserPosts(
      {required this.coolUser, this.status, this.selectedDate});

  @override
  final CoolUser coolUser;
  @override
  final String? status;
  @override
  final DateTime? selectedDate;

  @override
  String toString() {
    return 'FeedEvent.getMoreUserPosts(coolUser: $coolUser, status: $status, selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetMoreUserPosts &&
            (identical(other.coolUser, coolUser) ||
                const DeepCollectionEquality()
                    .equals(other.coolUser, coolUser)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.selectedDate, selectedDate) ||
                const DeepCollectionEquality()
                    .equals(other.selectedDate, selectedDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(coolUser) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(selectedDate);

  @JsonKey(ignore: true)
  @override
  _$GetMoreUserPostsCopyWith<_GetMoreUserPosts> get copyWith =>
      __$GetMoreUserPostsCopyWithImpl<_GetMoreUserPosts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userCollege) getApprovedPosts,
    required TResult Function(String userCollege) getMoreApprovedPosts,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getPublishingPosts,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getMorePublishingPosts,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getUserPosts,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getMoreUserPosts,
    required TResult Function(String? userCollege, FeedModel? feedModel,
            File? feedImageFile, File? feedLogoFile, int? index)
        addFeed,
    required TResult Function(String userCollege, FeedModel feedModel,
            int index, bool isDeletedFromApproved)
        deleteFeed,
    required TResult Function(
            String userCollege, FeedModel feedModel, int index)
        declineFeed,
    required TResult Function(
            String userCollege, FeedModel feedModel, int index)
        approveFeed,
  }) {
    return getMoreUserPosts(coolUser, status, selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userCollege)? getApprovedPosts,
    TResult Function(String userCollege)? getMoreApprovedPosts,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getPublishingPosts,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getMorePublishingPosts,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getUserPosts,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getMoreUserPosts,
    TResult Function(String? userCollege, FeedModel? feedModel,
            File? feedImageFile, File? feedLogoFile, int? index)?
        addFeed,
    TResult Function(String userCollege, FeedModel feedModel, int index,
            bool isDeletedFromApproved)?
        deleteFeed,
    TResult Function(String userCollege, FeedModel feedModel, int index)?
        declineFeed,
    TResult Function(String userCollege, FeedModel feedModel, int index)?
        approveFeed,
    required TResult orElse(),
  }) {
    if (getMoreUserPosts != null) {
      return getMoreUserPosts(coolUser, status, selectedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetApprovedPosts value) getApprovedPosts,
    required TResult Function(_GetMoreApprovedPosts value) getMoreApprovedPosts,
    required TResult Function(_GetPublishingPosts value) getPublishingPosts,
    required TResult Function(_GetMorePublishingPosts value)
        getMorePublishingPosts,
    required TResult Function(_GetUserPosts value) getUserPosts,
    required TResult Function(_GetMoreUserPosts value) getMoreUserPosts,
    required TResult Function(_AddFeed value) addFeed,
    required TResult Function(_DeleteFeed value) deleteFeed,
    required TResult Function(_DeclineFeed value) declineFeed,
    required TResult Function(_ApproveFeed value) approveFeed,
  }) {
    return getMoreUserPosts(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetApprovedPosts value)? getApprovedPosts,
    TResult Function(_GetMoreApprovedPosts value)? getMoreApprovedPosts,
    TResult Function(_GetPublishingPosts value)? getPublishingPosts,
    TResult Function(_GetMorePublishingPosts value)? getMorePublishingPosts,
    TResult Function(_GetUserPosts value)? getUserPosts,
    TResult Function(_GetMoreUserPosts value)? getMoreUserPosts,
    TResult Function(_AddFeed value)? addFeed,
    TResult Function(_DeleteFeed value)? deleteFeed,
    TResult Function(_DeclineFeed value)? declineFeed,
    TResult Function(_ApproveFeed value)? approveFeed,
    required TResult orElse(),
  }) {
    if (getMoreUserPosts != null) {
      return getMoreUserPosts(this);
    }
    return orElse();
  }
}

abstract class _GetMoreUserPosts implements FeedEvent {
  const factory _GetMoreUserPosts(
      {required CoolUser coolUser,
      String? status,
      DateTime? selectedDate}) = _$_GetMoreUserPosts;

  CoolUser get coolUser => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  DateTime? get selectedDate => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetMoreUserPostsCopyWith<_GetMoreUserPosts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddFeedCopyWith<$Res> {
  factory _$AddFeedCopyWith(_AddFeed value, $Res Function(_AddFeed) then) =
      __$AddFeedCopyWithImpl<$Res>;
  $Res call(
      {String? userCollege,
      FeedModel? feedModel,
      File? feedImageFile,
      File? feedLogoFile,
      int? index});
}

/// @nodoc
class __$AddFeedCopyWithImpl<$Res> extends _$FeedEventCopyWithImpl<$Res>
    implements _$AddFeedCopyWith<$Res> {
  __$AddFeedCopyWithImpl(_AddFeed _value, $Res Function(_AddFeed) _then)
      : super(_value, (v) => _then(v as _AddFeed));

  @override
  _AddFeed get _value => super._value as _AddFeed;

  @override
  $Res call({
    Object? userCollege = freezed,
    Object? feedModel = freezed,
    Object? feedImageFile = freezed,
    Object? feedLogoFile = freezed,
    Object? index = freezed,
  }) {
    return _then(_AddFeed(
      userCollege: userCollege == freezed
          ? _value.userCollege
          : userCollege // ignore: cast_nullable_to_non_nullable
              as String?,
      feedModel: feedModel == freezed
          ? _value.feedModel
          : feedModel // ignore: cast_nullable_to_non_nullable
              as FeedModel?,
      feedImageFile: feedImageFile == freezed
          ? _value.feedImageFile
          : feedImageFile // ignore: cast_nullable_to_non_nullable
              as File?,
      feedLogoFile: feedLogoFile == freezed
          ? _value.feedLogoFile
          : feedLogoFile // ignore: cast_nullable_to_non_nullable
              as File?,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_AddFeed implements _AddFeed {
  const _$_AddFeed(
      {this.userCollege,
      this.feedModel,
      this.feedImageFile,
      this.feedLogoFile,
      this.index});

  @override
  final String? userCollege;
  @override
  final FeedModel? feedModel;
  @override
  final File? feedImageFile;
  @override
  final File? feedLogoFile;
  @override
  final int? index;

  @override
  String toString() {
    return 'FeedEvent.addFeed(userCollege: $userCollege, feedModel: $feedModel, feedImageFile: $feedImageFile, feedLogoFile: $feedLogoFile, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddFeed &&
            (identical(other.userCollege, userCollege) ||
                const DeepCollectionEquality()
                    .equals(other.userCollege, userCollege)) &&
            (identical(other.feedModel, feedModel) ||
                const DeepCollectionEquality()
                    .equals(other.feedModel, feedModel)) &&
            (identical(other.feedImageFile, feedImageFile) ||
                const DeepCollectionEquality()
                    .equals(other.feedImageFile, feedImageFile)) &&
            (identical(other.feedLogoFile, feedLogoFile) ||
                const DeepCollectionEquality()
                    .equals(other.feedLogoFile, feedLogoFile)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userCollege) ^
      const DeepCollectionEquality().hash(feedModel) ^
      const DeepCollectionEquality().hash(feedImageFile) ^
      const DeepCollectionEquality().hash(feedLogoFile) ^
      const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$AddFeedCopyWith<_AddFeed> get copyWith =>
      __$AddFeedCopyWithImpl<_AddFeed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userCollege) getApprovedPosts,
    required TResult Function(String userCollege) getMoreApprovedPosts,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getPublishingPosts,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getMorePublishingPosts,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getUserPosts,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getMoreUserPosts,
    required TResult Function(String? userCollege, FeedModel? feedModel,
            File? feedImageFile, File? feedLogoFile, int? index)
        addFeed,
    required TResult Function(String userCollege, FeedModel feedModel,
            int index, bool isDeletedFromApproved)
        deleteFeed,
    required TResult Function(
            String userCollege, FeedModel feedModel, int index)
        declineFeed,
    required TResult Function(
            String userCollege, FeedModel feedModel, int index)
        approveFeed,
  }) {
    return addFeed(userCollege, feedModel, feedImageFile, feedLogoFile, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userCollege)? getApprovedPosts,
    TResult Function(String userCollege)? getMoreApprovedPosts,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getPublishingPosts,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getMorePublishingPosts,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getUserPosts,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getMoreUserPosts,
    TResult Function(String? userCollege, FeedModel? feedModel,
            File? feedImageFile, File? feedLogoFile, int? index)?
        addFeed,
    TResult Function(String userCollege, FeedModel feedModel, int index,
            bool isDeletedFromApproved)?
        deleteFeed,
    TResult Function(String userCollege, FeedModel feedModel, int index)?
        declineFeed,
    TResult Function(String userCollege, FeedModel feedModel, int index)?
        approveFeed,
    required TResult orElse(),
  }) {
    if (addFeed != null) {
      return addFeed(
          userCollege, feedModel, feedImageFile, feedLogoFile, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetApprovedPosts value) getApprovedPosts,
    required TResult Function(_GetMoreApprovedPosts value) getMoreApprovedPosts,
    required TResult Function(_GetPublishingPosts value) getPublishingPosts,
    required TResult Function(_GetMorePublishingPosts value)
        getMorePublishingPosts,
    required TResult Function(_GetUserPosts value) getUserPosts,
    required TResult Function(_GetMoreUserPosts value) getMoreUserPosts,
    required TResult Function(_AddFeed value) addFeed,
    required TResult Function(_DeleteFeed value) deleteFeed,
    required TResult Function(_DeclineFeed value) declineFeed,
    required TResult Function(_ApproveFeed value) approveFeed,
  }) {
    return addFeed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetApprovedPosts value)? getApprovedPosts,
    TResult Function(_GetMoreApprovedPosts value)? getMoreApprovedPosts,
    TResult Function(_GetPublishingPosts value)? getPublishingPosts,
    TResult Function(_GetMorePublishingPosts value)? getMorePublishingPosts,
    TResult Function(_GetUserPosts value)? getUserPosts,
    TResult Function(_GetMoreUserPosts value)? getMoreUserPosts,
    TResult Function(_AddFeed value)? addFeed,
    TResult Function(_DeleteFeed value)? deleteFeed,
    TResult Function(_DeclineFeed value)? declineFeed,
    TResult Function(_ApproveFeed value)? approveFeed,
    required TResult orElse(),
  }) {
    if (addFeed != null) {
      return addFeed(this);
    }
    return orElse();
  }
}

abstract class _AddFeed implements FeedEvent {
  const factory _AddFeed(
      {String? userCollege,
      FeedModel? feedModel,
      File? feedImageFile,
      File? feedLogoFile,
      int? index}) = _$_AddFeed;

  String? get userCollege => throw _privateConstructorUsedError;
  FeedModel? get feedModel => throw _privateConstructorUsedError;
  File? get feedImageFile => throw _privateConstructorUsedError;
  File? get feedLogoFile => throw _privateConstructorUsedError;
  int? get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddFeedCopyWith<_AddFeed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteFeedCopyWith<$Res> {
  factory _$DeleteFeedCopyWith(
          _DeleteFeed value, $Res Function(_DeleteFeed) then) =
      __$DeleteFeedCopyWithImpl<$Res>;
  $Res call(
      {String userCollege,
      FeedModel feedModel,
      int index,
      bool isDeletedFromApproved});
}

/// @nodoc
class __$DeleteFeedCopyWithImpl<$Res> extends _$FeedEventCopyWithImpl<$Res>
    implements _$DeleteFeedCopyWith<$Res> {
  __$DeleteFeedCopyWithImpl(
      _DeleteFeed _value, $Res Function(_DeleteFeed) _then)
      : super(_value, (v) => _then(v as _DeleteFeed));

  @override
  _DeleteFeed get _value => super._value as _DeleteFeed;

  @override
  $Res call({
    Object? userCollege = freezed,
    Object? feedModel = freezed,
    Object? index = freezed,
    Object? isDeletedFromApproved = freezed,
  }) {
    return _then(_DeleteFeed(
      userCollege: userCollege == freezed
          ? _value.userCollege
          : userCollege // ignore: cast_nullable_to_non_nullable
              as String,
      feedModel: feedModel == freezed
          ? _value.feedModel
          : feedModel // ignore: cast_nullable_to_non_nullable
              as FeedModel,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      isDeletedFromApproved: isDeletedFromApproved == freezed
          ? _value.isDeletedFromApproved
          : isDeletedFromApproved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DeleteFeed implements _DeleteFeed {
  const _$_DeleteFeed(
      {required this.userCollege,
      required this.feedModel,
      required this.index,
      required this.isDeletedFromApproved});

  @override
  final String userCollege;
  @override
  final FeedModel feedModel;
  @override
  final int index;
  @override //else from published
  final bool isDeletedFromApproved;

  @override
  String toString() {
    return 'FeedEvent.deleteFeed(userCollege: $userCollege, feedModel: $feedModel, index: $index, isDeletedFromApproved: $isDeletedFromApproved)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteFeed &&
            (identical(other.userCollege, userCollege) ||
                const DeepCollectionEquality()
                    .equals(other.userCollege, userCollege)) &&
            (identical(other.feedModel, feedModel) ||
                const DeepCollectionEquality()
                    .equals(other.feedModel, feedModel)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.isDeletedFromApproved, isDeletedFromApproved) ||
                const DeepCollectionEquality().equals(
                    other.isDeletedFromApproved, isDeletedFromApproved)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userCollege) ^
      const DeepCollectionEquality().hash(feedModel) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(isDeletedFromApproved);

  @JsonKey(ignore: true)
  @override
  _$DeleteFeedCopyWith<_DeleteFeed> get copyWith =>
      __$DeleteFeedCopyWithImpl<_DeleteFeed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userCollege) getApprovedPosts,
    required TResult Function(String userCollege) getMoreApprovedPosts,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getPublishingPosts,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getMorePublishingPosts,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getUserPosts,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getMoreUserPosts,
    required TResult Function(String? userCollege, FeedModel? feedModel,
            File? feedImageFile, File? feedLogoFile, int? index)
        addFeed,
    required TResult Function(String userCollege, FeedModel feedModel,
            int index, bool isDeletedFromApproved)
        deleteFeed,
    required TResult Function(
            String userCollege, FeedModel feedModel, int index)
        declineFeed,
    required TResult Function(
            String userCollege, FeedModel feedModel, int index)
        approveFeed,
  }) {
    return deleteFeed(userCollege, feedModel, index, isDeletedFromApproved);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userCollege)? getApprovedPosts,
    TResult Function(String userCollege)? getMoreApprovedPosts,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getPublishingPosts,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getMorePublishingPosts,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getUserPosts,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getMoreUserPosts,
    TResult Function(String? userCollege, FeedModel? feedModel,
            File? feedImageFile, File? feedLogoFile, int? index)?
        addFeed,
    TResult Function(String userCollege, FeedModel feedModel, int index,
            bool isDeletedFromApproved)?
        deleteFeed,
    TResult Function(String userCollege, FeedModel feedModel, int index)?
        declineFeed,
    TResult Function(String userCollege, FeedModel feedModel, int index)?
        approveFeed,
    required TResult orElse(),
  }) {
    if (deleteFeed != null) {
      return deleteFeed(userCollege, feedModel, index, isDeletedFromApproved);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetApprovedPosts value) getApprovedPosts,
    required TResult Function(_GetMoreApprovedPosts value) getMoreApprovedPosts,
    required TResult Function(_GetPublishingPosts value) getPublishingPosts,
    required TResult Function(_GetMorePublishingPosts value)
        getMorePublishingPosts,
    required TResult Function(_GetUserPosts value) getUserPosts,
    required TResult Function(_GetMoreUserPosts value) getMoreUserPosts,
    required TResult Function(_AddFeed value) addFeed,
    required TResult Function(_DeleteFeed value) deleteFeed,
    required TResult Function(_DeclineFeed value) declineFeed,
    required TResult Function(_ApproveFeed value) approveFeed,
  }) {
    return deleteFeed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetApprovedPosts value)? getApprovedPosts,
    TResult Function(_GetMoreApprovedPosts value)? getMoreApprovedPosts,
    TResult Function(_GetPublishingPosts value)? getPublishingPosts,
    TResult Function(_GetMorePublishingPosts value)? getMorePublishingPosts,
    TResult Function(_GetUserPosts value)? getUserPosts,
    TResult Function(_GetMoreUserPosts value)? getMoreUserPosts,
    TResult Function(_AddFeed value)? addFeed,
    TResult Function(_DeleteFeed value)? deleteFeed,
    TResult Function(_DeclineFeed value)? declineFeed,
    TResult Function(_ApproveFeed value)? approveFeed,
    required TResult orElse(),
  }) {
    if (deleteFeed != null) {
      return deleteFeed(this);
    }
    return orElse();
  }
}

abstract class _DeleteFeed implements FeedEvent {
  const factory _DeleteFeed(
      {required String userCollege,
      required FeedModel feedModel,
      required int index,
      required bool isDeletedFromApproved}) = _$_DeleteFeed;

  String get userCollege => throw _privateConstructorUsedError;
  FeedModel get feedModel => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError; //else from published
  bool get isDeletedFromApproved => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteFeedCopyWith<_DeleteFeed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeclineFeedCopyWith<$Res> {
  factory _$DeclineFeedCopyWith(
          _DeclineFeed value, $Res Function(_DeclineFeed) then) =
      __$DeclineFeedCopyWithImpl<$Res>;
  $Res call({String userCollege, FeedModel feedModel, int index});
}

/// @nodoc
class __$DeclineFeedCopyWithImpl<$Res> extends _$FeedEventCopyWithImpl<$Res>
    implements _$DeclineFeedCopyWith<$Res> {
  __$DeclineFeedCopyWithImpl(
      _DeclineFeed _value, $Res Function(_DeclineFeed) _then)
      : super(_value, (v) => _then(v as _DeclineFeed));

  @override
  _DeclineFeed get _value => super._value as _DeclineFeed;

  @override
  $Res call({
    Object? userCollege = freezed,
    Object? feedModel = freezed,
    Object? index = freezed,
  }) {
    return _then(_DeclineFeed(
      userCollege: userCollege == freezed
          ? _value.userCollege
          : userCollege // ignore: cast_nullable_to_non_nullable
              as String,
      feedModel: feedModel == freezed
          ? _value.feedModel
          : feedModel // ignore: cast_nullable_to_non_nullable
              as FeedModel,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeclineFeed implements _DeclineFeed {
  const _$_DeclineFeed(
      {required this.userCollege,
      required this.feedModel,
      required this.index});

  @override
  final String userCollege;
  @override
  final FeedModel feedModel;
  @override
  final int index;

  @override
  String toString() {
    return 'FeedEvent.declineFeed(userCollege: $userCollege, feedModel: $feedModel, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeclineFeed &&
            (identical(other.userCollege, userCollege) ||
                const DeepCollectionEquality()
                    .equals(other.userCollege, userCollege)) &&
            (identical(other.feedModel, feedModel) ||
                const DeepCollectionEquality()
                    .equals(other.feedModel, feedModel)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userCollege) ^
      const DeepCollectionEquality().hash(feedModel) ^
      const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$DeclineFeedCopyWith<_DeclineFeed> get copyWith =>
      __$DeclineFeedCopyWithImpl<_DeclineFeed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userCollege) getApprovedPosts,
    required TResult Function(String userCollege) getMoreApprovedPosts,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getPublishingPosts,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getMorePublishingPosts,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getUserPosts,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getMoreUserPosts,
    required TResult Function(String? userCollege, FeedModel? feedModel,
            File? feedImageFile, File? feedLogoFile, int? index)
        addFeed,
    required TResult Function(String userCollege, FeedModel feedModel,
            int index, bool isDeletedFromApproved)
        deleteFeed,
    required TResult Function(
            String userCollege, FeedModel feedModel, int index)
        declineFeed,
    required TResult Function(
            String userCollege, FeedModel feedModel, int index)
        approveFeed,
  }) {
    return declineFeed(userCollege, feedModel, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userCollege)? getApprovedPosts,
    TResult Function(String userCollege)? getMoreApprovedPosts,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getPublishingPosts,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getMorePublishingPosts,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getUserPosts,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getMoreUserPosts,
    TResult Function(String? userCollege, FeedModel? feedModel,
            File? feedImageFile, File? feedLogoFile, int? index)?
        addFeed,
    TResult Function(String userCollege, FeedModel feedModel, int index,
            bool isDeletedFromApproved)?
        deleteFeed,
    TResult Function(String userCollege, FeedModel feedModel, int index)?
        declineFeed,
    TResult Function(String userCollege, FeedModel feedModel, int index)?
        approveFeed,
    required TResult orElse(),
  }) {
    if (declineFeed != null) {
      return declineFeed(userCollege, feedModel, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetApprovedPosts value) getApprovedPosts,
    required TResult Function(_GetMoreApprovedPosts value) getMoreApprovedPosts,
    required TResult Function(_GetPublishingPosts value) getPublishingPosts,
    required TResult Function(_GetMorePublishingPosts value)
        getMorePublishingPosts,
    required TResult Function(_GetUserPosts value) getUserPosts,
    required TResult Function(_GetMoreUserPosts value) getMoreUserPosts,
    required TResult Function(_AddFeed value) addFeed,
    required TResult Function(_DeleteFeed value) deleteFeed,
    required TResult Function(_DeclineFeed value) declineFeed,
    required TResult Function(_ApproveFeed value) approveFeed,
  }) {
    return declineFeed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetApprovedPosts value)? getApprovedPosts,
    TResult Function(_GetMoreApprovedPosts value)? getMoreApprovedPosts,
    TResult Function(_GetPublishingPosts value)? getPublishingPosts,
    TResult Function(_GetMorePublishingPosts value)? getMorePublishingPosts,
    TResult Function(_GetUserPosts value)? getUserPosts,
    TResult Function(_GetMoreUserPosts value)? getMoreUserPosts,
    TResult Function(_AddFeed value)? addFeed,
    TResult Function(_DeleteFeed value)? deleteFeed,
    TResult Function(_DeclineFeed value)? declineFeed,
    TResult Function(_ApproveFeed value)? approveFeed,
    required TResult orElse(),
  }) {
    if (declineFeed != null) {
      return declineFeed(this);
    }
    return orElse();
  }
}

abstract class _DeclineFeed implements FeedEvent {
  const factory _DeclineFeed(
      {required String userCollege,
      required FeedModel feedModel,
      required int index}) = _$_DeclineFeed;

  String get userCollege => throw _privateConstructorUsedError;
  FeedModel get feedModel => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeclineFeedCopyWith<_DeclineFeed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ApproveFeedCopyWith<$Res> {
  factory _$ApproveFeedCopyWith(
          _ApproveFeed value, $Res Function(_ApproveFeed) then) =
      __$ApproveFeedCopyWithImpl<$Res>;
  $Res call({String userCollege, FeedModel feedModel, int index});
}

/// @nodoc
class __$ApproveFeedCopyWithImpl<$Res> extends _$FeedEventCopyWithImpl<$Res>
    implements _$ApproveFeedCopyWith<$Res> {
  __$ApproveFeedCopyWithImpl(
      _ApproveFeed _value, $Res Function(_ApproveFeed) _then)
      : super(_value, (v) => _then(v as _ApproveFeed));

  @override
  _ApproveFeed get _value => super._value as _ApproveFeed;

  @override
  $Res call({
    Object? userCollege = freezed,
    Object? feedModel = freezed,
    Object? index = freezed,
  }) {
    return _then(_ApproveFeed(
      userCollege: userCollege == freezed
          ? _value.userCollege
          : userCollege // ignore: cast_nullable_to_non_nullable
              as String,
      feedModel: feedModel == freezed
          ? _value.feedModel
          : feedModel // ignore: cast_nullable_to_non_nullable
              as FeedModel,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ApproveFeed implements _ApproveFeed {
  const _$_ApproveFeed(
      {required this.userCollege,
      required this.feedModel,
      required this.index});

  @override
  final String userCollege;
  @override
  final FeedModel feedModel;
  @override
  final int index;

  @override
  String toString() {
    return 'FeedEvent.approveFeed(userCollege: $userCollege, feedModel: $feedModel, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApproveFeed &&
            (identical(other.userCollege, userCollege) ||
                const DeepCollectionEquality()
                    .equals(other.userCollege, userCollege)) &&
            (identical(other.feedModel, feedModel) ||
                const DeepCollectionEquality()
                    .equals(other.feedModel, feedModel)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userCollege) ^
      const DeepCollectionEquality().hash(feedModel) ^
      const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$ApproveFeedCopyWith<_ApproveFeed> get copyWith =>
      __$ApproveFeedCopyWithImpl<_ApproveFeed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userCollege) getApprovedPosts,
    required TResult Function(String userCollege) getMoreApprovedPosts,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getPublishingPosts,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getMorePublishingPosts,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getUserPosts,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getMoreUserPosts,
    required TResult Function(String? userCollege, FeedModel? feedModel,
            File? feedImageFile, File? feedLogoFile, int? index)
        addFeed,
    required TResult Function(String userCollege, FeedModel feedModel,
            int index, bool isDeletedFromApproved)
        deleteFeed,
    required TResult Function(
            String userCollege, FeedModel feedModel, int index)
        declineFeed,
    required TResult Function(
            String userCollege, FeedModel feedModel, int index)
        approveFeed,
  }) {
    return approveFeed(userCollege, feedModel, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userCollege)? getApprovedPosts,
    TResult Function(String userCollege)? getMoreApprovedPosts,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getPublishingPosts,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getMorePublishingPosts,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getUserPosts,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getMoreUserPosts,
    TResult Function(String? userCollege, FeedModel? feedModel,
            File? feedImageFile, File? feedLogoFile, int? index)?
        addFeed,
    TResult Function(String userCollege, FeedModel feedModel, int index,
            bool isDeletedFromApproved)?
        deleteFeed,
    TResult Function(String userCollege, FeedModel feedModel, int index)?
        declineFeed,
    TResult Function(String userCollege, FeedModel feedModel, int index)?
        approveFeed,
    required TResult orElse(),
  }) {
    if (approveFeed != null) {
      return approveFeed(userCollege, feedModel, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetApprovedPosts value) getApprovedPosts,
    required TResult Function(_GetMoreApprovedPosts value) getMoreApprovedPosts,
    required TResult Function(_GetPublishingPosts value) getPublishingPosts,
    required TResult Function(_GetMorePublishingPosts value)
        getMorePublishingPosts,
    required TResult Function(_GetUserPosts value) getUserPosts,
    required TResult Function(_GetMoreUserPosts value) getMoreUserPosts,
    required TResult Function(_AddFeed value) addFeed,
    required TResult Function(_DeleteFeed value) deleteFeed,
    required TResult Function(_DeclineFeed value) declineFeed,
    required TResult Function(_ApproveFeed value) approveFeed,
  }) {
    return approveFeed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetApprovedPosts value)? getApprovedPosts,
    TResult Function(_GetMoreApprovedPosts value)? getMoreApprovedPosts,
    TResult Function(_GetPublishingPosts value)? getPublishingPosts,
    TResult Function(_GetMorePublishingPosts value)? getMorePublishingPosts,
    TResult Function(_GetUserPosts value)? getUserPosts,
    TResult Function(_GetMoreUserPosts value)? getMoreUserPosts,
    TResult Function(_AddFeed value)? addFeed,
    TResult Function(_DeleteFeed value)? deleteFeed,
    TResult Function(_DeclineFeed value)? declineFeed,
    TResult Function(_ApproveFeed value)? approveFeed,
    required TResult orElse(),
  }) {
    if (approveFeed != null) {
      return approveFeed(this);
    }
    return orElse();
  }
}

abstract class _ApproveFeed implements FeedEvent {
  const factory _ApproveFeed(
      {required String userCollege,
      required FeedModel feedModel,
      required int index}) = _$_ApproveFeed;

  String get userCollege => throw _privateConstructorUsedError;
  FeedModel get feedModel => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ApproveFeedCopyWith<_ApproveFeed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FeedStateTearOff {
  const _$FeedStateTearOff();

  _FeedState call(
      {required bool hasMoreApprovedPosts,
      required bool hasMorePublishingPosts,
      required bool hasMoreUserPosts,
      required bool isApprovedPostsLoading,
      required bool isPublishingPostsLoading,
      required bool isUserPostsLoading,
      required List<FeedModel> publishingPostsList,
      required List<FeedModel> approvedPostsList,
      required List<FeedModel> userPostsList,
      required bool fetchMoreApprovedPostsLoading,
      required bool fetchMorePublishingPostsLoading,
      required bool fetchMoreUserPostsLoading,
      required bool isApprovingBlog,
      required bool isDecliningBlog,
      required bool isAddingFeed,
      required Option<Either<FirebaseFailure, String>> feedActionResultOpt,
      required bool isDeletingFeed}) {
    return _FeedState(
      hasMoreApprovedPosts: hasMoreApprovedPosts,
      hasMorePublishingPosts: hasMorePublishingPosts,
      hasMoreUserPosts: hasMoreUserPosts,
      isApprovedPostsLoading: isApprovedPostsLoading,
      isPublishingPostsLoading: isPublishingPostsLoading,
      isUserPostsLoading: isUserPostsLoading,
      publishingPostsList: publishingPostsList,
      approvedPostsList: approvedPostsList,
      userPostsList: userPostsList,
      fetchMoreApprovedPostsLoading: fetchMoreApprovedPostsLoading,
      fetchMorePublishingPostsLoading: fetchMorePublishingPostsLoading,
      fetchMoreUserPostsLoading: fetchMoreUserPostsLoading,
      isApprovingBlog: isApprovingBlog,
      isDecliningBlog: isDecliningBlog,
      isAddingFeed: isAddingFeed,
      feedActionResultOpt: feedActionResultOpt,
      isDeletingFeed: isDeletingFeed,
    );
  }
}

/// @nodoc
const $FeedState = _$FeedStateTearOff();

/// @nodoc
mixin _$FeedState {
  bool get hasMoreApprovedPosts => throw _privateConstructorUsedError;
  bool get hasMorePublishingPosts => throw _privateConstructorUsedError;
  bool get hasMoreUserPosts => throw _privateConstructorUsedError;
  bool get isApprovedPostsLoading => throw _privateConstructorUsedError;
  bool get isPublishingPostsLoading => throw _privateConstructorUsedError;
  bool get isUserPostsLoading => throw _privateConstructorUsedError;
  List<FeedModel> get publishingPostsList => throw _privateConstructorUsedError;
  List<FeedModel> get approvedPostsList => throw _privateConstructorUsedError;
  List<FeedModel> get userPostsList =>
      throw _privateConstructorUsedError; //this loading will be used when adding posts
  bool get fetchMoreApprovedPostsLoading => throw _privateConstructorUsedError;
  bool get fetchMorePublishingPostsLoading =>
      throw _privateConstructorUsedError;
  bool get fetchMoreUserPostsLoading => throw _privateConstructorUsedError;
  bool get isApprovingBlog => throw _privateConstructorUsedError;
  bool get isDecliningBlog => throw _privateConstructorUsedError;
  bool get isAddingFeed => throw _privateConstructorUsedError;
  Option<Either<FirebaseFailure, String>> get feedActionResultOpt =>
      throw _privateConstructorUsedError;
  bool get isDeletingFeed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FeedStateCopyWith<FeedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedStateCopyWith<$Res> {
  factory $FeedStateCopyWith(FeedState value, $Res Function(FeedState) then) =
      _$FeedStateCopyWithImpl<$Res>;
  $Res call(
      {bool hasMoreApprovedPosts,
      bool hasMorePublishingPosts,
      bool hasMoreUserPosts,
      bool isApprovedPostsLoading,
      bool isPublishingPostsLoading,
      bool isUserPostsLoading,
      List<FeedModel> publishingPostsList,
      List<FeedModel> approvedPostsList,
      List<FeedModel> userPostsList,
      bool fetchMoreApprovedPostsLoading,
      bool fetchMorePublishingPostsLoading,
      bool fetchMoreUserPostsLoading,
      bool isApprovingBlog,
      bool isDecliningBlog,
      bool isAddingFeed,
      Option<Either<FirebaseFailure, String>> feedActionResultOpt,
      bool isDeletingFeed});
}

/// @nodoc
class _$FeedStateCopyWithImpl<$Res> implements $FeedStateCopyWith<$Res> {
  _$FeedStateCopyWithImpl(this._value, this._then);

  final FeedState _value;
  // ignore: unused_field
  final $Res Function(FeedState) _then;

  @override
  $Res call({
    Object? hasMoreApprovedPosts = freezed,
    Object? hasMorePublishingPosts = freezed,
    Object? hasMoreUserPosts = freezed,
    Object? isApprovedPostsLoading = freezed,
    Object? isPublishingPostsLoading = freezed,
    Object? isUserPostsLoading = freezed,
    Object? publishingPostsList = freezed,
    Object? approvedPostsList = freezed,
    Object? userPostsList = freezed,
    Object? fetchMoreApprovedPostsLoading = freezed,
    Object? fetchMorePublishingPostsLoading = freezed,
    Object? fetchMoreUserPostsLoading = freezed,
    Object? isApprovingBlog = freezed,
    Object? isDecliningBlog = freezed,
    Object? isAddingFeed = freezed,
    Object? feedActionResultOpt = freezed,
    Object? isDeletingFeed = freezed,
  }) {
    return _then(_value.copyWith(
      hasMoreApprovedPosts: hasMoreApprovedPosts == freezed
          ? _value.hasMoreApprovedPosts
          : hasMoreApprovedPosts // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMorePublishingPosts: hasMorePublishingPosts == freezed
          ? _value.hasMorePublishingPosts
          : hasMorePublishingPosts // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMoreUserPosts: hasMoreUserPosts == freezed
          ? _value.hasMoreUserPosts
          : hasMoreUserPosts // ignore: cast_nullable_to_non_nullable
              as bool,
      isApprovedPostsLoading: isApprovedPostsLoading == freezed
          ? _value.isApprovedPostsLoading
          : isApprovedPostsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublishingPostsLoading: isPublishingPostsLoading == freezed
          ? _value.isPublishingPostsLoading
          : isPublishingPostsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isUserPostsLoading: isUserPostsLoading == freezed
          ? _value.isUserPostsLoading
          : isUserPostsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      publishingPostsList: publishingPostsList == freezed
          ? _value.publishingPostsList
          : publishingPostsList // ignore: cast_nullable_to_non_nullable
              as List<FeedModel>,
      approvedPostsList: approvedPostsList == freezed
          ? _value.approvedPostsList
          : approvedPostsList // ignore: cast_nullable_to_non_nullable
              as List<FeedModel>,
      userPostsList: userPostsList == freezed
          ? _value.userPostsList
          : userPostsList // ignore: cast_nullable_to_non_nullable
              as List<FeedModel>,
      fetchMoreApprovedPostsLoading: fetchMoreApprovedPostsLoading == freezed
          ? _value.fetchMoreApprovedPostsLoading
          : fetchMoreApprovedPostsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchMorePublishingPostsLoading: fetchMorePublishingPostsLoading ==
              freezed
          ? _value.fetchMorePublishingPostsLoading
          : fetchMorePublishingPostsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchMoreUserPostsLoading: fetchMoreUserPostsLoading == freezed
          ? _value.fetchMoreUserPostsLoading
          : fetchMoreUserPostsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isApprovingBlog: isApprovingBlog == freezed
          ? _value.isApprovingBlog
          : isApprovingBlog // ignore: cast_nullable_to_non_nullable
              as bool,
      isDecliningBlog: isDecliningBlog == freezed
          ? _value.isDecliningBlog
          : isDecliningBlog // ignore: cast_nullable_to_non_nullable
              as bool,
      isAddingFeed: isAddingFeed == freezed
          ? _value.isAddingFeed
          : isAddingFeed // ignore: cast_nullable_to_non_nullable
              as bool,
      feedActionResultOpt: feedActionResultOpt == freezed
          ? _value.feedActionResultOpt
          : feedActionResultOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, String>>,
      isDeletingFeed: isDeletingFeed == freezed
          ? _value.isDeletingFeed
          : isDeletingFeed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$FeedStateCopyWith<$Res> implements $FeedStateCopyWith<$Res> {
  factory _$FeedStateCopyWith(
          _FeedState value, $Res Function(_FeedState) then) =
      __$FeedStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool hasMoreApprovedPosts,
      bool hasMorePublishingPosts,
      bool hasMoreUserPosts,
      bool isApprovedPostsLoading,
      bool isPublishingPostsLoading,
      bool isUserPostsLoading,
      List<FeedModel> publishingPostsList,
      List<FeedModel> approvedPostsList,
      List<FeedModel> userPostsList,
      bool fetchMoreApprovedPostsLoading,
      bool fetchMorePublishingPostsLoading,
      bool fetchMoreUserPostsLoading,
      bool isApprovingBlog,
      bool isDecliningBlog,
      bool isAddingFeed,
      Option<Either<FirebaseFailure, String>> feedActionResultOpt,
      bool isDeletingFeed});
}

/// @nodoc
class __$FeedStateCopyWithImpl<$Res> extends _$FeedStateCopyWithImpl<$Res>
    implements _$FeedStateCopyWith<$Res> {
  __$FeedStateCopyWithImpl(_FeedState _value, $Res Function(_FeedState) _then)
      : super(_value, (v) => _then(v as _FeedState));

  @override
  _FeedState get _value => super._value as _FeedState;

  @override
  $Res call({
    Object? hasMoreApprovedPosts = freezed,
    Object? hasMorePublishingPosts = freezed,
    Object? hasMoreUserPosts = freezed,
    Object? isApprovedPostsLoading = freezed,
    Object? isPublishingPostsLoading = freezed,
    Object? isUserPostsLoading = freezed,
    Object? publishingPostsList = freezed,
    Object? approvedPostsList = freezed,
    Object? userPostsList = freezed,
    Object? fetchMoreApprovedPostsLoading = freezed,
    Object? fetchMorePublishingPostsLoading = freezed,
    Object? fetchMoreUserPostsLoading = freezed,
    Object? isApprovingBlog = freezed,
    Object? isDecliningBlog = freezed,
    Object? isAddingFeed = freezed,
    Object? feedActionResultOpt = freezed,
    Object? isDeletingFeed = freezed,
  }) {
    return _then(_FeedState(
      hasMoreApprovedPosts: hasMoreApprovedPosts == freezed
          ? _value.hasMoreApprovedPosts
          : hasMoreApprovedPosts // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMorePublishingPosts: hasMorePublishingPosts == freezed
          ? _value.hasMorePublishingPosts
          : hasMorePublishingPosts // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMoreUserPosts: hasMoreUserPosts == freezed
          ? _value.hasMoreUserPosts
          : hasMoreUserPosts // ignore: cast_nullable_to_non_nullable
              as bool,
      isApprovedPostsLoading: isApprovedPostsLoading == freezed
          ? _value.isApprovedPostsLoading
          : isApprovedPostsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublishingPostsLoading: isPublishingPostsLoading == freezed
          ? _value.isPublishingPostsLoading
          : isPublishingPostsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isUserPostsLoading: isUserPostsLoading == freezed
          ? _value.isUserPostsLoading
          : isUserPostsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      publishingPostsList: publishingPostsList == freezed
          ? _value.publishingPostsList
          : publishingPostsList // ignore: cast_nullable_to_non_nullable
              as List<FeedModel>,
      approvedPostsList: approvedPostsList == freezed
          ? _value.approvedPostsList
          : approvedPostsList // ignore: cast_nullable_to_non_nullable
              as List<FeedModel>,
      userPostsList: userPostsList == freezed
          ? _value.userPostsList
          : userPostsList // ignore: cast_nullable_to_non_nullable
              as List<FeedModel>,
      fetchMoreApprovedPostsLoading: fetchMoreApprovedPostsLoading == freezed
          ? _value.fetchMoreApprovedPostsLoading
          : fetchMoreApprovedPostsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchMorePublishingPostsLoading: fetchMorePublishingPostsLoading ==
              freezed
          ? _value.fetchMorePublishingPostsLoading
          : fetchMorePublishingPostsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchMoreUserPostsLoading: fetchMoreUserPostsLoading == freezed
          ? _value.fetchMoreUserPostsLoading
          : fetchMoreUserPostsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isApprovingBlog: isApprovingBlog == freezed
          ? _value.isApprovingBlog
          : isApprovingBlog // ignore: cast_nullable_to_non_nullable
              as bool,
      isDecliningBlog: isDecliningBlog == freezed
          ? _value.isDecliningBlog
          : isDecliningBlog // ignore: cast_nullable_to_non_nullable
              as bool,
      isAddingFeed: isAddingFeed == freezed
          ? _value.isAddingFeed
          : isAddingFeed // ignore: cast_nullable_to_non_nullable
              as bool,
      feedActionResultOpt: feedActionResultOpt == freezed
          ? _value.feedActionResultOpt
          : feedActionResultOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, String>>,
      isDeletingFeed: isDeletingFeed == freezed
          ? _value.isDeletingFeed
          : isDeletingFeed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FeedState implements _FeedState {
  const _$_FeedState(
      {required this.hasMoreApprovedPosts,
      required this.hasMorePublishingPosts,
      required this.hasMoreUserPosts,
      required this.isApprovedPostsLoading,
      required this.isPublishingPostsLoading,
      required this.isUserPostsLoading,
      required this.publishingPostsList,
      required this.approvedPostsList,
      required this.userPostsList,
      required this.fetchMoreApprovedPostsLoading,
      required this.fetchMorePublishingPostsLoading,
      required this.fetchMoreUserPostsLoading,
      required this.isApprovingBlog,
      required this.isDecliningBlog,
      required this.isAddingFeed,
      required this.feedActionResultOpt,
      required this.isDeletingFeed});

  @override
  final bool hasMoreApprovedPosts;
  @override
  final bool hasMorePublishingPosts;
  @override
  final bool hasMoreUserPosts;
  @override
  final bool isApprovedPostsLoading;
  @override
  final bool isPublishingPostsLoading;
  @override
  final bool isUserPostsLoading;
  @override
  final List<FeedModel> publishingPostsList;
  @override
  final List<FeedModel> approvedPostsList;
  @override
  final List<FeedModel> userPostsList;
  @override //this loading will be used when adding posts
  final bool fetchMoreApprovedPostsLoading;
  @override
  final bool fetchMorePublishingPostsLoading;
  @override
  final bool fetchMoreUserPostsLoading;
  @override
  final bool isApprovingBlog;
  @override
  final bool isDecliningBlog;
  @override
  final bool isAddingFeed;
  @override
  final Option<Either<FirebaseFailure, String>> feedActionResultOpt;
  @override
  final bool isDeletingFeed;

  @override
  String toString() {
    return 'FeedState(hasMoreApprovedPosts: $hasMoreApprovedPosts, hasMorePublishingPosts: $hasMorePublishingPosts, hasMoreUserPosts: $hasMoreUserPosts, isApprovedPostsLoading: $isApprovedPostsLoading, isPublishingPostsLoading: $isPublishingPostsLoading, isUserPostsLoading: $isUserPostsLoading, publishingPostsList: $publishingPostsList, approvedPostsList: $approvedPostsList, userPostsList: $userPostsList, fetchMoreApprovedPostsLoading: $fetchMoreApprovedPostsLoading, fetchMorePublishingPostsLoading: $fetchMorePublishingPostsLoading, fetchMoreUserPostsLoading: $fetchMoreUserPostsLoading, isApprovingBlog: $isApprovingBlog, isDecliningBlog: $isDecliningBlog, isAddingFeed: $isAddingFeed, feedActionResultOpt: $feedActionResultOpt, isDeletingFeed: $isDeletingFeed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FeedState &&
            (identical(other.hasMoreApprovedPosts, hasMoreApprovedPosts) ||
                const DeepCollectionEquality().equals(
                    other.hasMoreApprovedPosts, hasMoreApprovedPosts)) &&
            (identical(other.hasMorePublishingPosts, hasMorePublishingPosts) ||
                const DeepCollectionEquality().equals(
                    other.hasMorePublishingPosts, hasMorePublishingPosts)) &&
            (identical(other.hasMoreUserPosts, hasMoreUserPosts) ||
                const DeepCollectionEquality()
                    .equals(other.hasMoreUserPosts, hasMoreUserPosts)) &&
            (identical(other.isApprovedPostsLoading, isApprovedPostsLoading) ||
                const DeepCollectionEquality().equals(
                    other.isApprovedPostsLoading, isApprovedPostsLoading)) &&
            (identical(other.isPublishingPostsLoading, isPublishingPostsLoading) ||
                const DeepCollectionEquality().equals(
                    other.isPublishingPostsLoading,
                    isPublishingPostsLoading)) &&
            (identical(other.isUserPostsLoading, isUserPostsLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isUserPostsLoading, isUserPostsLoading)) &&
            (identical(other.publishingPostsList, publishingPostsList) ||
                const DeepCollectionEquality()
                    .equals(other.publishingPostsList, publishingPostsList)) &&
            (identical(other.approvedPostsList, approvedPostsList) ||
                const DeepCollectionEquality()
                    .equals(other.approvedPostsList, approvedPostsList)) &&
            (identical(other.userPostsList, userPostsList) ||
                const DeepCollectionEquality()
                    .equals(other.userPostsList, userPostsList)) &&
            (identical(other.fetchMoreApprovedPostsLoading, fetchMoreApprovedPostsLoading) ||
                const DeepCollectionEquality().equals(
                    other.fetchMoreApprovedPostsLoading,
                    fetchMoreApprovedPostsLoading)) &&
            (identical(other.fetchMorePublishingPostsLoading, fetchMorePublishingPostsLoading) ||
                const DeepCollectionEquality().equals(
                    other.fetchMorePublishingPostsLoading,
                    fetchMorePublishingPostsLoading)) &&
            (identical(other.fetchMoreUserPostsLoading, fetchMoreUserPostsLoading) ||
                const DeepCollectionEquality().equals(
                    other.fetchMoreUserPostsLoading,
                    fetchMoreUserPostsLoading)) &&
            (identical(other.isApprovingBlog, isApprovingBlog) ||
                const DeepCollectionEquality()
                    .equals(other.isApprovingBlog, isApprovingBlog)) &&
            (identical(other.isDecliningBlog, isDecliningBlog) ||
                const DeepCollectionEquality().equals(other.isDecliningBlog, isDecliningBlog)) &&
            (identical(other.isAddingFeed, isAddingFeed) || const DeepCollectionEquality().equals(other.isAddingFeed, isAddingFeed)) &&
            (identical(other.feedActionResultOpt, feedActionResultOpt) || const DeepCollectionEquality().equals(other.feedActionResultOpt, feedActionResultOpt)) &&
            (identical(other.isDeletingFeed, isDeletingFeed) || const DeepCollectionEquality().equals(other.isDeletingFeed, isDeletingFeed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hasMoreApprovedPosts) ^
      const DeepCollectionEquality().hash(hasMorePublishingPosts) ^
      const DeepCollectionEquality().hash(hasMoreUserPosts) ^
      const DeepCollectionEquality().hash(isApprovedPostsLoading) ^
      const DeepCollectionEquality().hash(isPublishingPostsLoading) ^
      const DeepCollectionEquality().hash(isUserPostsLoading) ^
      const DeepCollectionEquality().hash(publishingPostsList) ^
      const DeepCollectionEquality().hash(approvedPostsList) ^
      const DeepCollectionEquality().hash(userPostsList) ^
      const DeepCollectionEquality().hash(fetchMoreApprovedPostsLoading) ^
      const DeepCollectionEquality().hash(fetchMorePublishingPostsLoading) ^
      const DeepCollectionEquality().hash(fetchMoreUserPostsLoading) ^
      const DeepCollectionEquality().hash(isApprovingBlog) ^
      const DeepCollectionEquality().hash(isDecliningBlog) ^
      const DeepCollectionEquality().hash(isAddingFeed) ^
      const DeepCollectionEquality().hash(feedActionResultOpt) ^
      const DeepCollectionEquality().hash(isDeletingFeed);

  @JsonKey(ignore: true)
  @override
  _$FeedStateCopyWith<_FeedState> get copyWith =>
      __$FeedStateCopyWithImpl<_FeedState>(this, _$identity);
}

abstract class _FeedState implements FeedState {
  const factory _FeedState(
      {required bool hasMoreApprovedPosts,
      required bool hasMorePublishingPosts,
      required bool hasMoreUserPosts,
      required bool isApprovedPostsLoading,
      required bool isPublishingPostsLoading,
      required bool isUserPostsLoading,
      required List<FeedModel> publishingPostsList,
      required List<FeedModel> approvedPostsList,
      required List<FeedModel> userPostsList,
      required bool fetchMoreApprovedPostsLoading,
      required bool fetchMorePublishingPostsLoading,
      required bool fetchMoreUserPostsLoading,
      required bool isApprovingBlog,
      required bool isDecliningBlog,
      required bool isAddingFeed,
      required Option<Either<FirebaseFailure, String>> feedActionResultOpt,
      required bool isDeletingFeed}) = _$_FeedState;

  @override
  bool get hasMoreApprovedPosts => throw _privateConstructorUsedError;
  @override
  bool get hasMorePublishingPosts => throw _privateConstructorUsedError;
  @override
  bool get hasMoreUserPosts => throw _privateConstructorUsedError;
  @override
  bool get isApprovedPostsLoading => throw _privateConstructorUsedError;
  @override
  bool get isPublishingPostsLoading => throw _privateConstructorUsedError;
  @override
  bool get isUserPostsLoading => throw _privateConstructorUsedError;
  @override
  List<FeedModel> get publishingPostsList => throw _privateConstructorUsedError;
  @override
  List<FeedModel> get approvedPostsList => throw _privateConstructorUsedError;
  @override
  List<FeedModel> get userPostsList => throw _privateConstructorUsedError;
  @override //this loading will be used when adding posts
  bool get fetchMoreApprovedPostsLoading => throw _privateConstructorUsedError;
  @override
  bool get fetchMorePublishingPostsLoading =>
      throw _privateConstructorUsedError;
  @override
  bool get fetchMoreUserPostsLoading => throw _privateConstructorUsedError;
  @override
  bool get isApprovingBlog => throw _privateConstructorUsedError;
  @override
  bool get isDecliningBlog => throw _privateConstructorUsedError;
  @override
  bool get isAddingFeed => throw _privateConstructorUsedError;
  @override
  Option<Either<FirebaseFailure, String>> get feedActionResultOpt =>
      throw _privateConstructorUsedError;
  @override
  bool get isDeletingFeed => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FeedStateCopyWith<_FeedState> get copyWith =>
      throw _privateConstructorUsedError;
}
