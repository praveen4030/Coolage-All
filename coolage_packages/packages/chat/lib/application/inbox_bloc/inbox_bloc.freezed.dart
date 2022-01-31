// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'inbox_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InboxEventTearOff {
  const _$InboxEventTearOff();

  _FetchChats fetchChats() {
    return const _FetchChats();
  }

  _FetchMoreChats fetchMoreChats() {
    return const _FetchMoreChats();
  }

  _NewChatAdded newChatAdded({ChatModel? chatModel}) {
    return _NewChatAdded(
      chatModel: chatModel,
    );
  }
}

/// @nodoc
const $InboxEvent = _$InboxEventTearOff();

/// @nodoc
mixin _$InboxEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchChats,
    required TResult Function() fetchMoreChats,
    required TResult Function(ChatModel? chatModel) newChatAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchChats,
    TResult Function()? fetchMoreChats,
    TResult Function(ChatModel? chatModel)? newChatAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchChats value) fetchChats,
    required TResult Function(_FetchMoreChats value) fetchMoreChats,
    required TResult Function(_NewChatAdded value) newChatAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchChats value)? fetchChats,
    TResult Function(_FetchMoreChats value)? fetchMoreChats,
    TResult Function(_NewChatAdded value)? newChatAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InboxEventCopyWith<$Res> {
  factory $InboxEventCopyWith(
          InboxEvent value, $Res Function(InboxEvent) then) =
      _$InboxEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InboxEventCopyWithImpl<$Res> implements $InboxEventCopyWith<$Res> {
  _$InboxEventCopyWithImpl(this._value, this._then);

  final InboxEvent _value;
  // ignore: unused_field
  final $Res Function(InboxEvent) _then;
}

/// @nodoc
abstract class _$FetchChatsCopyWith<$Res> {
  factory _$FetchChatsCopyWith(
          _FetchChats value, $Res Function(_FetchChats) then) =
      __$FetchChatsCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchChatsCopyWithImpl<$Res> extends _$InboxEventCopyWithImpl<$Res>
    implements _$FetchChatsCopyWith<$Res> {
  __$FetchChatsCopyWithImpl(
      _FetchChats _value, $Res Function(_FetchChats) _then)
      : super(_value, (v) => _then(v as _FetchChats));

  @override
  _FetchChats get _value => super._value as _FetchChats;
}

/// @nodoc

class _$_FetchChats implements _FetchChats {
  const _$_FetchChats();

  @override
  String toString() {
    return 'InboxEvent.fetchChats()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FetchChats);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchChats,
    required TResult Function() fetchMoreChats,
    required TResult Function(ChatModel? chatModel) newChatAdded,
  }) {
    return fetchChats();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchChats,
    TResult Function()? fetchMoreChats,
    TResult Function(ChatModel? chatModel)? newChatAdded,
    required TResult orElse(),
  }) {
    if (fetchChats != null) {
      return fetchChats();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchChats value) fetchChats,
    required TResult Function(_FetchMoreChats value) fetchMoreChats,
    required TResult Function(_NewChatAdded value) newChatAdded,
  }) {
    return fetchChats(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchChats value)? fetchChats,
    TResult Function(_FetchMoreChats value)? fetchMoreChats,
    TResult Function(_NewChatAdded value)? newChatAdded,
    required TResult orElse(),
  }) {
    if (fetchChats != null) {
      return fetchChats(this);
    }
    return orElse();
  }
}

abstract class _FetchChats implements InboxEvent {
  const factory _FetchChats() = _$_FetchChats;
}

/// @nodoc
abstract class _$FetchMoreChatsCopyWith<$Res> {
  factory _$FetchMoreChatsCopyWith(
          _FetchMoreChats value, $Res Function(_FetchMoreChats) then) =
      __$FetchMoreChatsCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchMoreChatsCopyWithImpl<$Res> extends _$InboxEventCopyWithImpl<$Res>
    implements _$FetchMoreChatsCopyWith<$Res> {
  __$FetchMoreChatsCopyWithImpl(
      _FetchMoreChats _value, $Res Function(_FetchMoreChats) _then)
      : super(_value, (v) => _then(v as _FetchMoreChats));

  @override
  _FetchMoreChats get _value => super._value as _FetchMoreChats;
}

/// @nodoc

class _$_FetchMoreChats implements _FetchMoreChats {
  const _$_FetchMoreChats();

  @override
  String toString() {
    return 'InboxEvent.fetchMoreChats()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FetchMoreChats);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchChats,
    required TResult Function() fetchMoreChats,
    required TResult Function(ChatModel? chatModel) newChatAdded,
  }) {
    return fetchMoreChats();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchChats,
    TResult Function()? fetchMoreChats,
    TResult Function(ChatModel? chatModel)? newChatAdded,
    required TResult orElse(),
  }) {
    if (fetchMoreChats != null) {
      return fetchMoreChats();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchChats value) fetchChats,
    required TResult Function(_FetchMoreChats value) fetchMoreChats,
    required TResult Function(_NewChatAdded value) newChatAdded,
  }) {
    return fetchMoreChats(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchChats value)? fetchChats,
    TResult Function(_FetchMoreChats value)? fetchMoreChats,
    TResult Function(_NewChatAdded value)? newChatAdded,
    required TResult orElse(),
  }) {
    if (fetchMoreChats != null) {
      return fetchMoreChats(this);
    }
    return orElse();
  }
}

abstract class _FetchMoreChats implements InboxEvent {
  const factory _FetchMoreChats() = _$_FetchMoreChats;
}

/// @nodoc
abstract class _$NewChatAddedCopyWith<$Res> {
  factory _$NewChatAddedCopyWith(
          _NewChatAdded value, $Res Function(_NewChatAdded) then) =
      __$NewChatAddedCopyWithImpl<$Res>;
  $Res call({ChatModel? chatModel});
}

/// @nodoc
class __$NewChatAddedCopyWithImpl<$Res> extends _$InboxEventCopyWithImpl<$Res>
    implements _$NewChatAddedCopyWith<$Res> {
  __$NewChatAddedCopyWithImpl(
      _NewChatAdded _value, $Res Function(_NewChatAdded) _then)
      : super(_value, (v) => _then(v as _NewChatAdded));

  @override
  _NewChatAdded get _value => super._value as _NewChatAdded;

  @override
  $Res call({
    Object? chatModel = freezed,
  }) {
    return _then(_NewChatAdded(
      chatModel: chatModel == freezed
          ? _value.chatModel
          : chatModel // ignore: cast_nullable_to_non_nullable
              as ChatModel?,
    ));
  }
}

/// @nodoc

class _$_NewChatAdded implements _NewChatAdded {
  const _$_NewChatAdded({this.chatModel});

  @override
  final ChatModel? chatModel;

  @override
  String toString() {
    return 'InboxEvent.newChatAdded(chatModel: $chatModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewChatAdded &&
            (identical(other.chatModel, chatModel) ||
                const DeepCollectionEquality()
                    .equals(other.chatModel, chatModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chatModel);

  @JsonKey(ignore: true)
  @override
  _$NewChatAddedCopyWith<_NewChatAdded> get copyWith =>
      __$NewChatAddedCopyWithImpl<_NewChatAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchChats,
    required TResult Function() fetchMoreChats,
    required TResult Function(ChatModel? chatModel) newChatAdded,
  }) {
    return newChatAdded(chatModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchChats,
    TResult Function()? fetchMoreChats,
    TResult Function(ChatModel? chatModel)? newChatAdded,
    required TResult orElse(),
  }) {
    if (newChatAdded != null) {
      return newChatAdded(chatModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchChats value) fetchChats,
    required TResult Function(_FetchMoreChats value) fetchMoreChats,
    required TResult Function(_NewChatAdded value) newChatAdded,
  }) {
    return newChatAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchChats value)? fetchChats,
    TResult Function(_FetchMoreChats value)? fetchMoreChats,
    TResult Function(_NewChatAdded value)? newChatAdded,
    required TResult orElse(),
  }) {
    if (newChatAdded != null) {
      return newChatAdded(this);
    }
    return orElse();
  }
}

abstract class _NewChatAdded implements InboxEvent {
  const factory _NewChatAdded({ChatModel? chatModel}) = _$_NewChatAdded;

  ChatModel? get chatModel => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NewChatAddedCopyWith<_NewChatAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$InboxStateTearOff {
  const _$InboxStateTearOff();

  _InboxState call(
      {bool? hasMore,
      bool? isLoading,
      bool? isAddingMoreLoading,
      List<ChatModel>? chatsList,
      Option<FirebaseFailure>? failureOrSuccessOption}) {
    return _InboxState(
      hasMore: hasMore,
      isLoading: isLoading,
      isAddingMoreLoading: isAddingMoreLoading,
      chatsList: chatsList,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
const $InboxState = _$InboxStateTearOff();

/// @nodoc
mixin _$InboxState {
  bool? get hasMore => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  bool? get isAddingMoreLoading => throw _privateConstructorUsedError;
  List<ChatModel>? get chatsList => throw _privateConstructorUsedError;
  Option<FirebaseFailure>? get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InboxStateCopyWith<InboxState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InboxStateCopyWith<$Res> {
  factory $InboxStateCopyWith(
          InboxState value, $Res Function(InboxState) then) =
      _$InboxStateCopyWithImpl<$Res>;
  $Res call(
      {bool? hasMore,
      bool? isLoading,
      bool? isAddingMoreLoading,
      List<ChatModel>? chatsList,
      Option<FirebaseFailure>? failureOrSuccessOption});
}

/// @nodoc
class _$InboxStateCopyWithImpl<$Res> implements $InboxStateCopyWith<$Res> {
  _$InboxStateCopyWithImpl(this._value, this._then);

  final InboxState _value;
  // ignore: unused_field
  final $Res Function(InboxState) _then;

  @override
  $Res call({
    Object? hasMore = freezed,
    Object? isLoading = freezed,
    Object? isAddingMoreLoading = freezed,
    Object? chatsList = freezed,
    Object? failureOrSuccessOption = freezed,
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
      chatsList: chatsList == freezed
          ? _value.chatsList
          : chatsList // ignore: cast_nullable_to_non_nullable
              as List<ChatModel>?,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<FirebaseFailure>?,
    ));
  }
}

/// @nodoc
abstract class _$InboxStateCopyWith<$Res> implements $InboxStateCopyWith<$Res> {
  factory _$InboxStateCopyWith(
          _InboxState value, $Res Function(_InboxState) then) =
      __$InboxStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? hasMore,
      bool? isLoading,
      bool? isAddingMoreLoading,
      List<ChatModel>? chatsList,
      Option<FirebaseFailure>? failureOrSuccessOption});
}

/// @nodoc
class __$InboxStateCopyWithImpl<$Res> extends _$InboxStateCopyWithImpl<$Res>
    implements _$InboxStateCopyWith<$Res> {
  __$InboxStateCopyWithImpl(
      _InboxState _value, $Res Function(_InboxState) _then)
      : super(_value, (v) => _then(v as _InboxState));

  @override
  _InboxState get _value => super._value as _InboxState;

  @override
  $Res call({
    Object? hasMore = freezed,
    Object? isLoading = freezed,
    Object? isAddingMoreLoading = freezed,
    Object? chatsList = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_InboxState(
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
      chatsList: chatsList == freezed
          ? _value.chatsList
          : chatsList // ignore: cast_nullable_to_non_nullable
              as List<ChatModel>?,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<FirebaseFailure>?,
    ));
  }
}

/// @nodoc

class _$_InboxState implements _InboxState {
  const _$_InboxState(
      {this.hasMore,
      this.isLoading,
      this.isAddingMoreLoading,
      this.chatsList,
      this.failureOrSuccessOption});

  @override
  final bool? hasMore;
  @override
  final bool? isLoading;
  @override
  final bool? isAddingMoreLoading;
  @override
  final List<ChatModel>? chatsList;
  @override
  final Option<FirebaseFailure>? failureOrSuccessOption;

  @override
  String toString() {
    return 'InboxState(hasMore: $hasMore, isLoading: $isLoading, isAddingMoreLoading: $isAddingMoreLoading, chatsList: $chatsList, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InboxState &&
            (identical(other.hasMore, hasMore) ||
                const DeepCollectionEquality()
                    .equals(other.hasMore, hasMore)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isAddingMoreLoading, isAddingMoreLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isAddingMoreLoading, isAddingMoreLoading)) &&
            (identical(other.chatsList, chatsList) ||
                const DeepCollectionEquality()
                    .equals(other.chatsList, chatsList)) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.failureOrSuccessOption, failureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hasMore) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isAddingMoreLoading) ^
      const DeepCollectionEquality().hash(chatsList) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$InboxStateCopyWith<_InboxState> get copyWith =>
      __$InboxStateCopyWithImpl<_InboxState>(this, _$identity);
}

abstract class _InboxState implements InboxState {
  const factory _InboxState(
      {bool? hasMore,
      bool? isLoading,
      bool? isAddingMoreLoading,
      List<ChatModel>? chatsList,
      Option<FirebaseFailure>? failureOrSuccessOption}) = _$_InboxState;

  @override
  bool? get hasMore => throw _privateConstructorUsedError;
  @override
  bool? get isLoading => throw _privateConstructorUsedError;
  @override
  bool? get isAddingMoreLoading => throw _privateConstructorUsedError;
  @override
  List<ChatModel>? get chatsList => throw _privateConstructorUsedError;
  @override
  Option<FirebaseFailure>? get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InboxStateCopyWith<_InboxState> get copyWith =>
      throw _privateConstructorUsedError;
}
