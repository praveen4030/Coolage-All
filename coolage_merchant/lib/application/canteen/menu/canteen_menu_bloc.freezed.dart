// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'canteen_menu_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CanteenMenuEventTearOff {
  const _$CanteenMenuEventTearOff();

  _GetMenu getMenu(String canteenId) {
    return _GetMenu(
      canteenId,
    );
  }

  _UpdateMenuItem updateMenuItem(
      String canteenId, ItemModel itemModel, int index,
      {File? file}) {
    return _UpdateMenuItem(
      canteenId,
      itemModel,
      index,
      file: file,
    );
  }

  _AddMenuItem addMenuItem(String canteenId, ItemModel itemModel,
      {File? file}) {
    return _AddMenuItem(
      canteenId,
      itemModel,
      file: file,
    );
  }

  _DeleteMenuItem deleteMenuItem(
      String canteenId, ItemModel itemModel, int index) {
    return _DeleteMenuItem(
      canteenId,
      itemModel,
      index,
    );
  }

  _AddMenuCategory addMenuCategory(String canteenId, String category) {
    return _AddMenuCategory(
      canteenId,
      category,
    );
  }
}

/// @nodoc
const $CanteenMenuEvent = _$CanteenMenuEventTearOff();

/// @nodoc
mixin _$CanteenMenuEvent {
  String get canteenId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String canteenId) getMenu,
    required TResult Function(
            String canteenId, ItemModel itemModel, int index, File? file)
        updateMenuItem,
    required TResult Function(String canteenId, ItemModel itemModel, File? file)
        addMenuItem,
    required TResult Function(String canteenId, ItemModel itemModel, int index)
        deleteMenuItem,
    required TResult Function(String canteenId, String category)
        addMenuCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getMenu,
    TResult Function(
            String canteenId, ItemModel itemModel, int index, File? file)?
        updateMenuItem,
    TResult Function(String canteenId, ItemModel itemModel, File? file)?
        addMenuItem,
    TResult Function(String canteenId, ItemModel itemModel, int index)?
        deleteMenuItem,
    TResult Function(String canteenId, String category)? addMenuCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMenu value) getMenu,
    required TResult Function(_UpdateMenuItem value) updateMenuItem,
    required TResult Function(_AddMenuItem value) addMenuItem,
    required TResult Function(_DeleteMenuItem value) deleteMenuItem,
    required TResult Function(_AddMenuCategory value) addMenuCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMenu value)? getMenu,
    TResult Function(_UpdateMenuItem value)? updateMenuItem,
    TResult Function(_AddMenuItem value)? addMenuItem,
    TResult Function(_DeleteMenuItem value)? deleteMenuItem,
    TResult Function(_AddMenuCategory value)? addMenuCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CanteenMenuEventCopyWith<CanteenMenuEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CanteenMenuEventCopyWith<$Res> {
  factory $CanteenMenuEventCopyWith(
          CanteenMenuEvent value, $Res Function(CanteenMenuEvent) then) =
      _$CanteenMenuEventCopyWithImpl<$Res>;
  $Res call({String canteenId});
}

/// @nodoc
class _$CanteenMenuEventCopyWithImpl<$Res>
    implements $CanteenMenuEventCopyWith<$Res> {
  _$CanteenMenuEventCopyWithImpl(this._value, this._then);

  final CanteenMenuEvent _value;
  // ignore: unused_field
  final $Res Function(CanteenMenuEvent) _then;

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
abstract class _$GetMenuCopyWith<$Res>
    implements $CanteenMenuEventCopyWith<$Res> {
  factory _$GetMenuCopyWith(_GetMenu value, $Res Function(_GetMenu) then) =
      __$GetMenuCopyWithImpl<$Res>;
  @override
  $Res call({String canteenId});
}

/// @nodoc
class __$GetMenuCopyWithImpl<$Res> extends _$CanteenMenuEventCopyWithImpl<$Res>
    implements _$GetMenuCopyWith<$Res> {
  __$GetMenuCopyWithImpl(_GetMenu _value, $Res Function(_GetMenu) _then)
      : super(_value, (v) => _then(v as _GetMenu));

  @override
  _GetMenu get _value => super._value as _GetMenu;

  @override
  $Res call({
    Object? canteenId = freezed,
  }) {
    return _then(_GetMenu(
      canteenId == freezed
          ? _value.canteenId
          : canteenId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetMenu implements _GetMenu {
  const _$_GetMenu(this.canteenId);

  @override
  final String canteenId;

  @override
  String toString() {
    return 'CanteenMenuEvent.getMenu(canteenId: $canteenId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetMenu &&
            (identical(other.canteenId, canteenId) ||
                const DeepCollectionEquality()
                    .equals(other.canteenId, canteenId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(canteenId);

  @JsonKey(ignore: true)
  @override
  _$GetMenuCopyWith<_GetMenu> get copyWith =>
      __$GetMenuCopyWithImpl<_GetMenu>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String canteenId) getMenu,
    required TResult Function(
            String canteenId, ItemModel itemModel, int index, File? file)
        updateMenuItem,
    required TResult Function(String canteenId, ItemModel itemModel, File? file)
        addMenuItem,
    required TResult Function(String canteenId, ItemModel itemModel, int index)
        deleteMenuItem,
    required TResult Function(String canteenId, String category)
        addMenuCategory,
  }) {
    return getMenu(canteenId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getMenu,
    TResult Function(
            String canteenId, ItemModel itemModel, int index, File? file)?
        updateMenuItem,
    TResult Function(String canteenId, ItemModel itemModel, File? file)?
        addMenuItem,
    TResult Function(String canteenId, ItemModel itemModel, int index)?
        deleteMenuItem,
    TResult Function(String canteenId, String category)? addMenuCategory,
    required TResult orElse(),
  }) {
    if (getMenu != null) {
      return getMenu(canteenId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMenu value) getMenu,
    required TResult Function(_UpdateMenuItem value) updateMenuItem,
    required TResult Function(_AddMenuItem value) addMenuItem,
    required TResult Function(_DeleteMenuItem value) deleteMenuItem,
    required TResult Function(_AddMenuCategory value) addMenuCategory,
  }) {
    return getMenu(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMenu value)? getMenu,
    TResult Function(_UpdateMenuItem value)? updateMenuItem,
    TResult Function(_AddMenuItem value)? addMenuItem,
    TResult Function(_DeleteMenuItem value)? deleteMenuItem,
    TResult Function(_AddMenuCategory value)? addMenuCategory,
    required TResult orElse(),
  }) {
    if (getMenu != null) {
      return getMenu(this);
    }
    return orElse();
  }
}

abstract class _GetMenu implements CanteenMenuEvent {
  const factory _GetMenu(String canteenId) = _$_GetMenu;

  @override
  String get canteenId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetMenuCopyWith<_GetMenu> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateMenuItemCopyWith<$Res>
    implements $CanteenMenuEventCopyWith<$Res> {
  factory _$UpdateMenuItemCopyWith(
          _UpdateMenuItem value, $Res Function(_UpdateMenuItem) then) =
      __$UpdateMenuItemCopyWithImpl<$Res>;
  @override
  $Res call({String canteenId, ItemModel itemModel, int index, File? file});
}

/// @nodoc
class __$UpdateMenuItemCopyWithImpl<$Res>
    extends _$CanteenMenuEventCopyWithImpl<$Res>
    implements _$UpdateMenuItemCopyWith<$Res> {
  __$UpdateMenuItemCopyWithImpl(
      _UpdateMenuItem _value, $Res Function(_UpdateMenuItem) _then)
      : super(_value, (v) => _then(v as _UpdateMenuItem));

  @override
  _UpdateMenuItem get _value => super._value as _UpdateMenuItem;

  @override
  $Res call({
    Object? canteenId = freezed,
    Object? itemModel = freezed,
    Object? index = freezed,
    Object? file = freezed,
  }) {
    return _then(_UpdateMenuItem(
      canteenId == freezed
          ? _value.canteenId
          : canteenId // ignore: cast_nullable_to_non_nullable
              as String,
      itemModel == freezed
          ? _value.itemModel
          : itemModel // ignore: cast_nullable_to_non_nullable
              as ItemModel,
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$_UpdateMenuItem implements _UpdateMenuItem {
  const _$_UpdateMenuItem(this.canteenId, this.itemModel, this.index,
      {this.file});

  @override
  final String canteenId;
  @override
  final ItemModel itemModel;
  @override
  final int index;
  @override
  final File? file;

  @override
  String toString() {
    return 'CanteenMenuEvent.updateMenuItem(canteenId: $canteenId, itemModel: $itemModel, index: $index, file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateMenuItem &&
            (identical(other.canteenId, canteenId) ||
                const DeepCollectionEquality()
                    .equals(other.canteenId, canteenId)) &&
            (identical(other.itemModel, itemModel) ||
                const DeepCollectionEquality()
                    .equals(other.itemModel, itemModel)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(canteenId) ^
      const DeepCollectionEquality().hash(itemModel) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(file);

  @JsonKey(ignore: true)
  @override
  _$UpdateMenuItemCopyWith<_UpdateMenuItem> get copyWith =>
      __$UpdateMenuItemCopyWithImpl<_UpdateMenuItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String canteenId) getMenu,
    required TResult Function(
            String canteenId, ItemModel itemModel, int index, File? file)
        updateMenuItem,
    required TResult Function(String canteenId, ItemModel itemModel, File? file)
        addMenuItem,
    required TResult Function(String canteenId, ItemModel itemModel, int index)
        deleteMenuItem,
    required TResult Function(String canteenId, String category)
        addMenuCategory,
  }) {
    return updateMenuItem(canteenId, itemModel, index, file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getMenu,
    TResult Function(
            String canteenId, ItemModel itemModel, int index, File? file)?
        updateMenuItem,
    TResult Function(String canteenId, ItemModel itemModel, File? file)?
        addMenuItem,
    TResult Function(String canteenId, ItemModel itemModel, int index)?
        deleteMenuItem,
    TResult Function(String canteenId, String category)? addMenuCategory,
    required TResult orElse(),
  }) {
    if (updateMenuItem != null) {
      return updateMenuItem(canteenId, itemModel, index, file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMenu value) getMenu,
    required TResult Function(_UpdateMenuItem value) updateMenuItem,
    required TResult Function(_AddMenuItem value) addMenuItem,
    required TResult Function(_DeleteMenuItem value) deleteMenuItem,
    required TResult Function(_AddMenuCategory value) addMenuCategory,
  }) {
    return updateMenuItem(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMenu value)? getMenu,
    TResult Function(_UpdateMenuItem value)? updateMenuItem,
    TResult Function(_AddMenuItem value)? addMenuItem,
    TResult Function(_DeleteMenuItem value)? deleteMenuItem,
    TResult Function(_AddMenuCategory value)? addMenuCategory,
    required TResult orElse(),
  }) {
    if (updateMenuItem != null) {
      return updateMenuItem(this);
    }
    return orElse();
  }
}

abstract class _UpdateMenuItem implements CanteenMenuEvent {
  const factory _UpdateMenuItem(
          String canteenId, ItemModel itemModel, int index, {File? file}) =
      _$_UpdateMenuItem;

  @override
  String get canteenId => throw _privateConstructorUsedError;
  ItemModel get itemModel => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  File? get file => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateMenuItemCopyWith<_UpdateMenuItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddMenuItemCopyWith<$Res>
    implements $CanteenMenuEventCopyWith<$Res> {
  factory _$AddMenuItemCopyWith(
          _AddMenuItem value, $Res Function(_AddMenuItem) then) =
      __$AddMenuItemCopyWithImpl<$Res>;
  @override
  $Res call({String canteenId, ItemModel itemModel, File? file});
}

/// @nodoc
class __$AddMenuItemCopyWithImpl<$Res>
    extends _$CanteenMenuEventCopyWithImpl<$Res>
    implements _$AddMenuItemCopyWith<$Res> {
  __$AddMenuItemCopyWithImpl(
      _AddMenuItem _value, $Res Function(_AddMenuItem) _then)
      : super(_value, (v) => _then(v as _AddMenuItem));

  @override
  _AddMenuItem get _value => super._value as _AddMenuItem;

  @override
  $Res call({
    Object? canteenId = freezed,
    Object? itemModel = freezed,
    Object? file = freezed,
  }) {
    return _then(_AddMenuItem(
      canteenId == freezed
          ? _value.canteenId
          : canteenId // ignore: cast_nullable_to_non_nullable
              as String,
      itemModel == freezed
          ? _value.itemModel
          : itemModel // ignore: cast_nullable_to_non_nullable
              as ItemModel,
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$_AddMenuItem implements _AddMenuItem {
  const _$_AddMenuItem(this.canteenId, this.itemModel, {this.file});

  @override
  final String canteenId;
  @override
  final ItemModel itemModel;
  @override
  final File? file;

  @override
  String toString() {
    return 'CanteenMenuEvent.addMenuItem(canteenId: $canteenId, itemModel: $itemModel, file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddMenuItem &&
            (identical(other.canteenId, canteenId) ||
                const DeepCollectionEquality()
                    .equals(other.canteenId, canteenId)) &&
            (identical(other.itemModel, itemModel) ||
                const DeepCollectionEquality()
                    .equals(other.itemModel, itemModel)) &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(canteenId) ^
      const DeepCollectionEquality().hash(itemModel) ^
      const DeepCollectionEquality().hash(file);

  @JsonKey(ignore: true)
  @override
  _$AddMenuItemCopyWith<_AddMenuItem> get copyWith =>
      __$AddMenuItemCopyWithImpl<_AddMenuItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String canteenId) getMenu,
    required TResult Function(
            String canteenId, ItemModel itemModel, int index, File? file)
        updateMenuItem,
    required TResult Function(String canteenId, ItemModel itemModel, File? file)
        addMenuItem,
    required TResult Function(String canteenId, ItemModel itemModel, int index)
        deleteMenuItem,
    required TResult Function(String canteenId, String category)
        addMenuCategory,
  }) {
    return addMenuItem(canteenId, itemModel, file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getMenu,
    TResult Function(
            String canteenId, ItemModel itemModel, int index, File? file)?
        updateMenuItem,
    TResult Function(String canteenId, ItemModel itemModel, File? file)?
        addMenuItem,
    TResult Function(String canteenId, ItemModel itemModel, int index)?
        deleteMenuItem,
    TResult Function(String canteenId, String category)? addMenuCategory,
    required TResult orElse(),
  }) {
    if (addMenuItem != null) {
      return addMenuItem(canteenId, itemModel, file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMenu value) getMenu,
    required TResult Function(_UpdateMenuItem value) updateMenuItem,
    required TResult Function(_AddMenuItem value) addMenuItem,
    required TResult Function(_DeleteMenuItem value) deleteMenuItem,
    required TResult Function(_AddMenuCategory value) addMenuCategory,
  }) {
    return addMenuItem(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMenu value)? getMenu,
    TResult Function(_UpdateMenuItem value)? updateMenuItem,
    TResult Function(_AddMenuItem value)? addMenuItem,
    TResult Function(_DeleteMenuItem value)? deleteMenuItem,
    TResult Function(_AddMenuCategory value)? addMenuCategory,
    required TResult orElse(),
  }) {
    if (addMenuItem != null) {
      return addMenuItem(this);
    }
    return orElse();
  }
}

abstract class _AddMenuItem implements CanteenMenuEvent {
  const factory _AddMenuItem(String canteenId, ItemModel itemModel,
      {File? file}) = _$_AddMenuItem;

  @override
  String get canteenId => throw _privateConstructorUsedError;
  ItemModel get itemModel => throw _privateConstructorUsedError;
  File? get file => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddMenuItemCopyWith<_AddMenuItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteMenuItemCopyWith<$Res>
    implements $CanteenMenuEventCopyWith<$Res> {
  factory _$DeleteMenuItemCopyWith(
          _DeleteMenuItem value, $Res Function(_DeleteMenuItem) then) =
      __$DeleteMenuItemCopyWithImpl<$Res>;
  @override
  $Res call({String canteenId, ItemModel itemModel, int index});
}

/// @nodoc
class __$DeleteMenuItemCopyWithImpl<$Res>
    extends _$CanteenMenuEventCopyWithImpl<$Res>
    implements _$DeleteMenuItemCopyWith<$Res> {
  __$DeleteMenuItemCopyWithImpl(
      _DeleteMenuItem _value, $Res Function(_DeleteMenuItem) _then)
      : super(_value, (v) => _then(v as _DeleteMenuItem));

  @override
  _DeleteMenuItem get _value => super._value as _DeleteMenuItem;

  @override
  $Res call({
    Object? canteenId = freezed,
    Object? itemModel = freezed,
    Object? index = freezed,
  }) {
    return _then(_DeleteMenuItem(
      canteenId == freezed
          ? _value.canteenId
          : canteenId // ignore: cast_nullable_to_non_nullable
              as String,
      itemModel == freezed
          ? _value.itemModel
          : itemModel // ignore: cast_nullable_to_non_nullable
              as ItemModel,
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeleteMenuItem implements _DeleteMenuItem {
  const _$_DeleteMenuItem(this.canteenId, this.itemModel, this.index);

  @override
  final String canteenId;
  @override
  final ItemModel itemModel;
  @override
  final int index;

  @override
  String toString() {
    return 'CanteenMenuEvent.deleteMenuItem(canteenId: $canteenId, itemModel: $itemModel, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteMenuItem &&
            (identical(other.canteenId, canteenId) ||
                const DeepCollectionEquality()
                    .equals(other.canteenId, canteenId)) &&
            (identical(other.itemModel, itemModel) ||
                const DeepCollectionEquality()
                    .equals(other.itemModel, itemModel)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(canteenId) ^
      const DeepCollectionEquality().hash(itemModel) ^
      const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$DeleteMenuItemCopyWith<_DeleteMenuItem> get copyWith =>
      __$DeleteMenuItemCopyWithImpl<_DeleteMenuItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String canteenId) getMenu,
    required TResult Function(
            String canteenId, ItemModel itemModel, int index, File? file)
        updateMenuItem,
    required TResult Function(String canteenId, ItemModel itemModel, File? file)
        addMenuItem,
    required TResult Function(String canteenId, ItemModel itemModel, int index)
        deleteMenuItem,
    required TResult Function(String canteenId, String category)
        addMenuCategory,
  }) {
    return deleteMenuItem(canteenId, itemModel, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getMenu,
    TResult Function(
            String canteenId, ItemModel itemModel, int index, File? file)?
        updateMenuItem,
    TResult Function(String canteenId, ItemModel itemModel, File? file)?
        addMenuItem,
    TResult Function(String canteenId, ItemModel itemModel, int index)?
        deleteMenuItem,
    TResult Function(String canteenId, String category)? addMenuCategory,
    required TResult orElse(),
  }) {
    if (deleteMenuItem != null) {
      return deleteMenuItem(canteenId, itemModel, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMenu value) getMenu,
    required TResult Function(_UpdateMenuItem value) updateMenuItem,
    required TResult Function(_AddMenuItem value) addMenuItem,
    required TResult Function(_DeleteMenuItem value) deleteMenuItem,
    required TResult Function(_AddMenuCategory value) addMenuCategory,
  }) {
    return deleteMenuItem(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMenu value)? getMenu,
    TResult Function(_UpdateMenuItem value)? updateMenuItem,
    TResult Function(_AddMenuItem value)? addMenuItem,
    TResult Function(_DeleteMenuItem value)? deleteMenuItem,
    TResult Function(_AddMenuCategory value)? addMenuCategory,
    required TResult orElse(),
  }) {
    if (deleteMenuItem != null) {
      return deleteMenuItem(this);
    }
    return orElse();
  }
}

abstract class _DeleteMenuItem implements CanteenMenuEvent {
  const factory _DeleteMenuItem(
      String canteenId, ItemModel itemModel, int index) = _$_DeleteMenuItem;

  @override
  String get canteenId => throw _privateConstructorUsedError;
  ItemModel get itemModel => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeleteMenuItemCopyWith<_DeleteMenuItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddMenuCategoryCopyWith<$Res>
    implements $CanteenMenuEventCopyWith<$Res> {
  factory _$AddMenuCategoryCopyWith(
          _AddMenuCategory value, $Res Function(_AddMenuCategory) then) =
      __$AddMenuCategoryCopyWithImpl<$Res>;
  @override
  $Res call({String canteenId, String category});
}

/// @nodoc
class __$AddMenuCategoryCopyWithImpl<$Res>
    extends _$CanteenMenuEventCopyWithImpl<$Res>
    implements _$AddMenuCategoryCopyWith<$Res> {
  __$AddMenuCategoryCopyWithImpl(
      _AddMenuCategory _value, $Res Function(_AddMenuCategory) _then)
      : super(_value, (v) => _then(v as _AddMenuCategory));

  @override
  _AddMenuCategory get _value => super._value as _AddMenuCategory;

  @override
  $Res call({
    Object? canteenId = freezed,
    Object? category = freezed,
  }) {
    return _then(_AddMenuCategory(
      canteenId == freezed
          ? _value.canteenId
          : canteenId // ignore: cast_nullable_to_non_nullable
              as String,
      category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddMenuCategory implements _AddMenuCategory {
  const _$_AddMenuCategory(this.canteenId, this.category);

  @override
  final String canteenId;
  @override
  final String category;

  @override
  String toString() {
    return 'CanteenMenuEvent.addMenuCategory(canteenId: $canteenId, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddMenuCategory &&
            (identical(other.canteenId, canteenId) ||
                const DeepCollectionEquality()
                    .equals(other.canteenId, canteenId)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(canteenId) ^
      const DeepCollectionEquality().hash(category);

  @JsonKey(ignore: true)
  @override
  _$AddMenuCategoryCopyWith<_AddMenuCategory> get copyWith =>
      __$AddMenuCategoryCopyWithImpl<_AddMenuCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String canteenId) getMenu,
    required TResult Function(
            String canteenId, ItemModel itemModel, int index, File? file)
        updateMenuItem,
    required TResult Function(String canteenId, ItemModel itemModel, File? file)
        addMenuItem,
    required TResult Function(String canteenId, ItemModel itemModel, int index)
        deleteMenuItem,
    required TResult Function(String canteenId, String category)
        addMenuCategory,
  }) {
    return addMenuCategory(canteenId, category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String canteenId)? getMenu,
    TResult Function(
            String canteenId, ItemModel itemModel, int index, File? file)?
        updateMenuItem,
    TResult Function(String canteenId, ItemModel itemModel, File? file)?
        addMenuItem,
    TResult Function(String canteenId, ItemModel itemModel, int index)?
        deleteMenuItem,
    TResult Function(String canteenId, String category)? addMenuCategory,
    required TResult orElse(),
  }) {
    if (addMenuCategory != null) {
      return addMenuCategory(canteenId, category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMenu value) getMenu,
    required TResult Function(_UpdateMenuItem value) updateMenuItem,
    required TResult Function(_AddMenuItem value) addMenuItem,
    required TResult Function(_DeleteMenuItem value) deleteMenuItem,
    required TResult Function(_AddMenuCategory value) addMenuCategory,
  }) {
    return addMenuCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMenu value)? getMenu,
    TResult Function(_UpdateMenuItem value)? updateMenuItem,
    TResult Function(_AddMenuItem value)? addMenuItem,
    TResult Function(_DeleteMenuItem value)? deleteMenuItem,
    TResult Function(_AddMenuCategory value)? addMenuCategory,
    required TResult orElse(),
  }) {
    if (addMenuCategory != null) {
      return addMenuCategory(this);
    }
    return orElse();
  }
}

abstract class _AddMenuCategory implements CanteenMenuEvent {
  const factory _AddMenuCategory(String canteenId, String category) =
      _$_AddMenuCategory;

  @override
  String get canteenId => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddMenuCategoryCopyWith<_AddMenuCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CanteenMenuStateTearOff {
  const _$CanteenMenuStateTearOff();

  _CanteenMenuState call(
      {bool? isMenuLoading,
      bool? isMenuItemLoading,
      bool? isDeleteItemLoading,
      bool? isAddCategoryLoading,
      Option<FirebaseFailure>? failureOrSuccessMenu,
      Option<Either<FirebaseFailure, Unit>>? itemFailureOrSuccess,
      Option<Either<FirebaseFailure, Unit>>? itemDeleteFailureOrSuccess,
      Option<Either<FirebaseFailure, String>>? addCategoryFailureOrSuccess,
      List<ItemModel>? menuItemsList}) {
    return _CanteenMenuState(
      isMenuLoading: isMenuLoading,
      isMenuItemLoading: isMenuItemLoading,
      isDeleteItemLoading: isDeleteItemLoading,
      isAddCategoryLoading: isAddCategoryLoading,
      failureOrSuccessMenu: failureOrSuccessMenu,
      itemFailureOrSuccess: itemFailureOrSuccess,
      itemDeleteFailureOrSuccess: itemDeleteFailureOrSuccess,
      addCategoryFailureOrSuccess: addCategoryFailureOrSuccess,
      menuItemsList: menuItemsList,
    );
  }
}

/// @nodoc
const $CanteenMenuState = _$CanteenMenuStateTearOff();

/// @nodoc
mixin _$CanteenMenuState {
  bool? get isMenuLoading => throw _privateConstructorUsedError;
  bool? get isMenuItemLoading => throw _privateConstructorUsedError;
  bool? get isDeleteItemLoading => throw _privateConstructorUsedError;
  bool? get isAddCategoryLoading => throw _privateConstructorUsedError;
  Option<FirebaseFailure>? get failureOrSuccessMenu =>
      throw _privateConstructorUsedError;
  Option<Either<FirebaseFailure, Unit>>? get itemFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Option<Either<FirebaseFailure, Unit>>? get itemDeleteFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Option<Either<FirebaseFailure, String>>? get addCategoryFailureOrSuccess =>
      throw _privateConstructorUsedError;
  List<ItemModel>? get menuItemsList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CanteenMenuStateCopyWith<CanteenMenuState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CanteenMenuStateCopyWith<$Res> {
  factory $CanteenMenuStateCopyWith(
          CanteenMenuState value, $Res Function(CanteenMenuState) then) =
      _$CanteenMenuStateCopyWithImpl<$Res>;
  $Res call(
      {bool? isMenuLoading,
      bool? isMenuItemLoading,
      bool? isDeleteItemLoading,
      bool? isAddCategoryLoading,
      Option<FirebaseFailure>? failureOrSuccessMenu,
      Option<Either<FirebaseFailure, Unit>>? itemFailureOrSuccess,
      Option<Either<FirebaseFailure, Unit>>? itemDeleteFailureOrSuccess,
      Option<Either<FirebaseFailure, String>>? addCategoryFailureOrSuccess,
      List<ItemModel>? menuItemsList});
}

/// @nodoc
class _$CanteenMenuStateCopyWithImpl<$Res>
    implements $CanteenMenuStateCopyWith<$Res> {
  _$CanteenMenuStateCopyWithImpl(this._value, this._then);

  final CanteenMenuState _value;
  // ignore: unused_field
  final $Res Function(CanteenMenuState) _then;

  @override
  $Res call({
    Object? isMenuLoading = freezed,
    Object? isMenuItemLoading = freezed,
    Object? isDeleteItemLoading = freezed,
    Object? isAddCategoryLoading = freezed,
    Object? failureOrSuccessMenu = freezed,
    Object? itemFailureOrSuccess = freezed,
    Object? itemDeleteFailureOrSuccess = freezed,
    Object? addCategoryFailureOrSuccess = freezed,
    Object? menuItemsList = freezed,
  }) {
    return _then(_value.copyWith(
      isMenuLoading: isMenuLoading == freezed
          ? _value.isMenuLoading
          : isMenuLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isMenuItemLoading: isMenuItemLoading == freezed
          ? _value.isMenuItemLoading
          : isMenuItemLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDeleteItemLoading: isDeleteItemLoading == freezed
          ? _value.isDeleteItemLoading
          : isDeleteItemLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAddCategoryLoading: isAddCategoryLoading == freezed
          ? _value.isAddCategoryLoading
          : isAddCategoryLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      failureOrSuccessMenu: failureOrSuccessMenu == freezed
          ? _value.failureOrSuccessMenu
          : failureOrSuccessMenu // ignore: cast_nullable_to_non_nullable
              as Option<FirebaseFailure>?,
      itemFailureOrSuccess: itemFailureOrSuccess == freezed
          ? _value.itemFailureOrSuccess
          : itemFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, Unit>>?,
      itemDeleteFailureOrSuccess: itemDeleteFailureOrSuccess == freezed
          ? _value.itemDeleteFailureOrSuccess
          : itemDeleteFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, Unit>>?,
      addCategoryFailureOrSuccess: addCategoryFailureOrSuccess == freezed
          ? _value.addCategoryFailureOrSuccess
          : addCategoryFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, String>>?,
      menuItemsList: menuItemsList == freezed
          ? _value.menuItemsList
          : menuItemsList // ignore: cast_nullable_to_non_nullable
              as List<ItemModel>?,
    ));
  }
}

/// @nodoc
abstract class _$CanteenMenuStateCopyWith<$Res>
    implements $CanteenMenuStateCopyWith<$Res> {
  factory _$CanteenMenuStateCopyWith(
          _CanteenMenuState value, $Res Function(_CanteenMenuState) then) =
      __$CanteenMenuStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? isMenuLoading,
      bool? isMenuItemLoading,
      bool? isDeleteItemLoading,
      bool? isAddCategoryLoading,
      Option<FirebaseFailure>? failureOrSuccessMenu,
      Option<Either<FirebaseFailure, Unit>>? itemFailureOrSuccess,
      Option<Either<FirebaseFailure, Unit>>? itemDeleteFailureOrSuccess,
      Option<Either<FirebaseFailure, String>>? addCategoryFailureOrSuccess,
      List<ItemModel>? menuItemsList});
}

/// @nodoc
class __$CanteenMenuStateCopyWithImpl<$Res>
    extends _$CanteenMenuStateCopyWithImpl<$Res>
    implements _$CanteenMenuStateCopyWith<$Res> {
  __$CanteenMenuStateCopyWithImpl(
      _CanteenMenuState _value, $Res Function(_CanteenMenuState) _then)
      : super(_value, (v) => _then(v as _CanteenMenuState));

  @override
  _CanteenMenuState get _value => super._value as _CanteenMenuState;

  @override
  $Res call({
    Object? isMenuLoading = freezed,
    Object? isMenuItemLoading = freezed,
    Object? isDeleteItemLoading = freezed,
    Object? isAddCategoryLoading = freezed,
    Object? failureOrSuccessMenu = freezed,
    Object? itemFailureOrSuccess = freezed,
    Object? itemDeleteFailureOrSuccess = freezed,
    Object? addCategoryFailureOrSuccess = freezed,
    Object? menuItemsList = freezed,
  }) {
    return _then(_CanteenMenuState(
      isMenuLoading: isMenuLoading == freezed
          ? _value.isMenuLoading
          : isMenuLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isMenuItemLoading: isMenuItemLoading == freezed
          ? _value.isMenuItemLoading
          : isMenuItemLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDeleteItemLoading: isDeleteItemLoading == freezed
          ? _value.isDeleteItemLoading
          : isDeleteItemLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAddCategoryLoading: isAddCategoryLoading == freezed
          ? _value.isAddCategoryLoading
          : isAddCategoryLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      failureOrSuccessMenu: failureOrSuccessMenu == freezed
          ? _value.failureOrSuccessMenu
          : failureOrSuccessMenu // ignore: cast_nullable_to_non_nullable
              as Option<FirebaseFailure>?,
      itemFailureOrSuccess: itemFailureOrSuccess == freezed
          ? _value.itemFailureOrSuccess
          : itemFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, Unit>>?,
      itemDeleteFailureOrSuccess: itemDeleteFailureOrSuccess == freezed
          ? _value.itemDeleteFailureOrSuccess
          : itemDeleteFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, Unit>>?,
      addCategoryFailureOrSuccess: addCategoryFailureOrSuccess == freezed
          ? _value.addCategoryFailureOrSuccess
          : addCategoryFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, String>>?,
      menuItemsList: menuItemsList == freezed
          ? _value.menuItemsList
          : menuItemsList // ignore: cast_nullable_to_non_nullable
              as List<ItemModel>?,
    ));
  }
}

/// @nodoc

class _$_CanteenMenuState implements _CanteenMenuState {
  const _$_CanteenMenuState(
      {this.isMenuLoading,
      this.isMenuItemLoading,
      this.isDeleteItemLoading,
      this.isAddCategoryLoading,
      this.failureOrSuccessMenu,
      this.itemFailureOrSuccess,
      this.itemDeleteFailureOrSuccess,
      this.addCategoryFailureOrSuccess,
      this.menuItemsList});

  @override
  final bool? isMenuLoading;
  @override
  final bool? isMenuItemLoading;
  @override
  final bool? isDeleteItemLoading;
  @override
  final bool? isAddCategoryLoading;
  @override
  final Option<FirebaseFailure>? failureOrSuccessMenu;
  @override
  final Option<Either<FirebaseFailure, Unit>>? itemFailureOrSuccess;
  @override
  final Option<Either<FirebaseFailure, Unit>>? itemDeleteFailureOrSuccess;
  @override
  final Option<Either<FirebaseFailure, String>>? addCategoryFailureOrSuccess;
  @override
  final List<ItemModel>? menuItemsList;

  @override
  String toString() {
    return 'CanteenMenuState(isMenuLoading: $isMenuLoading, isMenuItemLoading: $isMenuItemLoading, isDeleteItemLoading: $isDeleteItemLoading, isAddCategoryLoading: $isAddCategoryLoading, failureOrSuccessMenu: $failureOrSuccessMenu, itemFailureOrSuccess: $itemFailureOrSuccess, itemDeleteFailureOrSuccess: $itemDeleteFailureOrSuccess, addCategoryFailureOrSuccess: $addCategoryFailureOrSuccess, menuItemsList: $menuItemsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CanteenMenuState &&
            (identical(other.isMenuLoading, isMenuLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isMenuLoading, isMenuLoading)) &&
            (identical(other.isMenuItemLoading, isMenuItemLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isMenuItemLoading, isMenuItemLoading)) &&
            (identical(other.isDeleteItemLoading, isDeleteItemLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isDeleteItemLoading, isDeleteItemLoading)) &&
            (identical(other.isAddCategoryLoading, isAddCategoryLoading) ||
                const DeepCollectionEquality().equals(
                    other.isAddCategoryLoading, isAddCategoryLoading)) &&
            (identical(other.failureOrSuccessMenu, failureOrSuccessMenu) ||
                const DeepCollectionEquality().equals(
                    other.failureOrSuccessMenu, failureOrSuccessMenu)) &&
            (identical(other.itemFailureOrSuccess, itemFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.itemFailureOrSuccess, itemFailureOrSuccess)) &&
            (identical(other.itemDeleteFailureOrSuccess,
                    itemDeleteFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.itemDeleteFailureOrSuccess,
                    itemDeleteFailureOrSuccess)) &&
            (identical(other.addCategoryFailureOrSuccess,
                    addCategoryFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.addCategoryFailureOrSuccess,
                    addCategoryFailureOrSuccess)) &&
            (identical(other.menuItemsList, menuItemsList) ||
                const DeepCollectionEquality()
                    .equals(other.menuItemsList, menuItemsList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isMenuLoading) ^
      const DeepCollectionEquality().hash(isMenuItemLoading) ^
      const DeepCollectionEquality().hash(isDeleteItemLoading) ^
      const DeepCollectionEquality().hash(isAddCategoryLoading) ^
      const DeepCollectionEquality().hash(failureOrSuccessMenu) ^
      const DeepCollectionEquality().hash(itemFailureOrSuccess) ^
      const DeepCollectionEquality().hash(itemDeleteFailureOrSuccess) ^
      const DeepCollectionEquality().hash(addCategoryFailureOrSuccess) ^
      const DeepCollectionEquality().hash(menuItemsList);

  @JsonKey(ignore: true)
  @override
  _$CanteenMenuStateCopyWith<_CanteenMenuState> get copyWith =>
      __$CanteenMenuStateCopyWithImpl<_CanteenMenuState>(this, _$identity);
}

abstract class _CanteenMenuState implements CanteenMenuState {
  const factory _CanteenMenuState(
      {bool? isMenuLoading,
      bool? isMenuItemLoading,
      bool? isDeleteItemLoading,
      bool? isAddCategoryLoading,
      Option<FirebaseFailure>? failureOrSuccessMenu,
      Option<Either<FirebaseFailure, Unit>>? itemFailureOrSuccess,
      Option<Either<FirebaseFailure, Unit>>? itemDeleteFailureOrSuccess,
      Option<Either<FirebaseFailure, String>>? addCategoryFailureOrSuccess,
      List<ItemModel>? menuItemsList}) = _$_CanteenMenuState;

  @override
  bool? get isMenuLoading => throw _privateConstructorUsedError;
  @override
  bool? get isMenuItemLoading => throw _privateConstructorUsedError;
  @override
  bool? get isDeleteItemLoading => throw _privateConstructorUsedError;
  @override
  bool? get isAddCategoryLoading => throw _privateConstructorUsedError;
  @override
  Option<FirebaseFailure>? get failureOrSuccessMenu =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<FirebaseFailure, Unit>>? get itemFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<FirebaseFailure, Unit>>? get itemDeleteFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<FirebaseFailure, String>>? get addCategoryFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  List<ItemModel>? get menuItemsList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CanteenMenuStateCopyWith<_CanteenMenuState> get copyWith =>
      throw _privateConstructorUsedError;
}
