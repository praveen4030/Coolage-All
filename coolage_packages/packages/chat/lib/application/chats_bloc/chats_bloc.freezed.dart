// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'chats_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatsEventTearOff {
  const _$ChatsEventTearOff();

  _GetMessages getMessages({ChatModel? chatModel}) {
    return _GetMessages(
      chatModel: chatModel,
    );
  }

  _GetMoreMessages getMoreMessages({ChatModel? chatModel}) {
    return _GetMoreMessages(
      chatModel: chatModel,
    );
  }

  _SendFile sendFile({ChatModel? chatModel, File? file, int? type}) {
    return _SendFile(
      chatModel: chatModel,
      file: file,
      type: type,
    );
  }

  _SendMessage sendMessage({ChatModel? chatModel, String? message, int? type}) {
    return _SendMessage(
      chatModel: chatModel,
      message: message,
      type: type,
    );
  }

  _AddNewMessage addNewMessage({MessageModel? messageModel}) {
    return _AddNewMessage(
      messageModel: messageModel,
    );
  }
}

/// @nodoc
const $ChatsEvent = _$ChatsEventTearOff();

/// @nodoc
mixin _$ChatsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModel? chatModel) getMessages,
    required TResult Function(ChatModel? chatModel) getMoreMessages,
    required TResult Function(ChatModel? chatModel, File? file, int? type)
        sendFile,
    required TResult Function(ChatModel? chatModel, String? message, int? type)
        sendMessage,
    required TResult Function(MessageModel? messageModel) addNewMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModel? chatModel)? getMessages,
    TResult Function(ChatModel? chatModel)? getMoreMessages,
    TResult Function(ChatModel? chatModel, File? file, int? type)? sendFile,
    TResult Function(ChatModel? chatModel, String? message, int? type)?
        sendMessage,
    TResult Function(MessageModel? messageModel)? addNewMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_GetMoreMessages value) getMoreMessages,
    required TResult Function(_SendFile value) sendFile,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_AddNewMessage value) addNewMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_GetMoreMessages value)? getMoreMessages,
    TResult Function(_SendFile value)? sendFile,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_AddNewMessage value)? addNewMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatsEventCopyWith<$Res> {
  factory $ChatsEventCopyWith(
          ChatsEvent value, $Res Function(ChatsEvent) then) =
      _$ChatsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatsEventCopyWithImpl<$Res> implements $ChatsEventCopyWith<$Res> {
  _$ChatsEventCopyWithImpl(this._value, this._then);

  final ChatsEvent _value;
  // ignore: unused_field
  final $Res Function(ChatsEvent) _then;
}

/// @nodoc
abstract class _$GetMessagesCopyWith<$Res> {
  factory _$GetMessagesCopyWith(
          _GetMessages value, $Res Function(_GetMessages) then) =
      __$GetMessagesCopyWithImpl<$Res>;
  $Res call({ChatModel? chatModel});
}

/// @nodoc
class __$GetMessagesCopyWithImpl<$Res> extends _$ChatsEventCopyWithImpl<$Res>
    implements _$GetMessagesCopyWith<$Res> {
  __$GetMessagesCopyWithImpl(
      _GetMessages _value, $Res Function(_GetMessages) _then)
      : super(_value, (v) => _then(v as _GetMessages));

  @override
  _GetMessages get _value => super._value as _GetMessages;

  @override
  $Res call({
    Object? chatModel = freezed,
  }) {
    return _then(_GetMessages(
      chatModel: chatModel == freezed
          ? _value.chatModel
          : chatModel // ignore: cast_nullable_to_non_nullable
              as ChatModel?,
    ));
  }
}

/// @nodoc

class _$_GetMessages implements _GetMessages {
  const _$_GetMessages({this.chatModel});

  @override
  final ChatModel? chatModel;

  @override
  String toString() {
    return 'ChatsEvent.getMessages(chatModel: $chatModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetMessages &&
            (identical(other.chatModel, chatModel) ||
                const DeepCollectionEquality()
                    .equals(other.chatModel, chatModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chatModel);

  @JsonKey(ignore: true)
  @override
  _$GetMessagesCopyWith<_GetMessages> get copyWith =>
      __$GetMessagesCopyWithImpl<_GetMessages>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModel? chatModel) getMessages,
    required TResult Function(ChatModel? chatModel) getMoreMessages,
    required TResult Function(ChatModel? chatModel, File? file, int? type)
        sendFile,
    required TResult Function(ChatModel? chatModel, String? message, int? type)
        sendMessage,
    required TResult Function(MessageModel? messageModel) addNewMessage,
  }) {
    return getMessages(chatModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModel? chatModel)? getMessages,
    TResult Function(ChatModel? chatModel)? getMoreMessages,
    TResult Function(ChatModel? chatModel, File? file, int? type)? sendFile,
    TResult Function(ChatModel? chatModel, String? message, int? type)?
        sendMessage,
    TResult Function(MessageModel? messageModel)? addNewMessage,
    required TResult orElse(),
  }) {
    if (getMessages != null) {
      return getMessages(chatModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_GetMoreMessages value) getMoreMessages,
    required TResult Function(_SendFile value) sendFile,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_AddNewMessage value) addNewMessage,
  }) {
    return getMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_GetMoreMessages value)? getMoreMessages,
    TResult Function(_SendFile value)? sendFile,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_AddNewMessage value)? addNewMessage,
    required TResult orElse(),
  }) {
    if (getMessages != null) {
      return getMessages(this);
    }
    return orElse();
  }
}

abstract class _GetMessages implements ChatsEvent {
  const factory _GetMessages({ChatModel? chatModel}) = _$_GetMessages;

  ChatModel? get chatModel => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetMessagesCopyWith<_GetMessages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetMoreMessagesCopyWith<$Res> {
  factory _$GetMoreMessagesCopyWith(
          _GetMoreMessages value, $Res Function(_GetMoreMessages) then) =
      __$GetMoreMessagesCopyWithImpl<$Res>;
  $Res call({ChatModel? chatModel});
}

/// @nodoc
class __$GetMoreMessagesCopyWithImpl<$Res>
    extends _$ChatsEventCopyWithImpl<$Res>
    implements _$GetMoreMessagesCopyWith<$Res> {
  __$GetMoreMessagesCopyWithImpl(
      _GetMoreMessages _value, $Res Function(_GetMoreMessages) _then)
      : super(_value, (v) => _then(v as _GetMoreMessages));

  @override
  _GetMoreMessages get _value => super._value as _GetMoreMessages;

  @override
  $Res call({
    Object? chatModel = freezed,
  }) {
    return _then(_GetMoreMessages(
      chatModel: chatModel == freezed
          ? _value.chatModel
          : chatModel // ignore: cast_nullable_to_non_nullable
              as ChatModel?,
    ));
  }
}

/// @nodoc

class _$_GetMoreMessages implements _GetMoreMessages {
  const _$_GetMoreMessages({this.chatModel});

  @override
  final ChatModel? chatModel;

  @override
  String toString() {
    return 'ChatsEvent.getMoreMessages(chatModel: $chatModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetMoreMessages &&
            (identical(other.chatModel, chatModel) ||
                const DeepCollectionEquality()
                    .equals(other.chatModel, chatModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chatModel);

  @JsonKey(ignore: true)
  @override
  _$GetMoreMessagesCopyWith<_GetMoreMessages> get copyWith =>
      __$GetMoreMessagesCopyWithImpl<_GetMoreMessages>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModel? chatModel) getMessages,
    required TResult Function(ChatModel? chatModel) getMoreMessages,
    required TResult Function(ChatModel? chatModel, File? file, int? type)
        sendFile,
    required TResult Function(ChatModel? chatModel, String? message, int? type)
        sendMessage,
    required TResult Function(MessageModel? messageModel) addNewMessage,
  }) {
    return getMoreMessages(chatModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModel? chatModel)? getMessages,
    TResult Function(ChatModel? chatModel)? getMoreMessages,
    TResult Function(ChatModel? chatModel, File? file, int? type)? sendFile,
    TResult Function(ChatModel? chatModel, String? message, int? type)?
        sendMessage,
    TResult Function(MessageModel? messageModel)? addNewMessage,
    required TResult orElse(),
  }) {
    if (getMoreMessages != null) {
      return getMoreMessages(chatModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_GetMoreMessages value) getMoreMessages,
    required TResult Function(_SendFile value) sendFile,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_AddNewMessage value) addNewMessage,
  }) {
    return getMoreMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_GetMoreMessages value)? getMoreMessages,
    TResult Function(_SendFile value)? sendFile,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_AddNewMessage value)? addNewMessage,
    required TResult orElse(),
  }) {
    if (getMoreMessages != null) {
      return getMoreMessages(this);
    }
    return orElse();
  }
}

abstract class _GetMoreMessages implements ChatsEvent {
  const factory _GetMoreMessages({ChatModel? chatModel}) = _$_GetMoreMessages;

  ChatModel? get chatModel => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetMoreMessagesCopyWith<_GetMoreMessages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendFileCopyWith<$Res> {
  factory _$SendFileCopyWith(_SendFile value, $Res Function(_SendFile) then) =
      __$SendFileCopyWithImpl<$Res>;
  $Res call({ChatModel? chatModel, File? file, int? type});
}

/// @nodoc
class __$SendFileCopyWithImpl<$Res> extends _$ChatsEventCopyWithImpl<$Res>
    implements _$SendFileCopyWith<$Res> {
  __$SendFileCopyWithImpl(_SendFile _value, $Res Function(_SendFile) _then)
      : super(_value, (v) => _then(v as _SendFile));

  @override
  _SendFile get _value => super._value as _SendFile;

  @override
  $Res call({
    Object? chatModel = freezed,
    Object? file = freezed,
    Object? type = freezed,
  }) {
    return _then(_SendFile(
      chatModel: chatModel == freezed
          ? _value.chatModel
          : chatModel // ignore: cast_nullable_to_non_nullable
              as ChatModel?,
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_SendFile implements _SendFile {
  const _$_SendFile({this.chatModel, this.file, this.type});

  @override
  final ChatModel? chatModel;
  @override
  final File? file;
  @override
  final int? type;

  @override
  String toString() {
    return 'ChatsEvent.sendFile(chatModel: $chatModel, file: $file, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SendFile &&
            (identical(other.chatModel, chatModel) ||
                const DeepCollectionEquality()
                    .equals(other.chatModel, chatModel)) &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(chatModel) ^
      const DeepCollectionEquality().hash(file) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$SendFileCopyWith<_SendFile> get copyWith =>
      __$SendFileCopyWithImpl<_SendFile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModel? chatModel) getMessages,
    required TResult Function(ChatModel? chatModel) getMoreMessages,
    required TResult Function(ChatModel? chatModel, File? file, int? type)
        sendFile,
    required TResult Function(ChatModel? chatModel, String? message, int? type)
        sendMessage,
    required TResult Function(MessageModel? messageModel) addNewMessage,
  }) {
    return sendFile(chatModel, file, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModel? chatModel)? getMessages,
    TResult Function(ChatModel? chatModel)? getMoreMessages,
    TResult Function(ChatModel? chatModel, File? file, int? type)? sendFile,
    TResult Function(ChatModel? chatModel, String? message, int? type)?
        sendMessage,
    TResult Function(MessageModel? messageModel)? addNewMessage,
    required TResult orElse(),
  }) {
    if (sendFile != null) {
      return sendFile(chatModel, file, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_GetMoreMessages value) getMoreMessages,
    required TResult Function(_SendFile value) sendFile,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_AddNewMessage value) addNewMessage,
  }) {
    return sendFile(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_GetMoreMessages value)? getMoreMessages,
    TResult Function(_SendFile value)? sendFile,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_AddNewMessage value)? addNewMessage,
    required TResult orElse(),
  }) {
    if (sendFile != null) {
      return sendFile(this);
    }
    return orElse();
  }
}

abstract class _SendFile implements ChatsEvent {
  const factory _SendFile({ChatModel? chatModel, File? file, int? type}) =
      _$_SendFile;

  ChatModel? get chatModel => throw _privateConstructorUsedError;
  File? get file => throw _privateConstructorUsedError;
  int? get type => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SendFileCopyWith<_SendFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendMessageCopyWith<$Res> {
  factory _$SendMessageCopyWith(
          _SendMessage value, $Res Function(_SendMessage) then) =
      __$SendMessageCopyWithImpl<$Res>;
  $Res call({ChatModel? chatModel, String? message, int? type});
}

/// @nodoc
class __$SendMessageCopyWithImpl<$Res> extends _$ChatsEventCopyWithImpl<$Res>
    implements _$SendMessageCopyWith<$Res> {
  __$SendMessageCopyWithImpl(
      _SendMessage _value, $Res Function(_SendMessage) _then)
      : super(_value, (v) => _then(v as _SendMessage));

  @override
  _SendMessage get _value => super._value as _SendMessage;

  @override
  $Res call({
    Object? chatModel = freezed,
    Object? message = freezed,
    Object? type = freezed,
  }) {
    return _then(_SendMessage(
      chatModel: chatModel == freezed
          ? _value.chatModel
          : chatModel // ignore: cast_nullable_to_non_nullable
              as ChatModel?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_SendMessage implements _SendMessage {
  const _$_SendMessage({this.chatModel, this.message, this.type});

  @override
  final ChatModel? chatModel;
  @override
  final String? message;
  @override
  final int? type;

  @override
  String toString() {
    return 'ChatsEvent.sendMessage(chatModel: $chatModel, message: $message, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SendMessage &&
            (identical(other.chatModel, chatModel) ||
                const DeepCollectionEquality()
                    .equals(other.chatModel, chatModel)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(chatModel) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$SendMessageCopyWith<_SendMessage> get copyWith =>
      __$SendMessageCopyWithImpl<_SendMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModel? chatModel) getMessages,
    required TResult Function(ChatModel? chatModel) getMoreMessages,
    required TResult Function(ChatModel? chatModel, File? file, int? type)
        sendFile,
    required TResult Function(ChatModel? chatModel, String? message, int? type)
        sendMessage,
    required TResult Function(MessageModel? messageModel) addNewMessage,
  }) {
    return sendMessage(chatModel, message, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModel? chatModel)? getMessages,
    TResult Function(ChatModel? chatModel)? getMoreMessages,
    TResult Function(ChatModel? chatModel, File? file, int? type)? sendFile,
    TResult Function(ChatModel? chatModel, String? message, int? type)?
        sendMessage,
    TResult Function(MessageModel? messageModel)? addNewMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(chatModel, message, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_GetMoreMessages value) getMoreMessages,
    required TResult Function(_SendFile value) sendFile,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_AddNewMessage value) addNewMessage,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_GetMoreMessages value)? getMoreMessages,
    TResult Function(_SendFile value)? sendFile,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_AddNewMessage value)? addNewMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage implements ChatsEvent {
  const factory _SendMessage(
      {ChatModel? chatModel, String? message, int? type}) = _$_SendMessage;

  ChatModel? get chatModel => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get type => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SendMessageCopyWith<_SendMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddNewMessageCopyWith<$Res> {
  factory _$AddNewMessageCopyWith(
          _AddNewMessage value, $Res Function(_AddNewMessage) then) =
      __$AddNewMessageCopyWithImpl<$Res>;
  $Res call({MessageModel? messageModel});
}

/// @nodoc
class __$AddNewMessageCopyWithImpl<$Res> extends _$ChatsEventCopyWithImpl<$Res>
    implements _$AddNewMessageCopyWith<$Res> {
  __$AddNewMessageCopyWithImpl(
      _AddNewMessage _value, $Res Function(_AddNewMessage) _then)
      : super(_value, (v) => _then(v as _AddNewMessage));

  @override
  _AddNewMessage get _value => super._value as _AddNewMessage;

  @override
  $Res call({
    Object? messageModel = freezed,
  }) {
    return _then(_AddNewMessage(
      messageModel: messageModel == freezed
          ? _value.messageModel
          : messageModel // ignore: cast_nullable_to_non_nullable
              as MessageModel?,
    ));
  }
}

/// @nodoc

class _$_AddNewMessage implements _AddNewMessage {
  const _$_AddNewMessage({this.messageModel});

  @override
  final MessageModel? messageModel;

  @override
  String toString() {
    return 'ChatsEvent.addNewMessage(messageModel: $messageModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddNewMessage &&
            (identical(other.messageModel, messageModel) ||
                const DeepCollectionEquality()
                    .equals(other.messageModel, messageModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(messageModel);

  @JsonKey(ignore: true)
  @override
  _$AddNewMessageCopyWith<_AddNewMessage> get copyWith =>
      __$AddNewMessageCopyWithImpl<_AddNewMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModel? chatModel) getMessages,
    required TResult Function(ChatModel? chatModel) getMoreMessages,
    required TResult Function(ChatModel? chatModel, File? file, int? type)
        sendFile,
    required TResult Function(ChatModel? chatModel, String? message, int? type)
        sendMessage,
    required TResult Function(MessageModel? messageModel) addNewMessage,
  }) {
    return addNewMessage(messageModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModel? chatModel)? getMessages,
    TResult Function(ChatModel? chatModel)? getMoreMessages,
    TResult Function(ChatModel? chatModel, File? file, int? type)? sendFile,
    TResult Function(ChatModel? chatModel, String? message, int? type)?
        sendMessage,
    TResult Function(MessageModel? messageModel)? addNewMessage,
    required TResult orElse(),
  }) {
    if (addNewMessage != null) {
      return addNewMessage(messageModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_GetMoreMessages value) getMoreMessages,
    required TResult Function(_SendFile value) sendFile,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_AddNewMessage value) addNewMessage,
  }) {
    return addNewMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_GetMoreMessages value)? getMoreMessages,
    TResult Function(_SendFile value)? sendFile,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_AddNewMessage value)? addNewMessage,
    required TResult orElse(),
  }) {
    if (addNewMessage != null) {
      return addNewMessage(this);
    }
    return orElse();
  }
}

abstract class _AddNewMessage implements ChatsEvent {
  const factory _AddNewMessage({MessageModel? messageModel}) = _$_AddNewMessage;

  MessageModel? get messageModel => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddNewMessageCopyWith<_AddNewMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ChatsStateTearOff {
  const _$ChatsStateTearOff();

  _ChatsState call(
      {bool? hasMore,
      bool? isLoading,
      bool? isAddingMoreLoading,
      List<MessageModel>? messagesList,
      Option<FirebaseFailure>? failureOrSuccessOption}) {
    return _ChatsState(
      hasMore: hasMore,
      isLoading: isLoading,
      isAddingMoreLoading: isAddingMoreLoading,
      messagesList: messagesList,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
const $ChatsState = _$ChatsStateTearOff();

/// @nodoc
mixin _$ChatsState {
  bool? get hasMore => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  bool? get isAddingMoreLoading => throw _privateConstructorUsedError;
  List<MessageModel>? get messagesList => throw _privateConstructorUsedError;
  Option<FirebaseFailure>? get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatsStateCopyWith<ChatsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatsStateCopyWith<$Res> {
  factory $ChatsStateCopyWith(
          ChatsState value, $Res Function(ChatsState) then) =
      _$ChatsStateCopyWithImpl<$Res>;
  $Res call(
      {bool? hasMore,
      bool? isLoading,
      bool? isAddingMoreLoading,
      List<MessageModel>? messagesList,
      Option<FirebaseFailure>? failureOrSuccessOption});
}

/// @nodoc
class _$ChatsStateCopyWithImpl<$Res> implements $ChatsStateCopyWith<$Res> {
  _$ChatsStateCopyWithImpl(this._value, this._then);

  final ChatsState _value;
  // ignore: unused_field
  final $Res Function(ChatsState) _then;

  @override
  $Res call({
    Object? hasMore = freezed,
    Object? isLoading = freezed,
    Object? isAddingMoreLoading = freezed,
    Object? messagesList = freezed,
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
      messagesList: messagesList == freezed
          ? _value.messagesList
          : messagesList // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>?,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<FirebaseFailure>?,
    ));
  }
}

/// @nodoc
abstract class _$ChatsStateCopyWith<$Res> implements $ChatsStateCopyWith<$Res> {
  factory _$ChatsStateCopyWith(
          _ChatsState value, $Res Function(_ChatsState) then) =
      __$ChatsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? hasMore,
      bool? isLoading,
      bool? isAddingMoreLoading,
      List<MessageModel>? messagesList,
      Option<FirebaseFailure>? failureOrSuccessOption});
}

/// @nodoc
class __$ChatsStateCopyWithImpl<$Res> extends _$ChatsStateCopyWithImpl<$Res>
    implements _$ChatsStateCopyWith<$Res> {
  __$ChatsStateCopyWithImpl(
      _ChatsState _value, $Res Function(_ChatsState) _then)
      : super(_value, (v) => _then(v as _ChatsState));

  @override
  _ChatsState get _value => super._value as _ChatsState;

  @override
  $Res call({
    Object? hasMore = freezed,
    Object? isLoading = freezed,
    Object? isAddingMoreLoading = freezed,
    Object? messagesList = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_ChatsState(
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
      messagesList: messagesList == freezed
          ? _value.messagesList
          : messagesList // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>?,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<FirebaseFailure>?,
    ));
  }
}

/// @nodoc

class _$_ChatsState implements _ChatsState {
  const _$_ChatsState(
      {this.hasMore,
      this.isLoading,
      this.isAddingMoreLoading,
      this.messagesList,
      this.failureOrSuccessOption});

  @override
  final bool? hasMore;
  @override
  final bool? isLoading;
  @override
  final bool? isAddingMoreLoading;
  @override
  final List<MessageModel>? messagesList;
  @override
  final Option<FirebaseFailure>? failureOrSuccessOption;

  @override
  String toString() {
    return 'ChatsState(hasMore: $hasMore, isLoading: $isLoading, isAddingMoreLoading: $isAddingMoreLoading, messagesList: $messagesList, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatsState &&
            (identical(other.hasMore, hasMore) ||
                const DeepCollectionEquality()
                    .equals(other.hasMore, hasMore)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isAddingMoreLoading, isAddingMoreLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isAddingMoreLoading, isAddingMoreLoading)) &&
            (identical(other.messagesList, messagesList) ||
                const DeepCollectionEquality()
                    .equals(other.messagesList, messagesList)) &&
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
      const DeepCollectionEquality().hash(messagesList) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$ChatsStateCopyWith<_ChatsState> get copyWith =>
      __$ChatsStateCopyWithImpl<_ChatsState>(this, _$identity);
}

abstract class _ChatsState implements ChatsState {
  const factory _ChatsState(
      {bool? hasMore,
      bool? isLoading,
      bool? isAddingMoreLoading,
      List<MessageModel>? messagesList,
      Option<FirebaseFailure>? failureOrSuccessOption}) = _$_ChatsState;

  @override
  bool? get hasMore => throw _privateConstructorUsedError;
  @override
  bool? get isLoading => throw _privateConstructorUsedError;
  @override
  bool? get isAddingMoreLoading => throw _privateConstructorUsedError;
  @override
  List<MessageModel>? get messagesList => throw _privateConstructorUsedError;
  @override
  Option<FirebaseFailure>? get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChatsStateCopyWith<_ChatsState> get copyWith =>
      throw _privateConstructorUsedError;
}
