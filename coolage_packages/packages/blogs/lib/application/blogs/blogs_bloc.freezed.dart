// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'blogs_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BlogsEventTearOff {
  const _$BlogsEventTearOff();

  _GetBlogs getBlogs(
      {List<String>? selectedTags, String? city, String? college}) {
    return _GetBlogs(
      selectedTags: selectedTags,
      city: city,
      college: college,
    );
  }

  _GetMoreBlogs getMoreBlogs(
      {List<String>? selectedTags, String? city, String? college}) {
    return _GetMoreBlogs(
      selectedTags: selectedTags,
      city: city,
      college: college,
    );
  }

  _GetPublishingBlogs getPublishingBlogs(
      {required String userCollege, String? status, DateTime? selectedDate}) {
    return _GetPublishingBlogs(
      userCollege: userCollege,
      status: status,
      selectedDate: selectedDate,
    );
  }

  _GetMorePublishingPosts getMorePublishingBlogs(
      {required String userCollege, String? status, DateTime? selectedDate}) {
    return _GetMorePublishingPosts(
      userCollege: userCollege,
      status: status,
      selectedDate: selectedDate,
    );
  }

  _GetUserBlogs getUserBlogs(
      {required CoolUser coolUser, String? status, DateTime? selectedDate}) {
    return _GetUserBlogs(
      coolUser: coolUser,
      status: status,
      selectedDate: selectedDate,
    );
  }

  _GetMoreUserBlogs getMoreUserBlogs(
      {required CoolUser coolUser, String? status, DateTime? selectedDate}) {
    return _GetMoreUserBlogs(
      coolUser: coolUser,
      status: status,
      selectedDate: selectedDate,
    );
  }

  _AddBlog addBlog(
      {String? userCollege, BlogsModel? blogModel, File? file, int? index}) {
    return _AddBlog(
      userCollege: userCollege,
      blogModel: blogModel,
      file: file,
      index: index,
    );
  }

  _DeleteBlog deleteBlog(
      {required String userCollege,
      required BlogsModel blogModel,
      required int index,
      required bool isDeletedFromApproved}) {
    return _DeleteBlog(
      userCollege: userCollege,
      blogModel: blogModel,
      index: index,
      isDeletedFromApproved: isDeletedFromApproved,
    );
  }

  _DeclineBlog declineBlog(
      {required String userCollege,
      required BlogsModel blogModel,
      required int index}) {
    return _DeclineBlog(
      userCollege: userCollege,
      blogModel: blogModel,
      index: index,
    );
  }

  _ApproveBlog approveBlog(
      {required String userCollege,
      required BlogsModel blogModel,
      required int index}) {
    return _ApproveBlog(
      userCollege: userCollege,
      blogModel: blogModel,
      index: index,
    );
  }

  _LikeBlog likeBlog({required String userCollege, required int index}) {
    return _LikeBlog(
      userCollege: userCollege,
      index: index,
    );
  }

  _LikeSingleBlogPost likeSingleBlogPost(
      {required BlogsModel blogModel, required Function onChanged}) {
    return _LikeSingleBlogPost(
      blogModel: blogModel,
      onChanged: onChanged,
    );
  }
}

/// @nodoc
const $BlogsEvent = _$BlogsEventTearOff();

/// @nodoc
mixin _$BlogsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<String>? selectedTags, String? city, String? college)
        getBlogs,
    required TResult Function(
            List<String>? selectedTags, String? city, String? college)
        getMoreBlogs,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getPublishingBlogs,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getMorePublishingBlogs,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getUserBlogs,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getMoreUserBlogs,
    required TResult Function(
            String? userCollege, BlogsModel? blogModel, File? file, int? index)
        addBlog,
    required TResult Function(String userCollege, BlogsModel blogModel,
            int index, bool isDeletedFromApproved)
        deleteBlog,
    required TResult Function(
            String userCollege, BlogsModel blogModel, int index)
        declineBlog,
    required TResult Function(
            String userCollege, BlogsModel blogModel, int index)
        approveBlog,
    required TResult Function(String userCollege, int index) likeBlog,
    required TResult Function(BlogsModel blogModel, Function onChanged)
        likeSingleBlogPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String>? selectedTags, String? city, String? college)?
        getBlogs,
    TResult Function(List<String>? selectedTags, String? city, String? college)?
        getMoreBlogs,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getPublishingBlogs,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getMorePublishingBlogs,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getUserBlogs,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getMoreUserBlogs,
    TResult Function(
            String? userCollege, BlogsModel? blogModel, File? file, int? index)?
        addBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index,
            bool isDeletedFromApproved)?
        deleteBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index)?
        declineBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index)?
        approveBlog,
    TResult Function(String userCollege, int index)? likeBlog,
    TResult Function(BlogsModel blogModel, Function onChanged)?
        likeSingleBlogPost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBlogs value) getBlogs,
    required TResult Function(_GetMoreBlogs value) getMoreBlogs,
    required TResult Function(_GetPublishingBlogs value) getPublishingBlogs,
    required TResult Function(_GetMorePublishingPosts value)
        getMorePublishingBlogs,
    required TResult Function(_GetUserBlogs value) getUserBlogs,
    required TResult Function(_GetMoreUserBlogs value) getMoreUserBlogs,
    required TResult Function(_AddBlog value) addBlog,
    required TResult Function(_DeleteBlog value) deleteBlog,
    required TResult Function(_DeclineBlog value) declineBlog,
    required TResult Function(_ApproveBlog value) approveBlog,
    required TResult Function(_LikeBlog value) likeBlog,
    required TResult Function(_LikeSingleBlogPost value) likeSingleBlogPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBlogs value)? getBlogs,
    TResult Function(_GetMoreBlogs value)? getMoreBlogs,
    TResult Function(_GetPublishingBlogs value)? getPublishingBlogs,
    TResult Function(_GetMorePublishingPosts value)? getMorePublishingBlogs,
    TResult Function(_GetUserBlogs value)? getUserBlogs,
    TResult Function(_GetMoreUserBlogs value)? getMoreUserBlogs,
    TResult Function(_AddBlog value)? addBlog,
    TResult Function(_DeleteBlog value)? deleteBlog,
    TResult Function(_DeclineBlog value)? declineBlog,
    TResult Function(_ApproveBlog value)? approveBlog,
    TResult Function(_LikeBlog value)? likeBlog,
    TResult Function(_LikeSingleBlogPost value)? likeSingleBlogPost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogsEventCopyWith<$Res> {
  factory $BlogsEventCopyWith(
          BlogsEvent value, $Res Function(BlogsEvent) then) =
      _$BlogsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BlogsEventCopyWithImpl<$Res> implements $BlogsEventCopyWith<$Res> {
  _$BlogsEventCopyWithImpl(this._value, this._then);

  final BlogsEvent _value;
  // ignore: unused_field
  final $Res Function(BlogsEvent) _then;
}

/// @nodoc
abstract class _$GetBlogsCopyWith<$Res> {
  factory _$GetBlogsCopyWith(_GetBlogs value, $Res Function(_GetBlogs) then) =
      __$GetBlogsCopyWithImpl<$Res>;
  $Res call({List<String>? selectedTags, String? city, String? college});
}

/// @nodoc
class __$GetBlogsCopyWithImpl<$Res> extends _$BlogsEventCopyWithImpl<$Res>
    implements _$GetBlogsCopyWith<$Res> {
  __$GetBlogsCopyWithImpl(_GetBlogs _value, $Res Function(_GetBlogs) _then)
      : super(_value, (v) => _then(v as _GetBlogs));

  @override
  _GetBlogs get _value => super._value as _GetBlogs;

  @override
  $Res call({
    Object? selectedTags = freezed,
    Object? city = freezed,
    Object? college = freezed,
  }) {
    return _then(_GetBlogs(
      selectedTags: selectedTags == freezed
          ? _value.selectedTags
          : selectedTags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      college: college == freezed
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GetBlogs implements _GetBlogs {
  const _$_GetBlogs({this.selectedTags, this.city, this.college});

  @override
  final List<String>? selectedTags;
  @override
  final String? city;
  @override
  final String? college;

  @override
  String toString() {
    return 'BlogsEvent.getBlogs(selectedTags: $selectedTags, city: $city, college: $college)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetBlogs &&
            (identical(other.selectedTags, selectedTags) ||
                const DeepCollectionEquality()
                    .equals(other.selectedTags, selectedTags)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.college, college) ||
                const DeepCollectionEquality().equals(other.college, college)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedTags) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(college);

  @JsonKey(ignore: true)
  @override
  _$GetBlogsCopyWith<_GetBlogs> get copyWith =>
      __$GetBlogsCopyWithImpl<_GetBlogs>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<String>? selectedTags, String? city, String? college)
        getBlogs,
    required TResult Function(
            List<String>? selectedTags, String? city, String? college)
        getMoreBlogs,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getPublishingBlogs,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getMorePublishingBlogs,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getUserBlogs,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getMoreUserBlogs,
    required TResult Function(
            String? userCollege, BlogsModel? blogModel, File? file, int? index)
        addBlog,
    required TResult Function(String userCollege, BlogsModel blogModel,
            int index, bool isDeletedFromApproved)
        deleteBlog,
    required TResult Function(
            String userCollege, BlogsModel blogModel, int index)
        declineBlog,
    required TResult Function(
            String userCollege, BlogsModel blogModel, int index)
        approveBlog,
    required TResult Function(String userCollege, int index) likeBlog,
    required TResult Function(BlogsModel blogModel, Function onChanged)
        likeSingleBlogPost,
  }) {
    return getBlogs(selectedTags, city, college);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String>? selectedTags, String? city, String? college)?
        getBlogs,
    TResult Function(List<String>? selectedTags, String? city, String? college)?
        getMoreBlogs,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getPublishingBlogs,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getMorePublishingBlogs,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getUserBlogs,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getMoreUserBlogs,
    TResult Function(
            String? userCollege, BlogsModel? blogModel, File? file, int? index)?
        addBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index,
            bool isDeletedFromApproved)?
        deleteBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index)?
        declineBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index)?
        approveBlog,
    TResult Function(String userCollege, int index)? likeBlog,
    TResult Function(BlogsModel blogModel, Function onChanged)?
        likeSingleBlogPost,
    required TResult orElse(),
  }) {
    if (getBlogs != null) {
      return getBlogs(selectedTags, city, college);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBlogs value) getBlogs,
    required TResult Function(_GetMoreBlogs value) getMoreBlogs,
    required TResult Function(_GetPublishingBlogs value) getPublishingBlogs,
    required TResult Function(_GetMorePublishingPosts value)
        getMorePublishingBlogs,
    required TResult Function(_GetUserBlogs value) getUserBlogs,
    required TResult Function(_GetMoreUserBlogs value) getMoreUserBlogs,
    required TResult Function(_AddBlog value) addBlog,
    required TResult Function(_DeleteBlog value) deleteBlog,
    required TResult Function(_DeclineBlog value) declineBlog,
    required TResult Function(_ApproveBlog value) approveBlog,
    required TResult Function(_LikeBlog value) likeBlog,
    required TResult Function(_LikeSingleBlogPost value) likeSingleBlogPost,
  }) {
    return getBlogs(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBlogs value)? getBlogs,
    TResult Function(_GetMoreBlogs value)? getMoreBlogs,
    TResult Function(_GetPublishingBlogs value)? getPublishingBlogs,
    TResult Function(_GetMorePublishingPosts value)? getMorePublishingBlogs,
    TResult Function(_GetUserBlogs value)? getUserBlogs,
    TResult Function(_GetMoreUserBlogs value)? getMoreUserBlogs,
    TResult Function(_AddBlog value)? addBlog,
    TResult Function(_DeleteBlog value)? deleteBlog,
    TResult Function(_DeclineBlog value)? declineBlog,
    TResult Function(_ApproveBlog value)? approveBlog,
    TResult Function(_LikeBlog value)? likeBlog,
    TResult Function(_LikeSingleBlogPost value)? likeSingleBlogPost,
    required TResult orElse(),
  }) {
    if (getBlogs != null) {
      return getBlogs(this);
    }
    return orElse();
  }
}

abstract class _GetBlogs implements BlogsEvent {
  const factory _GetBlogs(
      {List<String>? selectedTags,
      String? city,
      String? college}) = _$_GetBlogs;

  List<String>? get selectedTags => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get college => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetBlogsCopyWith<_GetBlogs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetMoreBlogsCopyWith<$Res> {
  factory _$GetMoreBlogsCopyWith(
          _GetMoreBlogs value, $Res Function(_GetMoreBlogs) then) =
      __$GetMoreBlogsCopyWithImpl<$Res>;
  $Res call({List<String>? selectedTags, String? city, String? college});
}

/// @nodoc
class __$GetMoreBlogsCopyWithImpl<$Res> extends _$BlogsEventCopyWithImpl<$Res>
    implements _$GetMoreBlogsCopyWith<$Res> {
  __$GetMoreBlogsCopyWithImpl(
      _GetMoreBlogs _value, $Res Function(_GetMoreBlogs) _then)
      : super(_value, (v) => _then(v as _GetMoreBlogs));

  @override
  _GetMoreBlogs get _value => super._value as _GetMoreBlogs;

  @override
  $Res call({
    Object? selectedTags = freezed,
    Object? city = freezed,
    Object? college = freezed,
  }) {
    return _then(_GetMoreBlogs(
      selectedTags: selectedTags == freezed
          ? _value.selectedTags
          : selectedTags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      college: college == freezed
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GetMoreBlogs implements _GetMoreBlogs {
  const _$_GetMoreBlogs({this.selectedTags, this.city, this.college});

  @override
  final List<String>? selectedTags;
  @override
  final String? city;
  @override
  final String? college;

  @override
  String toString() {
    return 'BlogsEvent.getMoreBlogs(selectedTags: $selectedTags, city: $city, college: $college)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetMoreBlogs &&
            (identical(other.selectedTags, selectedTags) ||
                const DeepCollectionEquality()
                    .equals(other.selectedTags, selectedTags)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.college, college) ||
                const DeepCollectionEquality().equals(other.college, college)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedTags) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(college);

  @JsonKey(ignore: true)
  @override
  _$GetMoreBlogsCopyWith<_GetMoreBlogs> get copyWith =>
      __$GetMoreBlogsCopyWithImpl<_GetMoreBlogs>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<String>? selectedTags, String? city, String? college)
        getBlogs,
    required TResult Function(
            List<String>? selectedTags, String? city, String? college)
        getMoreBlogs,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getPublishingBlogs,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getMorePublishingBlogs,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getUserBlogs,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getMoreUserBlogs,
    required TResult Function(
            String? userCollege, BlogsModel? blogModel, File? file, int? index)
        addBlog,
    required TResult Function(String userCollege, BlogsModel blogModel,
            int index, bool isDeletedFromApproved)
        deleteBlog,
    required TResult Function(
            String userCollege, BlogsModel blogModel, int index)
        declineBlog,
    required TResult Function(
            String userCollege, BlogsModel blogModel, int index)
        approveBlog,
    required TResult Function(String userCollege, int index) likeBlog,
    required TResult Function(BlogsModel blogModel, Function onChanged)
        likeSingleBlogPost,
  }) {
    return getMoreBlogs(selectedTags, city, college);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String>? selectedTags, String? city, String? college)?
        getBlogs,
    TResult Function(List<String>? selectedTags, String? city, String? college)?
        getMoreBlogs,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getPublishingBlogs,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getMorePublishingBlogs,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getUserBlogs,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getMoreUserBlogs,
    TResult Function(
            String? userCollege, BlogsModel? blogModel, File? file, int? index)?
        addBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index,
            bool isDeletedFromApproved)?
        deleteBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index)?
        declineBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index)?
        approveBlog,
    TResult Function(String userCollege, int index)? likeBlog,
    TResult Function(BlogsModel blogModel, Function onChanged)?
        likeSingleBlogPost,
    required TResult orElse(),
  }) {
    if (getMoreBlogs != null) {
      return getMoreBlogs(selectedTags, city, college);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBlogs value) getBlogs,
    required TResult Function(_GetMoreBlogs value) getMoreBlogs,
    required TResult Function(_GetPublishingBlogs value) getPublishingBlogs,
    required TResult Function(_GetMorePublishingPosts value)
        getMorePublishingBlogs,
    required TResult Function(_GetUserBlogs value) getUserBlogs,
    required TResult Function(_GetMoreUserBlogs value) getMoreUserBlogs,
    required TResult Function(_AddBlog value) addBlog,
    required TResult Function(_DeleteBlog value) deleteBlog,
    required TResult Function(_DeclineBlog value) declineBlog,
    required TResult Function(_ApproveBlog value) approveBlog,
    required TResult Function(_LikeBlog value) likeBlog,
    required TResult Function(_LikeSingleBlogPost value) likeSingleBlogPost,
  }) {
    return getMoreBlogs(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBlogs value)? getBlogs,
    TResult Function(_GetMoreBlogs value)? getMoreBlogs,
    TResult Function(_GetPublishingBlogs value)? getPublishingBlogs,
    TResult Function(_GetMorePublishingPosts value)? getMorePublishingBlogs,
    TResult Function(_GetUserBlogs value)? getUserBlogs,
    TResult Function(_GetMoreUserBlogs value)? getMoreUserBlogs,
    TResult Function(_AddBlog value)? addBlog,
    TResult Function(_DeleteBlog value)? deleteBlog,
    TResult Function(_DeclineBlog value)? declineBlog,
    TResult Function(_ApproveBlog value)? approveBlog,
    TResult Function(_LikeBlog value)? likeBlog,
    TResult Function(_LikeSingleBlogPost value)? likeSingleBlogPost,
    required TResult orElse(),
  }) {
    if (getMoreBlogs != null) {
      return getMoreBlogs(this);
    }
    return orElse();
  }
}

abstract class _GetMoreBlogs implements BlogsEvent {
  const factory _GetMoreBlogs(
      {List<String>? selectedTags,
      String? city,
      String? college}) = _$_GetMoreBlogs;

  List<String>? get selectedTags => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get college => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetMoreBlogsCopyWith<_GetMoreBlogs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetPublishingBlogsCopyWith<$Res> {
  factory _$GetPublishingBlogsCopyWith(
          _GetPublishingBlogs value, $Res Function(_GetPublishingBlogs) then) =
      __$GetPublishingBlogsCopyWithImpl<$Res>;
  $Res call({String userCollege, String? status, DateTime? selectedDate});
}

/// @nodoc
class __$GetPublishingBlogsCopyWithImpl<$Res>
    extends _$BlogsEventCopyWithImpl<$Res>
    implements _$GetPublishingBlogsCopyWith<$Res> {
  __$GetPublishingBlogsCopyWithImpl(
      _GetPublishingBlogs _value, $Res Function(_GetPublishingBlogs) _then)
      : super(_value, (v) => _then(v as _GetPublishingBlogs));

  @override
  _GetPublishingBlogs get _value => super._value as _GetPublishingBlogs;

  @override
  $Res call({
    Object? userCollege = freezed,
    Object? status = freezed,
    Object? selectedDate = freezed,
  }) {
    return _then(_GetPublishingBlogs(
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

class _$_GetPublishingBlogs implements _GetPublishingBlogs {
  const _$_GetPublishingBlogs(
      {required this.userCollege, this.status, this.selectedDate});

  @override
  final String userCollege;
  @override
  final String? status;
  @override
  final DateTime? selectedDate;

  @override
  String toString() {
    return 'BlogsEvent.getPublishingBlogs(userCollege: $userCollege, status: $status, selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetPublishingBlogs &&
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
  _$GetPublishingBlogsCopyWith<_GetPublishingBlogs> get copyWith =>
      __$GetPublishingBlogsCopyWithImpl<_GetPublishingBlogs>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<String>? selectedTags, String? city, String? college)
        getBlogs,
    required TResult Function(
            List<String>? selectedTags, String? city, String? college)
        getMoreBlogs,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getPublishingBlogs,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getMorePublishingBlogs,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getUserBlogs,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getMoreUserBlogs,
    required TResult Function(
            String? userCollege, BlogsModel? blogModel, File? file, int? index)
        addBlog,
    required TResult Function(String userCollege, BlogsModel blogModel,
            int index, bool isDeletedFromApproved)
        deleteBlog,
    required TResult Function(
            String userCollege, BlogsModel blogModel, int index)
        declineBlog,
    required TResult Function(
            String userCollege, BlogsModel blogModel, int index)
        approveBlog,
    required TResult Function(String userCollege, int index) likeBlog,
    required TResult Function(BlogsModel blogModel, Function onChanged)
        likeSingleBlogPost,
  }) {
    return getPublishingBlogs(userCollege, status, selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String>? selectedTags, String? city, String? college)?
        getBlogs,
    TResult Function(List<String>? selectedTags, String? city, String? college)?
        getMoreBlogs,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getPublishingBlogs,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getMorePublishingBlogs,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getUserBlogs,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getMoreUserBlogs,
    TResult Function(
            String? userCollege, BlogsModel? blogModel, File? file, int? index)?
        addBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index,
            bool isDeletedFromApproved)?
        deleteBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index)?
        declineBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index)?
        approveBlog,
    TResult Function(String userCollege, int index)? likeBlog,
    TResult Function(BlogsModel blogModel, Function onChanged)?
        likeSingleBlogPost,
    required TResult orElse(),
  }) {
    if (getPublishingBlogs != null) {
      return getPublishingBlogs(userCollege, status, selectedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBlogs value) getBlogs,
    required TResult Function(_GetMoreBlogs value) getMoreBlogs,
    required TResult Function(_GetPublishingBlogs value) getPublishingBlogs,
    required TResult Function(_GetMorePublishingPosts value)
        getMorePublishingBlogs,
    required TResult Function(_GetUserBlogs value) getUserBlogs,
    required TResult Function(_GetMoreUserBlogs value) getMoreUserBlogs,
    required TResult Function(_AddBlog value) addBlog,
    required TResult Function(_DeleteBlog value) deleteBlog,
    required TResult Function(_DeclineBlog value) declineBlog,
    required TResult Function(_ApproveBlog value) approveBlog,
    required TResult Function(_LikeBlog value) likeBlog,
    required TResult Function(_LikeSingleBlogPost value) likeSingleBlogPost,
  }) {
    return getPublishingBlogs(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBlogs value)? getBlogs,
    TResult Function(_GetMoreBlogs value)? getMoreBlogs,
    TResult Function(_GetPublishingBlogs value)? getPublishingBlogs,
    TResult Function(_GetMorePublishingPosts value)? getMorePublishingBlogs,
    TResult Function(_GetUserBlogs value)? getUserBlogs,
    TResult Function(_GetMoreUserBlogs value)? getMoreUserBlogs,
    TResult Function(_AddBlog value)? addBlog,
    TResult Function(_DeleteBlog value)? deleteBlog,
    TResult Function(_DeclineBlog value)? declineBlog,
    TResult Function(_ApproveBlog value)? approveBlog,
    TResult Function(_LikeBlog value)? likeBlog,
    TResult Function(_LikeSingleBlogPost value)? likeSingleBlogPost,
    required TResult orElse(),
  }) {
    if (getPublishingBlogs != null) {
      return getPublishingBlogs(this);
    }
    return orElse();
  }
}

abstract class _GetPublishingBlogs implements BlogsEvent {
  const factory _GetPublishingBlogs(
      {required String userCollege,
      String? status,
      DateTime? selectedDate}) = _$_GetPublishingBlogs;

  String get userCollege => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  DateTime? get selectedDate => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetPublishingBlogsCopyWith<_GetPublishingBlogs> get copyWith =>
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
    extends _$BlogsEventCopyWithImpl<$Res>
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
    return 'BlogsEvent.getMorePublishingBlogs(userCollege: $userCollege, status: $status, selectedDate: $selectedDate)';
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
    required TResult Function(
            List<String>? selectedTags, String? city, String? college)
        getBlogs,
    required TResult Function(
            List<String>? selectedTags, String? city, String? college)
        getMoreBlogs,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getPublishingBlogs,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getMorePublishingBlogs,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getUserBlogs,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getMoreUserBlogs,
    required TResult Function(
            String? userCollege, BlogsModel? blogModel, File? file, int? index)
        addBlog,
    required TResult Function(String userCollege, BlogsModel blogModel,
            int index, bool isDeletedFromApproved)
        deleteBlog,
    required TResult Function(
            String userCollege, BlogsModel blogModel, int index)
        declineBlog,
    required TResult Function(
            String userCollege, BlogsModel blogModel, int index)
        approveBlog,
    required TResult Function(String userCollege, int index) likeBlog,
    required TResult Function(BlogsModel blogModel, Function onChanged)
        likeSingleBlogPost,
  }) {
    return getMorePublishingBlogs(userCollege, status, selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String>? selectedTags, String? city, String? college)?
        getBlogs,
    TResult Function(List<String>? selectedTags, String? city, String? college)?
        getMoreBlogs,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getPublishingBlogs,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getMorePublishingBlogs,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getUserBlogs,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getMoreUserBlogs,
    TResult Function(
            String? userCollege, BlogsModel? blogModel, File? file, int? index)?
        addBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index,
            bool isDeletedFromApproved)?
        deleteBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index)?
        declineBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index)?
        approveBlog,
    TResult Function(String userCollege, int index)? likeBlog,
    TResult Function(BlogsModel blogModel, Function onChanged)?
        likeSingleBlogPost,
    required TResult orElse(),
  }) {
    if (getMorePublishingBlogs != null) {
      return getMorePublishingBlogs(userCollege, status, selectedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBlogs value) getBlogs,
    required TResult Function(_GetMoreBlogs value) getMoreBlogs,
    required TResult Function(_GetPublishingBlogs value) getPublishingBlogs,
    required TResult Function(_GetMorePublishingPosts value)
        getMorePublishingBlogs,
    required TResult Function(_GetUserBlogs value) getUserBlogs,
    required TResult Function(_GetMoreUserBlogs value) getMoreUserBlogs,
    required TResult Function(_AddBlog value) addBlog,
    required TResult Function(_DeleteBlog value) deleteBlog,
    required TResult Function(_DeclineBlog value) declineBlog,
    required TResult Function(_ApproveBlog value) approveBlog,
    required TResult Function(_LikeBlog value) likeBlog,
    required TResult Function(_LikeSingleBlogPost value) likeSingleBlogPost,
  }) {
    return getMorePublishingBlogs(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBlogs value)? getBlogs,
    TResult Function(_GetMoreBlogs value)? getMoreBlogs,
    TResult Function(_GetPublishingBlogs value)? getPublishingBlogs,
    TResult Function(_GetMorePublishingPosts value)? getMorePublishingBlogs,
    TResult Function(_GetUserBlogs value)? getUserBlogs,
    TResult Function(_GetMoreUserBlogs value)? getMoreUserBlogs,
    TResult Function(_AddBlog value)? addBlog,
    TResult Function(_DeleteBlog value)? deleteBlog,
    TResult Function(_DeclineBlog value)? declineBlog,
    TResult Function(_ApproveBlog value)? approveBlog,
    TResult Function(_LikeBlog value)? likeBlog,
    TResult Function(_LikeSingleBlogPost value)? likeSingleBlogPost,
    required TResult orElse(),
  }) {
    if (getMorePublishingBlogs != null) {
      return getMorePublishingBlogs(this);
    }
    return orElse();
  }
}

abstract class _GetMorePublishingPosts implements BlogsEvent {
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
abstract class _$GetUserBlogsCopyWith<$Res> {
  factory _$GetUserBlogsCopyWith(
          _GetUserBlogs value, $Res Function(_GetUserBlogs) then) =
      __$GetUserBlogsCopyWithImpl<$Res>;
  $Res call({CoolUser coolUser, String? status, DateTime? selectedDate});
}

/// @nodoc
class __$GetUserBlogsCopyWithImpl<$Res> extends _$BlogsEventCopyWithImpl<$Res>
    implements _$GetUserBlogsCopyWith<$Res> {
  __$GetUserBlogsCopyWithImpl(
      _GetUserBlogs _value, $Res Function(_GetUserBlogs) _then)
      : super(_value, (v) => _then(v as _GetUserBlogs));

  @override
  _GetUserBlogs get _value => super._value as _GetUserBlogs;

  @override
  $Res call({
    Object? coolUser = freezed,
    Object? status = freezed,
    Object? selectedDate = freezed,
  }) {
    return _then(_GetUserBlogs(
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

class _$_GetUserBlogs implements _GetUserBlogs {
  const _$_GetUserBlogs(
      {required this.coolUser, this.status, this.selectedDate});

  @override
  final CoolUser coolUser;
  @override
  final String? status;
  @override
  final DateTime? selectedDate;

  @override
  String toString() {
    return 'BlogsEvent.getUserBlogs(coolUser: $coolUser, status: $status, selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetUserBlogs &&
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
  _$GetUserBlogsCopyWith<_GetUserBlogs> get copyWith =>
      __$GetUserBlogsCopyWithImpl<_GetUserBlogs>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<String>? selectedTags, String? city, String? college)
        getBlogs,
    required TResult Function(
            List<String>? selectedTags, String? city, String? college)
        getMoreBlogs,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getPublishingBlogs,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getMorePublishingBlogs,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getUserBlogs,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getMoreUserBlogs,
    required TResult Function(
            String? userCollege, BlogsModel? blogModel, File? file, int? index)
        addBlog,
    required TResult Function(String userCollege, BlogsModel blogModel,
            int index, bool isDeletedFromApproved)
        deleteBlog,
    required TResult Function(
            String userCollege, BlogsModel blogModel, int index)
        declineBlog,
    required TResult Function(
            String userCollege, BlogsModel blogModel, int index)
        approveBlog,
    required TResult Function(String userCollege, int index) likeBlog,
    required TResult Function(BlogsModel blogModel, Function onChanged)
        likeSingleBlogPost,
  }) {
    return getUserBlogs(coolUser, status, selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String>? selectedTags, String? city, String? college)?
        getBlogs,
    TResult Function(List<String>? selectedTags, String? city, String? college)?
        getMoreBlogs,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getPublishingBlogs,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getMorePublishingBlogs,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getUserBlogs,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getMoreUserBlogs,
    TResult Function(
            String? userCollege, BlogsModel? blogModel, File? file, int? index)?
        addBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index,
            bool isDeletedFromApproved)?
        deleteBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index)?
        declineBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index)?
        approveBlog,
    TResult Function(String userCollege, int index)? likeBlog,
    TResult Function(BlogsModel blogModel, Function onChanged)?
        likeSingleBlogPost,
    required TResult orElse(),
  }) {
    if (getUserBlogs != null) {
      return getUserBlogs(coolUser, status, selectedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBlogs value) getBlogs,
    required TResult Function(_GetMoreBlogs value) getMoreBlogs,
    required TResult Function(_GetPublishingBlogs value) getPublishingBlogs,
    required TResult Function(_GetMorePublishingPosts value)
        getMorePublishingBlogs,
    required TResult Function(_GetUserBlogs value) getUserBlogs,
    required TResult Function(_GetMoreUserBlogs value) getMoreUserBlogs,
    required TResult Function(_AddBlog value) addBlog,
    required TResult Function(_DeleteBlog value) deleteBlog,
    required TResult Function(_DeclineBlog value) declineBlog,
    required TResult Function(_ApproveBlog value) approveBlog,
    required TResult Function(_LikeBlog value) likeBlog,
    required TResult Function(_LikeSingleBlogPost value) likeSingleBlogPost,
  }) {
    return getUserBlogs(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBlogs value)? getBlogs,
    TResult Function(_GetMoreBlogs value)? getMoreBlogs,
    TResult Function(_GetPublishingBlogs value)? getPublishingBlogs,
    TResult Function(_GetMorePublishingPosts value)? getMorePublishingBlogs,
    TResult Function(_GetUserBlogs value)? getUserBlogs,
    TResult Function(_GetMoreUserBlogs value)? getMoreUserBlogs,
    TResult Function(_AddBlog value)? addBlog,
    TResult Function(_DeleteBlog value)? deleteBlog,
    TResult Function(_DeclineBlog value)? declineBlog,
    TResult Function(_ApproveBlog value)? approveBlog,
    TResult Function(_LikeBlog value)? likeBlog,
    TResult Function(_LikeSingleBlogPost value)? likeSingleBlogPost,
    required TResult orElse(),
  }) {
    if (getUserBlogs != null) {
      return getUserBlogs(this);
    }
    return orElse();
  }
}

abstract class _GetUserBlogs implements BlogsEvent {
  const factory _GetUserBlogs(
      {required CoolUser coolUser,
      String? status,
      DateTime? selectedDate}) = _$_GetUserBlogs;

  CoolUser get coolUser => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  DateTime? get selectedDate => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetUserBlogsCopyWith<_GetUserBlogs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetMoreUserBlogsCopyWith<$Res> {
  factory _$GetMoreUserBlogsCopyWith(
          _GetMoreUserBlogs value, $Res Function(_GetMoreUserBlogs) then) =
      __$GetMoreUserBlogsCopyWithImpl<$Res>;
  $Res call({CoolUser coolUser, String? status, DateTime? selectedDate});
}

/// @nodoc
class __$GetMoreUserBlogsCopyWithImpl<$Res>
    extends _$BlogsEventCopyWithImpl<$Res>
    implements _$GetMoreUserBlogsCopyWith<$Res> {
  __$GetMoreUserBlogsCopyWithImpl(
      _GetMoreUserBlogs _value, $Res Function(_GetMoreUserBlogs) _then)
      : super(_value, (v) => _then(v as _GetMoreUserBlogs));

  @override
  _GetMoreUserBlogs get _value => super._value as _GetMoreUserBlogs;

  @override
  $Res call({
    Object? coolUser = freezed,
    Object? status = freezed,
    Object? selectedDate = freezed,
  }) {
    return _then(_GetMoreUserBlogs(
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

class _$_GetMoreUserBlogs implements _GetMoreUserBlogs {
  const _$_GetMoreUserBlogs(
      {required this.coolUser, this.status, this.selectedDate});

  @override
  final CoolUser coolUser;
  @override
  final String? status;
  @override
  final DateTime? selectedDate;

  @override
  String toString() {
    return 'BlogsEvent.getMoreUserBlogs(coolUser: $coolUser, status: $status, selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetMoreUserBlogs &&
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
  _$GetMoreUserBlogsCopyWith<_GetMoreUserBlogs> get copyWith =>
      __$GetMoreUserBlogsCopyWithImpl<_GetMoreUserBlogs>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<String>? selectedTags, String? city, String? college)
        getBlogs,
    required TResult Function(
            List<String>? selectedTags, String? city, String? college)
        getMoreBlogs,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getPublishingBlogs,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getMorePublishingBlogs,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getUserBlogs,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getMoreUserBlogs,
    required TResult Function(
            String? userCollege, BlogsModel? blogModel, File? file, int? index)
        addBlog,
    required TResult Function(String userCollege, BlogsModel blogModel,
            int index, bool isDeletedFromApproved)
        deleteBlog,
    required TResult Function(
            String userCollege, BlogsModel blogModel, int index)
        declineBlog,
    required TResult Function(
            String userCollege, BlogsModel blogModel, int index)
        approveBlog,
    required TResult Function(String userCollege, int index) likeBlog,
    required TResult Function(BlogsModel blogModel, Function onChanged)
        likeSingleBlogPost,
  }) {
    return getMoreUserBlogs(coolUser, status, selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String>? selectedTags, String? city, String? college)?
        getBlogs,
    TResult Function(List<String>? selectedTags, String? city, String? college)?
        getMoreBlogs,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getPublishingBlogs,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getMorePublishingBlogs,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getUserBlogs,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getMoreUserBlogs,
    TResult Function(
            String? userCollege, BlogsModel? blogModel, File? file, int? index)?
        addBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index,
            bool isDeletedFromApproved)?
        deleteBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index)?
        declineBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index)?
        approveBlog,
    TResult Function(String userCollege, int index)? likeBlog,
    TResult Function(BlogsModel blogModel, Function onChanged)?
        likeSingleBlogPost,
    required TResult orElse(),
  }) {
    if (getMoreUserBlogs != null) {
      return getMoreUserBlogs(coolUser, status, selectedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBlogs value) getBlogs,
    required TResult Function(_GetMoreBlogs value) getMoreBlogs,
    required TResult Function(_GetPublishingBlogs value) getPublishingBlogs,
    required TResult Function(_GetMorePublishingPosts value)
        getMorePublishingBlogs,
    required TResult Function(_GetUserBlogs value) getUserBlogs,
    required TResult Function(_GetMoreUserBlogs value) getMoreUserBlogs,
    required TResult Function(_AddBlog value) addBlog,
    required TResult Function(_DeleteBlog value) deleteBlog,
    required TResult Function(_DeclineBlog value) declineBlog,
    required TResult Function(_ApproveBlog value) approveBlog,
    required TResult Function(_LikeBlog value) likeBlog,
    required TResult Function(_LikeSingleBlogPost value) likeSingleBlogPost,
  }) {
    return getMoreUserBlogs(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBlogs value)? getBlogs,
    TResult Function(_GetMoreBlogs value)? getMoreBlogs,
    TResult Function(_GetPublishingBlogs value)? getPublishingBlogs,
    TResult Function(_GetMorePublishingPosts value)? getMorePublishingBlogs,
    TResult Function(_GetUserBlogs value)? getUserBlogs,
    TResult Function(_GetMoreUserBlogs value)? getMoreUserBlogs,
    TResult Function(_AddBlog value)? addBlog,
    TResult Function(_DeleteBlog value)? deleteBlog,
    TResult Function(_DeclineBlog value)? declineBlog,
    TResult Function(_ApproveBlog value)? approveBlog,
    TResult Function(_LikeBlog value)? likeBlog,
    TResult Function(_LikeSingleBlogPost value)? likeSingleBlogPost,
    required TResult orElse(),
  }) {
    if (getMoreUserBlogs != null) {
      return getMoreUserBlogs(this);
    }
    return orElse();
  }
}

abstract class _GetMoreUserBlogs implements BlogsEvent {
  const factory _GetMoreUserBlogs(
      {required CoolUser coolUser,
      String? status,
      DateTime? selectedDate}) = _$_GetMoreUserBlogs;

  CoolUser get coolUser => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  DateTime? get selectedDate => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetMoreUserBlogsCopyWith<_GetMoreUserBlogs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddBlogCopyWith<$Res> {
  factory _$AddBlogCopyWith(_AddBlog value, $Res Function(_AddBlog) then) =
      __$AddBlogCopyWithImpl<$Res>;
  $Res call(
      {String? userCollege, BlogsModel? blogModel, File? file, int? index});
}

/// @nodoc
class __$AddBlogCopyWithImpl<$Res> extends _$BlogsEventCopyWithImpl<$Res>
    implements _$AddBlogCopyWith<$Res> {
  __$AddBlogCopyWithImpl(_AddBlog _value, $Res Function(_AddBlog) _then)
      : super(_value, (v) => _then(v as _AddBlog));

  @override
  _AddBlog get _value => super._value as _AddBlog;

  @override
  $Res call({
    Object? userCollege = freezed,
    Object? blogModel = freezed,
    Object? file = freezed,
    Object? index = freezed,
  }) {
    return _then(_AddBlog(
      userCollege: userCollege == freezed
          ? _value.userCollege
          : userCollege // ignore: cast_nullable_to_non_nullable
              as String?,
      blogModel: blogModel == freezed
          ? _value.blogModel
          : blogModel // ignore: cast_nullable_to_non_nullable
              as BlogsModel?,
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

class _$_AddBlog implements _AddBlog {
  const _$_AddBlog({this.userCollege, this.blogModel, this.file, this.index});

  @override
  final String? userCollege;
  @override
  final BlogsModel? blogModel;
  @override
  final File? file;
  @override
  final int? index;

  @override
  String toString() {
    return 'BlogsEvent.addBlog(userCollege: $userCollege, blogModel: $blogModel, file: $file, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddBlog &&
            (identical(other.userCollege, userCollege) ||
                const DeepCollectionEquality()
                    .equals(other.userCollege, userCollege)) &&
            (identical(other.blogModel, blogModel) ||
                const DeepCollectionEquality()
                    .equals(other.blogModel, blogModel)) &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userCollege) ^
      const DeepCollectionEquality().hash(blogModel) ^
      const DeepCollectionEquality().hash(file) ^
      const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$AddBlogCopyWith<_AddBlog> get copyWith =>
      __$AddBlogCopyWithImpl<_AddBlog>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<String>? selectedTags, String? city, String? college)
        getBlogs,
    required TResult Function(
            List<String>? selectedTags, String? city, String? college)
        getMoreBlogs,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getPublishingBlogs,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getMorePublishingBlogs,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getUserBlogs,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getMoreUserBlogs,
    required TResult Function(
            String? userCollege, BlogsModel? blogModel, File? file, int? index)
        addBlog,
    required TResult Function(String userCollege, BlogsModel blogModel,
            int index, bool isDeletedFromApproved)
        deleteBlog,
    required TResult Function(
            String userCollege, BlogsModel blogModel, int index)
        declineBlog,
    required TResult Function(
            String userCollege, BlogsModel blogModel, int index)
        approveBlog,
    required TResult Function(String userCollege, int index) likeBlog,
    required TResult Function(BlogsModel blogModel, Function onChanged)
        likeSingleBlogPost,
  }) {
    return addBlog(userCollege, blogModel, file, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String>? selectedTags, String? city, String? college)?
        getBlogs,
    TResult Function(List<String>? selectedTags, String? city, String? college)?
        getMoreBlogs,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getPublishingBlogs,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getMorePublishingBlogs,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getUserBlogs,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getMoreUserBlogs,
    TResult Function(
            String? userCollege, BlogsModel? blogModel, File? file, int? index)?
        addBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index,
            bool isDeletedFromApproved)?
        deleteBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index)?
        declineBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index)?
        approveBlog,
    TResult Function(String userCollege, int index)? likeBlog,
    TResult Function(BlogsModel blogModel, Function onChanged)?
        likeSingleBlogPost,
    required TResult orElse(),
  }) {
    if (addBlog != null) {
      return addBlog(userCollege, blogModel, file, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBlogs value) getBlogs,
    required TResult Function(_GetMoreBlogs value) getMoreBlogs,
    required TResult Function(_GetPublishingBlogs value) getPublishingBlogs,
    required TResult Function(_GetMorePublishingPosts value)
        getMorePublishingBlogs,
    required TResult Function(_GetUserBlogs value) getUserBlogs,
    required TResult Function(_GetMoreUserBlogs value) getMoreUserBlogs,
    required TResult Function(_AddBlog value) addBlog,
    required TResult Function(_DeleteBlog value) deleteBlog,
    required TResult Function(_DeclineBlog value) declineBlog,
    required TResult Function(_ApproveBlog value) approveBlog,
    required TResult Function(_LikeBlog value) likeBlog,
    required TResult Function(_LikeSingleBlogPost value) likeSingleBlogPost,
  }) {
    return addBlog(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBlogs value)? getBlogs,
    TResult Function(_GetMoreBlogs value)? getMoreBlogs,
    TResult Function(_GetPublishingBlogs value)? getPublishingBlogs,
    TResult Function(_GetMorePublishingPosts value)? getMorePublishingBlogs,
    TResult Function(_GetUserBlogs value)? getUserBlogs,
    TResult Function(_GetMoreUserBlogs value)? getMoreUserBlogs,
    TResult Function(_AddBlog value)? addBlog,
    TResult Function(_DeleteBlog value)? deleteBlog,
    TResult Function(_DeclineBlog value)? declineBlog,
    TResult Function(_ApproveBlog value)? approveBlog,
    TResult Function(_LikeBlog value)? likeBlog,
    TResult Function(_LikeSingleBlogPost value)? likeSingleBlogPost,
    required TResult orElse(),
  }) {
    if (addBlog != null) {
      return addBlog(this);
    }
    return orElse();
  }
}

abstract class _AddBlog implements BlogsEvent {
  const factory _AddBlog(
      {String? userCollege,
      BlogsModel? blogModel,
      File? file,
      int? index}) = _$_AddBlog;

  String? get userCollege => throw _privateConstructorUsedError;
  BlogsModel? get blogModel => throw _privateConstructorUsedError;
  File? get file => throw _privateConstructorUsedError;
  int? get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddBlogCopyWith<_AddBlog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteBlogCopyWith<$Res> {
  factory _$DeleteBlogCopyWith(
          _DeleteBlog value, $Res Function(_DeleteBlog) then) =
      __$DeleteBlogCopyWithImpl<$Res>;
  $Res call(
      {String userCollege,
      BlogsModel blogModel,
      int index,
      bool isDeletedFromApproved});
}

/// @nodoc
class __$DeleteBlogCopyWithImpl<$Res> extends _$BlogsEventCopyWithImpl<$Res>
    implements _$DeleteBlogCopyWith<$Res> {
  __$DeleteBlogCopyWithImpl(
      _DeleteBlog _value, $Res Function(_DeleteBlog) _then)
      : super(_value, (v) => _then(v as _DeleteBlog));

  @override
  _DeleteBlog get _value => super._value as _DeleteBlog;

  @override
  $Res call({
    Object? userCollege = freezed,
    Object? blogModel = freezed,
    Object? index = freezed,
    Object? isDeletedFromApproved = freezed,
  }) {
    return _then(_DeleteBlog(
      userCollege: userCollege == freezed
          ? _value.userCollege
          : userCollege // ignore: cast_nullable_to_non_nullable
              as String,
      blogModel: blogModel == freezed
          ? _value.blogModel
          : blogModel // ignore: cast_nullable_to_non_nullable
              as BlogsModel,
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

class _$_DeleteBlog implements _DeleteBlog {
  const _$_DeleteBlog(
      {required this.userCollege,
      required this.blogModel,
      required this.index,
      required this.isDeletedFromApproved});

  @override
  final String userCollege;
  @override
  final BlogsModel blogModel;
  @override
  final int index;
  @override
  final bool isDeletedFromApproved;

  @override
  String toString() {
    return 'BlogsEvent.deleteBlog(userCollege: $userCollege, blogModel: $blogModel, index: $index, isDeletedFromApproved: $isDeletedFromApproved)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteBlog &&
            (identical(other.userCollege, userCollege) ||
                const DeepCollectionEquality()
                    .equals(other.userCollege, userCollege)) &&
            (identical(other.blogModel, blogModel) ||
                const DeepCollectionEquality()
                    .equals(other.blogModel, blogModel)) &&
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
      const DeepCollectionEquality().hash(blogModel) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(isDeletedFromApproved);

  @JsonKey(ignore: true)
  @override
  _$DeleteBlogCopyWith<_DeleteBlog> get copyWith =>
      __$DeleteBlogCopyWithImpl<_DeleteBlog>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<String>? selectedTags, String? city, String? college)
        getBlogs,
    required TResult Function(
            List<String>? selectedTags, String? city, String? college)
        getMoreBlogs,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getPublishingBlogs,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getMorePublishingBlogs,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getUserBlogs,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getMoreUserBlogs,
    required TResult Function(
            String? userCollege, BlogsModel? blogModel, File? file, int? index)
        addBlog,
    required TResult Function(String userCollege, BlogsModel blogModel,
            int index, bool isDeletedFromApproved)
        deleteBlog,
    required TResult Function(
            String userCollege, BlogsModel blogModel, int index)
        declineBlog,
    required TResult Function(
            String userCollege, BlogsModel blogModel, int index)
        approveBlog,
    required TResult Function(String userCollege, int index) likeBlog,
    required TResult Function(BlogsModel blogModel, Function onChanged)
        likeSingleBlogPost,
  }) {
    return deleteBlog(userCollege, blogModel, index, isDeletedFromApproved);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String>? selectedTags, String? city, String? college)?
        getBlogs,
    TResult Function(List<String>? selectedTags, String? city, String? college)?
        getMoreBlogs,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getPublishingBlogs,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getMorePublishingBlogs,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getUserBlogs,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getMoreUserBlogs,
    TResult Function(
            String? userCollege, BlogsModel? blogModel, File? file, int? index)?
        addBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index,
            bool isDeletedFromApproved)?
        deleteBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index)?
        declineBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index)?
        approveBlog,
    TResult Function(String userCollege, int index)? likeBlog,
    TResult Function(BlogsModel blogModel, Function onChanged)?
        likeSingleBlogPost,
    required TResult orElse(),
  }) {
    if (deleteBlog != null) {
      return deleteBlog(userCollege, blogModel, index, isDeletedFromApproved);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBlogs value) getBlogs,
    required TResult Function(_GetMoreBlogs value) getMoreBlogs,
    required TResult Function(_GetPublishingBlogs value) getPublishingBlogs,
    required TResult Function(_GetMorePublishingPosts value)
        getMorePublishingBlogs,
    required TResult Function(_GetUserBlogs value) getUserBlogs,
    required TResult Function(_GetMoreUserBlogs value) getMoreUserBlogs,
    required TResult Function(_AddBlog value) addBlog,
    required TResult Function(_DeleteBlog value) deleteBlog,
    required TResult Function(_DeclineBlog value) declineBlog,
    required TResult Function(_ApproveBlog value) approveBlog,
    required TResult Function(_LikeBlog value) likeBlog,
    required TResult Function(_LikeSingleBlogPost value) likeSingleBlogPost,
  }) {
    return deleteBlog(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBlogs value)? getBlogs,
    TResult Function(_GetMoreBlogs value)? getMoreBlogs,
    TResult Function(_GetPublishingBlogs value)? getPublishingBlogs,
    TResult Function(_GetMorePublishingPosts value)? getMorePublishingBlogs,
    TResult Function(_GetUserBlogs value)? getUserBlogs,
    TResult Function(_GetMoreUserBlogs value)? getMoreUserBlogs,
    TResult Function(_AddBlog value)? addBlog,
    TResult Function(_DeleteBlog value)? deleteBlog,
    TResult Function(_DeclineBlog value)? declineBlog,
    TResult Function(_ApproveBlog value)? approveBlog,
    TResult Function(_LikeBlog value)? likeBlog,
    TResult Function(_LikeSingleBlogPost value)? likeSingleBlogPost,
    required TResult orElse(),
  }) {
    if (deleteBlog != null) {
      return deleteBlog(this);
    }
    return orElse();
  }
}

abstract class _DeleteBlog implements BlogsEvent {
  const factory _DeleteBlog(
      {required String userCollege,
      required BlogsModel blogModel,
      required int index,
      required bool isDeletedFromApproved}) = _$_DeleteBlog;

  String get userCollege => throw _privateConstructorUsedError;
  BlogsModel get blogModel => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  bool get isDeletedFromApproved => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteBlogCopyWith<_DeleteBlog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeclineBlogCopyWith<$Res> {
  factory _$DeclineBlogCopyWith(
          _DeclineBlog value, $Res Function(_DeclineBlog) then) =
      __$DeclineBlogCopyWithImpl<$Res>;
  $Res call({String userCollege, BlogsModel blogModel, int index});
}

/// @nodoc
class __$DeclineBlogCopyWithImpl<$Res> extends _$BlogsEventCopyWithImpl<$Res>
    implements _$DeclineBlogCopyWith<$Res> {
  __$DeclineBlogCopyWithImpl(
      _DeclineBlog _value, $Res Function(_DeclineBlog) _then)
      : super(_value, (v) => _then(v as _DeclineBlog));

  @override
  _DeclineBlog get _value => super._value as _DeclineBlog;

  @override
  $Res call({
    Object? userCollege = freezed,
    Object? blogModel = freezed,
    Object? index = freezed,
  }) {
    return _then(_DeclineBlog(
      userCollege: userCollege == freezed
          ? _value.userCollege
          : userCollege // ignore: cast_nullable_to_non_nullable
              as String,
      blogModel: blogModel == freezed
          ? _value.blogModel
          : blogModel // ignore: cast_nullable_to_non_nullable
              as BlogsModel,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeclineBlog implements _DeclineBlog {
  const _$_DeclineBlog(
      {required this.userCollege,
      required this.blogModel,
      required this.index});

  @override
  final String userCollege;
  @override
  final BlogsModel blogModel;
  @override
  final int index;

  @override
  String toString() {
    return 'BlogsEvent.declineBlog(userCollege: $userCollege, blogModel: $blogModel, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeclineBlog &&
            (identical(other.userCollege, userCollege) ||
                const DeepCollectionEquality()
                    .equals(other.userCollege, userCollege)) &&
            (identical(other.blogModel, blogModel) ||
                const DeepCollectionEquality()
                    .equals(other.blogModel, blogModel)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userCollege) ^
      const DeepCollectionEquality().hash(blogModel) ^
      const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$DeclineBlogCopyWith<_DeclineBlog> get copyWith =>
      __$DeclineBlogCopyWithImpl<_DeclineBlog>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<String>? selectedTags, String? city, String? college)
        getBlogs,
    required TResult Function(
            List<String>? selectedTags, String? city, String? college)
        getMoreBlogs,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getPublishingBlogs,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getMorePublishingBlogs,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getUserBlogs,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getMoreUserBlogs,
    required TResult Function(
            String? userCollege, BlogsModel? blogModel, File? file, int? index)
        addBlog,
    required TResult Function(String userCollege, BlogsModel blogModel,
            int index, bool isDeletedFromApproved)
        deleteBlog,
    required TResult Function(
            String userCollege, BlogsModel blogModel, int index)
        declineBlog,
    required TResult Function(
            String userCollege, BlogsModel blogModel, int index)
        approveBlog,
    required TResult Function(String userCollege, int index) likeBlog,
    required TResult Function(BlogsModel blogModel, Function onChanged)
        likeSingleBlogPost,
  }) {
    return declineBlog(userCollege, blogModel, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String>? selectedTags, String? city, String? college)?
        getBlogs,
    TResult Function(List<String>? selectedTags, String? city, String? college)?
        getMoreBlogs,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getPublishingBlogs,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getMorePublishingBlogs,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getUserBlogs,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getMoreUserBlogs,
    TResult Function(
            String? userCollege, BlogsModel? blogModel, File? file, int? index)?
        addBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index,
            bool isDeletedFromApproved)?
        deleteBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index)?
        declineBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index)?
        approveBlog,
    TResult Function(String userCollege, int index)? likeBlog,
    TResult Function(BlogsModel blogModel, Function onChanged)?
        likeSingleBlogPost,
    required TResult orElse(),
  }) {
    if (declineBlog != null) {
      return declineBlog(userCollege, blogModel, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBlogs value) getBlogs,
    required TResult Function(_GetMoreBlogs value) getMoreBlogs,
    required TResult Function(_GetPublishingBlogs value) getPublishingBlogs,
    required TResult Function(_GetMorePublishingPosts value)
        getMorePublishingBlogs,
    required TResult Function(_GetUserBlogs value) getUserBlogs,
    required TResult Function(_GetMoreUserBlogs value) getMoreUserBlogs,
    required TResult Function(_AddBlog value) addBlog,
    required TResult Function(_DeleteBlog value) deleteBlog,
    required TResult Function(_DeclineBlog value) declineBlog,
    required TResult Function(_ApproveBlog value) approveBlog,
    required TResult Function(_LikeBlog value) likeBlog,
    required TResult Function(_LikeSingleBlogPost value) likeSingleBlogPost,
  }) {
    return declineBlog(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBlogs value)? getBlogs,
    TResult Function(_GetMoreBlogs value)? getMoreBlogs,
    TResult Function(_GetPublishingBlogs value)? getPublishingBlogs,
    TResult Function(_GetMorePublishingPosts value)? getMorePublishingBlogs,
    TResult Function(_GetUserBlogs value)? getUserBlogs,
    TResult Function(_GetMoreUserBlogs value)? getMoreUserBlogs,
    TResult Function(_AddBlog value)? addBlog,
    TResult Function(_DeleteBlog value)? deleteBlog,
    TResult Function(_DeclineBlog value)? declineBlog,
    TResult Function(_ApproveBlog value)? approveBlog,
    TResult Function(_LikeBlog value)? likeBlog,
    TResult Function(_LikeSingleBlogPost value)? likeSingleBlogPost,
    required TResult orElse(),
  }) {
    if (declineBlog != null) {
      return declineBlog(this);
    }
    return orElse();
  }
}

abstract class _DeclineBlog implements BlogsEvent {
  const factory _DeclineBlog(
      {required String userCollege,
      required BlogsModel blogModel,
      required int index}) = _$_DeclineBlog;

  String get userCollege => throw _privateConstructorUsedError;
  BlogsModel get blogModel => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeclineBlogCopyWith<_DeclineBlog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ApproveBlogCopyWith<$Res> {
  factory _$ApproveBlogCopyWith(
          _ApproveBlog value, $Res Function(_ApproveBlog) then) =
      __$ApproveBlogCopyWithImpl<$Res>;
  $Res call({String userCollege, BlogsModel blogModel, int index});
}

/// @nodoc
class __$ApproveBlogCopyWithImpl<$Res> extends _$BlogsEventCopyWithImpl<$Res>
    implements _$ApproveBlogCopyWith<$Res> {
  __$ApproveBlogCopyWithImpl(
      _ApproveBlog _value, $Res Function(_ApproveBlog) _then)
      : super(_value, (v) => _then(v as _ApproveBlog));

  @override
  _ApproveBlog get _value => super._value as _ApproveBlog;

  @override
  $Res call({
    Object? userCollege = freezed,
    Object? blogModel = freezed,
    Object? index = freezed,
  }) {
    return _then(_ApproveBlog(
      userCollege: userCollege == freezed
          ? _value.userCollege
          : userCollege // ignore: cast_nullable_to_non_nullable
              as String,
      blogModel: blogModel == freezed
          ? _value.blogModel
          : blogModel // ignore: cast_nullable_to_non_nullable
              as BlogsModel,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ApproveBlog implements _ApproveBlog {
  const _$_ApproveBlog(
      {required this.userCollege,
      required this.blogModel,
      required this.index});

  @override
  final String userCollege;
  @override
  final BlogsModel blogModel;
  @override
  final int index;

  @override
  String toString() {
    return 'BlogsEvent.approveBlog(userCollege: $userCollege, blogModel: $blogModel, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApproveBlog &&
            (identical(other.userCollege, userCollege) ||
                const DeepCollectionEquality()
                    .equals(other.userCollege, userCollege)) &&
            (identical(other.blogModel, blogModel) ||
                const DeepCollectionEquality()
                    .equals(other.blogModel, blogModel)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userCollege) ^
      const DeepCollectionEquality().hash(blogModel) ^
      const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$ApproveBlogCopyWith<_ApproveBlog> get copyWith =>
      __$ApproveBlogCopyWithImpl<_ApproveBlog>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<String>? selectedTags, String? city, String? college)
        getBlogs,
    required TResult Function(
            List<String>? selectedTags, String? city, String? college)
        getMoreBlogs,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getPublishingBlogs,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getMorePublishingBlogs,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getUserBlogs,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getMoreUserBlogs,
    required TResult Function(
            String? userCollege, BlogsModel? blogModel, File? file, int? index)
        addBlog,
    required TResult Function(String userCollege, BlogsModel blogModel,
            int index, bool isDeletedFromApproved)
        deleteBlog,
    required TResult Function(
            String userCollege, BlogsModel blogModel, int index)
        declineBlog,
    required TResult Function(
            String userCollege, BlogsModel blogModel, int index)
        approveBlog,
    required TResult Function(String userCollege, int index) likeBlog,
    required TResult Function(BlogsModel blogModel, Function onChanged)
        likeSingleBlogPost,
  }) {
    return approveBlog(userCollege, blogModel, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String>? selectedTags, String? city, String? college)?
        getBlogs,
    TResult Function(List<String>? selectedTags, String? city, String? college)?
        getMoreBlogs,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getPublishingBlogs,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getMorePublishingBlogs,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getUserBlogs,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getMoreUserBlogs,
    TResult Function(
            String? userCollege, BlogsModel? blogModel, File? file, int? index)?
        addBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index,
            bool isDeletedFromApproved)?
        deleteBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index)?
        declineBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index)?
        approveBlog,
    TResult Function(String userCollege, int index)? likeBlog,
    TResult Function(BlogsModel blogModel, Function onChanged)?
        likeSingleBlogPost,
    required TResult orElse(),
  }) {
    if (approveBlog != null) {
      return approveBlog(userCollege, blogModel, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBlogs value) getBlogs,
    required TResult Function(_GetMoreBlogs value) getMoreBlogs,
    required TResult Function(_GetPublishingBlogs value) getPublishingBlogs,
    required TResult Function(_GetMorePublishingPosts value)
        getMorePublishingBlogs,
    required TResult Function(_GetUserBlogs value) getUserBlogs,
    required TResult Function(_GetMoreUserBlogs value) getMoreUserBlogs,
    required TResult Function(_AddBlog value) addBlog,
    required TResult Function(_DeleteBlog value) deleteBlog,
    required TResult Function(_DeclineBlog value) declineBlog,
    required TResult Function(_ApproveBlog value) approveBlog,
    required TResult Function(_LikeBlog value) likeBlog,
    required TResult Function(_LikeSingleBlogPost value) likeSingleBlogPost,
  }) {
    return approveBlog(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBlogs value)? getBlogs,
    TResult Function(_GetMoreBlogs value)? getMoreBlogs,
    TResult Function(_GetPublishingBlogs value)? getPublishingBlogs,
    TResult Function(_GetMorePublishingPosts value)? getMorePublishingBlogs,
    TResult Function(_GetUserBlogs value)? getUserBlogs,
    TResult Function(_GetMoreUserBlogs value)? getMoreUserBlogs,
    TResult Function(_AddBlog value)? addBlog,
    TResult Function(_DeleteBlog value)? deleteBlog,
    TResult Function(_DeclineBlog value)? declineBlog,
    TResult Function(_ApproveBlog value)? approveBlog,
    TResult Function(_LikeBlog value)? likeBlog,
    TResult Function(_LikeSingleBlogPost value)? likeSingleBlogPost,
    required TResult orElse(),
  }) {
    if (approveBlog != null) {
      return approveBlog(this);
    }
    return orElse();
  }
}

abstract class _ApproveBlog implements BlogsEvent {
  const factory _ApproveBlog(
      {required String userCollege,
      required BlogsModel blogModel,
      required int index}) = _$_ApproveBlog;

  String get userCollege => throw _privateConstructorUsedError;
  BlogsModel get blogModel => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ApproveBlogCopyWith<_ApproveBlog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LikeBlogCopyWith<$Res> {
  factory _$LikeBlogCopyWith(_LikeBlog value, $Res Function(_LikeBlog) then) =
      __$LikeBlogCopyWithImpl<$Res>;
  $Res call({String userCollege, int index});
}

/// @nodoc
class __$LikeBlogCopyWithImpl<$Res> extends _$BlogsEventCopyWithImpl<$Res>
    implements _$LikeBlogCopyWith<$Res> {
  __$LikeBlogCopyWithImpl(_LikeBlog _value, $Res Function(_LikeBlog) _then)
      : super(_value, (v) => _then(v as _LikeBlog));

  @override
  _LikeBlog get _value => super._value as _LikeBlog;

  @override
  $Res call({
    Object? userCollege = freezed,
    Object? index = freezed,
  }) {
    return _then(_LikeBlog(
      userCollege: userCollege == freezed
          ? _value.userCollege
          : userCollege // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_LikeBlog implements _LikeBlog {
  const _$_LikeBlog({required this.userCollege, required this.index});

  @override
  final String userCollege;
  @override
  final int index;

  @override
  String toString() {
    return 'BlogsEvent.likeBlog(userCollege: $userCollege, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LikeBlog &&
            (identical(other.userCollege, userCollege) ||
                const DeepCollectionEquality()
                    .equals(other.userCollege, userCollege)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userCollege) ^
      const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$LikeBlogCopyWith<_LikeBlog> get copyWith =>
      __$LikeBlogCopyWithImpl<_LikeBlog>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<String>? selectedTags, String? city, String? college)
        getBlogs,
    required TResult Function(
            List<String>? selectedTags, String? city, String? college)
        getMoreBlogs,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getPublishingBlogs,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getMorePublishingBlogs,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getUserBlogs,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getMoreUserBlogs,
    required TResult Function(
            String? userCollege, BlogsModel? blogModel, File? file, int? index)
        addBlog,
    required TResult Function(String userCollege, BlogsModel blogModel,
            int index, bool isDeletedFromApproved)
        deleteBlog,
    required TResult Function(
            String userCollege, BlogsModel blogModel, int index)
        declineBlog,
    required TResult Function(
            String userCollege, BlogsModel blogModel, int index)
        approveBlog,
    required TResult Function(String userCollege, int index) likeBlog,
    required TResult Function(BlogsModel blogModel, Function onChanged)
        likeSingleBlogPost,
  }) {
    return likeBlog(userCollege, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String>? selectedTags, String? city, String? college)?
        getBlogs,
    TResult Function(List<String>? selectedTags, String? city, String? college)?
        getMoreBlogs,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getPublishingBlogs,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getMorePublishingBlogs,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getUserBlogs,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getMoreUserBlogs,
    TResult Function(
            String? userCollege, BlogsModel? blogModel, File? file, int? index)?
        addBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index,
            bool isDeletedFromApproved)?
        deleteBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index)?
        declineBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index)?
        approveBlog,
    TResult Function(String userCollege, int index)? likeBlog,
    TResult Function(BlogsModel blogModel, Function onChanged)?
        likeSingleBlogPost,
    required TResult orElse(),
  }) {
    if (likeBlog != null) {
      return likeBlog(userCollege, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBlogs value) getBlogs,
    required TResult Function(_GetMoreBlogs value) getMoreBlogs,
    required TResult Function(_GetPublishingBlogs value) getPublishingBlogs,
    required TResult Function(_GetMorePublishingPosts value)
        getMorePublishingBlogs,
    required TResult Function(_GetUserBlogs value) getUserBlogs,
    required TResult Function(_GetMoreUserBlogs value) getMoreUserBlogs,
    required TResult Function(_AddBlog value) addBlog,
    required TResult Function(_DeleteBlog value) deleteBlog,
    required TResult Function(_DeclineBlog value) declineBlog,
    required TResult Function(_ApproveBlog value) approveBlog,
    required TResult Function(_LikeBlog value) likeBlog,
    required TResult Function(_LikeSingleBlogPost value) likeSingleBlogPost,
  }) {
    return likeBlog(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBlogs value)? getBlogs,
    TResult Function(_GetMoreBlogs value)? getMoreBlogs,
    TResult Function(_GetPublishingBlogs value)? getPublishingBlogs,
    TResult Function(_GetMorePublishingPosts value)? getMorePublishingBlogs,
    TResult Function(_GetUserBlogs value)? getUserBlogs,
    TResult Function(_GetMoreUserBlogs value)? getMoreUserBlogs,
    TResult Function(_AddBlog value)? addBlog,
    TResult Function(_DeleteBlog value)? deleteBlog,
    TResult Function(_DeclineBlog value)? declineBlog,
    TResult Function(_ApproveBlog value)? approveBlog,
    TResult Function(_LikeBlog value)? likeBlog,
    TResult Function(_LikeSingleBlogPost value)? likeSingleBlogPost,
    required TResult orElse(),
  }) {
    if (likeBlog != null) {
      return likeBlog(this);
    }
    return orElse();
  }
}

abstract class _LikeBlog implements BlogsEvent {
  const factory _LikeBlog({required String userCollege, required int index}) =
      _$_LikeBlog;

  String get userCollege => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LikeBlogCopyWith<_LikeBlog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LikeSingleBlogPostCopyWith<$Res> {
  factory _$LikeSingleBlogPostCopyWith(
          _LikeSingleBlogPost value, $Res Function(_LikeSingleBlogPost) then) =
      __$LikeSingleBlogPostCopyWithImpl<$Res>;
  $Res call({BlogsModel blogModel, Function onChanged});
}

/// @nodoc
class __$LikeSingleBlogPostCopyWithImpl<$Res>
    extends _$BlogsEventCopyWithImpl<$Res>
    implements _$LikeSingleBlogPostCopyWith<$Res> {
  __$LikeSingleBlogPostCopyWithImpl(
      _LikeSingleBlogPost _value, $Res Function(_LikeSingleBlogPost) _then)
      : super(_value, (v) => _then(v as _LikeSingleBlogPost));

  @override
  _LikeSingleBlogPost get _value => super._value as _LikeSingleBlogPost;

  @override
  $Res call({
    Object? blogModel = freezed,
    Object? onChanged = freezed,
  }) {
    return _then(_LikeSingleBlogPost(
      blogModel: blogModel == freezed
          ? _value.blogModel
          : blogModel // ignore: cast_nullable_to_non_nullable
              as BlogsModel,
      onChanged: onChanged == freezed
          ? _value.onChanged
          : onChanged // ignore: cast_nullable_to_non_nullable
              as Function,
    ));
  }
}

/// @nodoc

class _$_LikeSingleBlogPost implements _LikeSingleBlogPost {
  const _$_LikeSingleBlogPost(
      {required this.blogModel, required this.onChanged});

  @override
  final BlogsModel blogModel;
  @override
  final Function onChanged;

  @override
  String toString() {
    return 'BlogsEvent.likeSingleBlogPost(blogModel: $blogModel, onChanged: $onChanged)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LikeSingleBlogPost &&
            (identical(other.blogModel, blogModel) ||
                const DeepCollectionEquality()
                    .equals(other.blogModel, blogModel)) &&
            (identical(other.onChanged, onChanged) ||
                const DeepCollectionEquality()
                    .equals(other.onChanged, onChanged)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(blogModel) ^
      const DeepCollectionEquality().hash(onChanged);

  @JsonKey(ignore: true)
  @override
  _$LikeSingleBlogPostCopyWith<_LikeSingleBlogPost> get copyWith =>
      __$LikeSingleBlogPostCopyWithImpl<_LikeSingleBlogPost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<String>? selectedTags, String? city, String? college)
        getBlogs,
    required TResult Function(
            List<String>? selectedTags, String? city, String? college)
        getMoreBlogs,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getPublishingBlogs,
    required TResult Function(
            String userCollege, String? status, DateTime? selectedDate)
        getMorePublishingBlogs,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getUserBlogs,
    required TResult Function(
            CoolUser coolUser, String? status, DateTime? selectedDate)
        getMoreUserBlogs,
    required TResult Function(
            String? userCollege, BlogsModel? blogModel, File? file, int? index)
        addBlog,
    required TResult Function(String userCollege, BlogsModel blogModel,
            int index, bool isDeletedFromApproved)
        deleteBlog,
    required TResult Function(
            String userCollege, BlogsModel blogModel, int index)
        declineBlog,
    required TResult Function(
            String userCollege, BlogsModel blogModel, int index)
        approveBlog,
    required TResult Function(String userCollege, int index) likeBlog,
    required TResult Function(BlogsModel blogModel, Function onChanged)
        likeSingleBlogPost,
  }) {
    return likeSingleBlogPost(blogModel, onChanged);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String>? selectedTags, String? city, String? college)?
        getBlogs,
    TResult Function(List<String>? selectedTags, String? city, String? college)?
        getMoreBlogs,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getPublishingBlogs,
    TResult Function(
            String userCollege, String? status, DateTime? selectedDate)?
        getMorePublishingBlogs,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getUserBlogs,
    TResult Function(CoolUser coolUser, String? status, DateTime? selectedDate)?
        getMoreUserBlogs,
    TResult Function(
            String? userCollege, BlogsModel? blogModel, File? file, int? index)?
        addBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index,
            bool isDeletedFromApproved)?
        deleteBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index)?
        declineBlog,
    TResult Function(String userCollege, BlogsModel blogModel, int index)?
        approveBlog,
    TResult Function(String userCollege, int index)? likeBlog,
    TResult Function(BlogsModel blogModel, Function onChanged)?
        likeSingleBlogPost,
    required TResult orElse(),
  }) {
    if (likeSingleBlogPost != null) {
      return likeSingleBlogPost(blogModel, onChanged);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBlogs value) getBlogs,
    required TResult Function(_GetMoreBlogs value) getMoreBlogs,
    required TResult Function(_GetPublishingBlogs value) getPublishingBlogs,
    required TResult Function(_GetMorePublishingPosts value)
        getMorePublishingBlogs,
    required TResult Function(_GetUserBlogs value) getUserBlogs,
    required TResult Function(_GetMoreUserBlogs value) getMoreUserBlogs,
    required TResult Function(_AddBlog value) addBlog,
    required TResult Function(_DeleteBlog value) deleteBlog,
    required TResult Function(_DeclineBlog value) declineBlog,
    required TResult Function(_ApproveBlog value) approveBlog,
    required TResult Function(_LikeBlog value) likeBlog,
    required TResult Function(_LikeSingleBlogPost value) likeSingleBlogPost,
  }) {
    return likeSingleBlogPost(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBlogs value)? getBlogs,
    TResult Function(_GetMoreBlogs value)? getMoreBlogs,
    TResult Function(_GetPublishingBlogs value)? getPublishingBlogs,
    TResult Function(_GetMorePublishingPosts value)? getMorePublishingBlogs,
    TResult Function(_GetUserBlogs value)? getUserBlogs,
    TResult Function(_GetMoreUserBlogs value)? getMoreUserBlogs,
    TResult Function(_AddBlog value)? addBlog,
    TResult Function(_DeleteBlog value)? deleteBlog,
    TResult Function(_DeclineBlog value)? declineBlog,
    TResult Function(_ApproveBlog value)? approveBlog,
    TResult Function(_LikeBlog value)? likeBlog,
    TResult Function(_LikeSingleBlogPost value)? likeSingleBlogPost,
    required TResult orElse(),
  }) {
    if (likeSingleBlogPost != null) {
      return likeSingleBlogPost(this);
    }
    return orElse();
  }
}

abstract class _LikeSingleBlogPost implements BlogsEvent {
  const factory _LikeSingleBlogPost(
      {required BlogsModel blogModel,
      required Function onChanged}) = _$_LikeSingleBlogPost;

  BlogsModel get blogModel => throw _privateConstructorUsedError;
  Function get onChanged => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LikeSingleBlogPostCopyWith<_LikeSingleBlogPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$BlogsStateTearOff {
  const _$BlogsStateTearOff();

  _BlogsState call(
      {required bool hasMoreApprovedBlogs,
      required bool hasMoreUserBlogs,
      required bool isApprovedBlogsLoading,
      required bool isUserBlogsLoading,
      required bool fetchMoreApprovedBlogsLoading,
      required bool fetchMoreUserBlogsLoading,
      required Option<Either<FirebaseFailure, String>> blogActionResultOpt,
      required List<BlogsModel> blogsList,
      required List<BlogsModel> publishingBlogsList,
      required List<BlogsModel> userBlogsList,
      required bool isApprovingBlog,
      required bool isDecliningBlog,
      required bool isAddingBlog,
      required bool isDeletingBlog,
      required bool hasMorePublishingBlogs,
      required bool isPublishingBlogsLoading,
      required bool fetchMorePublishingBlogsLoading,
      required List<BlogsModel> approvedBlogsList}) {
    return _BlogsState(
      hasMoreApprovedBlogs: hasMoreApprovedBlogs,
      hasMoreUserBlogs: hasMoreUserBlogs,
      isApprovedBlogsLoading: isApprovedBlogsLoading,
      isUserBlogsLoading: isUserBlogsLoading,
      fetchMoreApprovedBlogsLoading: fetchMoreApprovedBlogsLoading,
      fetchMoreUserBlogsLoading: fetchMoreUserBlogsLoading,
      blogActionResultOpt: blogActionResultOpt,
      blogsList: blogsList,
      publishingBlogsList: publishingBlogsList,
      userBlogsList: userBlogsList,
      isApprovingBlog: isApprovingBlog,
      isDecliningBlog: isDecliningBlog,
      isAddingBlog: isAddingBlog,
      isDeletingBlog: isDeletingBlog,
      hasMorePublishingBlogs: hasMorePublishingBlogs,
      isPublishingBlogsLoading: isPublishingBlogsLoading,
      fetchMorePublishingBlogsLoading: fetchMorePublishingBlogsLoading,
      approvedBlogsList: approvedBlogsList,
    );
  }
}

/// @nodoc
const $BlogsState = _$BlogsStateTearOff();

/// @nodoc
mixin _$BlogsState {
  bool get hasMoreApprovedBlogs => throw _privateConstructorUsedError;
  bool get hasMoreUserBlogs => throw _privateConstructorUsedError;
  bool get isApprovedBlogsLoading => throw _privateConstructorUsedError;
  bool get isUserBlogsLoading => throw _privateConstructorUsedError;
  bool get fetchMoreApprovedBlogsLoading => throw _privateConstructorUsedError;
  bool get fetchMoreUserBlogsLoading => throw _privateConstructorUsedError;
  Option<Either<FirebaseFailure, String>> get blogActionResultOpt =>
      throw _privateConstructorUsedError;
  List<BlogsModel> get blogsList => throw _privateConstructorUsedError;
  List<BlogsModel> get publishingBlogsList =>
      throw _privateConstructorUsedError;
  List<BlogsModel> get userBlogsList => throw _privateConstructorUsedError;
  bool get isApprovingBlog => throw _privateConstructorUsedError;
  bool get isDecliningBlog => throw _privateConstructorUsedError;
  bool get isAddingBlog => throw _privateConstructorUsedError;
  bool get isDeletingBlog => throw _privateConstructorUsedError;
  bool get hasMorePublishingBlogs => throw _privateConstructorUsedError;
  bool get isPublishingBlogsLoading => throw _privateConstructorUsedError;
  bool get fetchMorePublishingBlogsLoading =>
      throw _privateConstructorUsedError;
  List<BlogsModel> get approvedBlogsList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BlogsStateCopyWith<BlogsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogsStateCopyWith<$Res> {
  factory $BlogsStateCopyWith(
          BlogsState value, $Res Function(BlogsState) then) =
      _$BlogsStateCopyWithImpl<$Res>;
  $Res call(
      {bool hasMoreApprovedBlogs,
      bool hasMoreUserBlogs,
      bool isApprovedBlogsLoading,
      bool isUserBlogsLoading,
      bool fetchMoreApprovedBlogsLoading,
      bool fetchMoreUserBlogsLoading,
      Option<Either<FirebaseFailure, String>> blogActionResultOpt,
      List<BlogsModel> blogsList,
      List<BlogsModel> publishingBlogsList,
      List<BlogsModel> userBlogsList,
      bool isApprovingBlog,
      bool isDecliningBlog,
      bool isAddingBlog,
      bool isDeletingBlog,
      bool hasMorePublishingBlogs,
      bool isPublishingBlogsLoading,
      bool fetchMorePublishingBlogsLoading,
      List<BlogsModel> approvedBlogsList});
}

/// @nodoc
class _$BlogsStateCopyWithImpl<$Res> implements $BlogsStateCopyWith<$Res> {
  _$BlogsStateCopyWithImpl(this._value, this._then);

  final BlogsState _value;
  // ignore: unused_field
  final $Res Function(BlogsState) _then;

  @override
  $Res call({
    Object? hasMoreApprovedBlogs = freezed,
    Object? hasMoreUserBlogs = freezed,
    Object? isApprovedBlogsLoading = freezed,
    Object? isUserBlogsLoading = freezed,
    Object? fetchMoreApprovedBlogsLoading = freezed,
    Object? fetchMoreUserBlogsLoading = freezed,
    Object? blogActionResultOpt = freezed,
    Object? blogsList = freezed,
    Object? publishingBlogsList = freezed,
    Object? userBlogsList = freezed,
    Object? isApprovingBlog = freezed,
    Object? isDecliningBlog = freezed,
    Object? isAddingBlog = freezed,
    Object? isDeletingBlog = freezed,
    Object? hasMorePublishingBlogs = freezed,
    Object? isPublishingBlogsLoading = freezed,
    Object? fetchMorePublishingBlogsLoading = freezed,
    Object? approvedBlogsList = freezed,
  }) {
    return _then(_value.copyWith(
      hasMoreApprovedBlogs: hasMoreApprovedBlogs == freezed
          ? _value.hasMoreApprovedBlogs
          : hasMoreApprovedBlogs // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMoreUserBlogs: hasMoreUserBlogs == freezed
          ? _value.hasMoreUserBlogs
          : hasMoreUserBlogs // ignore: cast_nullable_to_non_nullable
              as bool,
      isApprovedBlogsLoading: isApprovedBlogsLoading == freezed
          ? _value.isApprovedBlogsLoading
          : isApprovedBlogsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isUserBlogsLoading: isUserBlogsLoading == freezed
          ? _value.isUserBlogsLoading
          : isUserBlogsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchMoreApprovedBlogsLoading: fetchMoreApprovedBlogsLoading == freezed
          ? _value.fetchMoreApprovedBlogsLoading
          : fetchMoreApprovedBlogsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchMoreUserBlogsLoading: fetchMoreUserBlogsLoading == freezed
          ? _value.fetchMoreUserBlogsLoading
          : fetchMoreUserBlogsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      blogActionResultOpt: blogActionResultOpt == freezed
          ? _value.blogActionResultOpt
          : blogActionResultOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, String>>,
      blogsList: blogsList == freezed
          ? _value.blogsList
          : blogsList // ignore: cast_nullable_to_non_nullable
              as List<BlogsModel>,
      publishingBlogsList: publishingBlogsList == freezed
          ? _value.publishingBlogsList
          : publishingBlogsList // ignore: cast_nullable_to_non_nullable
              as List<BlogsModel>,
      userBlogsList: userBlogsList == freezed
          ? _value.userBlogsList
          : userBlogsList // ignore: cast_nullable_to_non_nullable
              as List<BlogsModel>,
      isApprovingBlog: isApprovingBlog == freezed
          ? _value.isApprovingBlog
          : isApprovingBlog // ignore: cast_nullable_to_non_nullable
              as bool,
      isDecliningBlog: isDecliningBlog == freezed
          ? _value.isDecliningBlog
          : isDecliningBlog // ignore: cast_nullable_to_non_nullable
              as bool,
      isAddingBlog: isAddingBlog == freezed
          ? _value.isAddingBlog
          : isAddingBlog // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeletingBlog: isDeletingBlog == freezed
          ? _value.isDeletingBlog
          : isDeletingBlog // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMorePublishingBlogs: hasMorePublishingBlogs == freezed
          ? _value.hasMorePublishingBlogs
          : hasMorePublishingBlogs // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublishingBlogsLoading: isPublishingBlogsLoading == freezed
          ? _value.isPublishingBlogsLoading
          : isPublishingBlogsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchMorePublishingBlogsLoading: fetchMorePublishingBlogsLoading ==
              freezed
          ? _value.fetchMorePublishingBlogsLoading
          : fetchMorePublishingBlogsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      approvedBlogsList: approvedBlogsList == freezed
          ? _value.approvedBlogsList
          : approvedBlogsList // ignore: cast_nullable_to_non_nullable
              as List<BlogsModel>,
    ));
  }
}

/// @nodoc
abstract class _$BlogsStateCopyWith<$Res> implements $BlogsStateCopyWith<$Res> {
  factory _$BlogsStateCopyWith(
          _BlogsState value, $Res Function(_BlogsState) then) =
      __$BlogsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool hasMoreApprovedBlogs,
      bool hasMoreUserBlogs,
      bool isApprovedBlogsLoading,
      bool isUserBlogsLoading,
      bool fetchMoreApprovedBlogsLoading,
      bool fetchMoreUserBlogsLoading,
      Option<Either<FirebaseFailure, String>> blogActionResultOpt,
      List<BlogsModel> blogsList,
      List<BlogsModel> publishingBlogsList,
      List<BlogsModel> userBlogsList,
      bool isApprovingBlog,
      bool isDecliningBlog,
      bool isAddingBlog,
      bool isDeletingBlog,
      bool hasMorePublishingBlogs,
      bool isPublishingBlogsLoading,
      bool fetchMorePublishingBlogsLoading,
      List<BlogsModel> approvedBlogsList});
}

/// @nodoc
class __$BlogsStateCopyWithImpl<$Res> extends _$BlogsStateCopyWithImpl<$Res>
    implements _$BlogsStateCopyWith<$Res> {
  __$BlogsStateCopyWithImpl(
      _BlogsState _value, $Res Function(_BlogsState) _then)
      : super(_value, (v) => _then(v as _BlogsState));

  @override
  _BlogsState get _value => super._value as _BlogsState;

  @override
  $Res call({
    Object? hasMoreApprovedBlogs = freezed,
    Object? hasMoreUserBlogs = freezed,
    Object? isApprovedBlogsLoading = freezed,
    Object? isUserBlogsLoading = freezed,
    Object? fetchMoreApprovedBlogsLoading = freezed,
    Object? fetchMoreUserBlogsLoading = freezed,
    Object? blogActionResultOpt = freezed,
    Object? blogsList = freezed,
    Object? publishingBlogsList = freezed,
    Object? userBlogsList = freezed,
    Object? isApprovingBlog = freezed,
    Object? isDecliningBlog = freezed,
    Object? isAddingBlog = freezed,
    Object? isDeletingBlog = freezed,
    Object? hasMorePublishingBlogs = freezed,
    Object? isPublishingBlogsLoading = freezed,
    Object? fetchMorePublishingBlogsLoading = freezed,
    Object? approvedBlogsList = freezed,
  }) {
    return _then(_BlogsState(
      hasMoreApprovedBlogs: hasMoreApprovedBlogs == freezed
          ? _value.hasMoreApprovedBlogs
          : hasMoreApprovedBlogs // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMoreUserBlogs: hasMoreUserBlogs == freezed
          ? _value.hasMoreUserBlogs
          : hasMoreUserBlogs // ignore: cast_nullable_to_non_nullable
              as bool,
      isApprovedBlogsLoading: isApprovedBlogsLoading == freezed
          ? _value.isApprovedBlogsLoading
          : isApprovedBlogsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isUserBlogsLoading: isUserBlogsLoading == freezed
          ? _value.isUserBlogsLoading
          : isUserBlogsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchMoreApprovedBlogsLoading: fetchMoreApprovedBlogsLoading == freezed
          ? _value.fetchMoreApprovedBlogsLoading
          : fetchMoreApprovedBlogsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchMoreUserBlogsLoading: fetchMoreUserBlogsLoading == freezed
          ? _value.fetchMoreUserBlogsLoading
          : fetchMoreUserBlogsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      blogActionResultOpt: blogActionResultOpt == freezed
          ? _value.blogActionResultOpt
          : blogActionResultOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, String>>,
      blogsList: blogsList == freezed
          ? _value.blogsList
          : blogsList // ignore: cast_nullable_to_non_nullable
              as List<BlogsModel>,
      publishingBlogsList: publishingBlogsList == freezed
          ? _value.publishingBlogsList
          : publishingBlogsList // ignore: cast_nullable_to_non_nullable
              as List<BlogsModel>,
      userBlogsList: userBlogsList == freezed
          ? _value.userBlogsList
          : userBlogsList // ignore: cast_nullable_to_non_nullable
              as List<BlogsModel>,
      isApprovingBlog: isApprovingBlog == freezed
          ? _value.isApprovingBlog
          : isApprovingBlog // ignore: cast_nullable_to_non_nullable
              as bool,
      isDecliningBlog: isDecliningBlog == freezed
          ? _value.isDecliningBlog
          : isDecliningBlog // ignore: cast_nullable_to_non_nullable
              as bool,
      isAddingBlog: isAddingBlog == freezed
          ? _value.isAddingBlog
          : isAddingBlog // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeletingBlog: isDeletingBlog == freezed
          ? _value.isDeletingBlog
          : isDeletingBlog // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMorePublishingBlogs: hasMorePublishingBlogs == freezed
          ? _value.hasMorePublishingBlogs
          : hasMorePublishingBlogs // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublishingBlogsLoading: isPublishingBlogsLoading == freezed
          ? _value.isPublishingBlogsLoading
          : isPublishingBlogsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchMorePublishingBlogsLoading: fetchMorePublishingBlogsLoading ==
              freezed
          ? _value.fetchMorePublishingBlogsLoading
          : fetchMorePublishingBlogsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      approvedBlogsList: approvedBlogsList == freezed
          ? _value.approvedBlogsList
          : approvedBlogsList // ignore: cast_nullable_to_non_nullable
              as List<BlogsModel>,
    ));
  }
}

/// @nodoc

class _$_BlogsState implements _BlogsState {
  const _$_BlogsState(
      {required this.hasMoreApprovedBlogs,
      required this.hasMoreUserBlogs,
      required this.isApprovedBlogsLoading,
      required this.isUserBlogsLoading,
      required this.fetchMoreApprovedBlogsLoading,
      required this.fetchMoreUserBlogsLoading,
      required this.blogActionResultOpt,
      required this.blogsList,
      required this.publishingBlogsList,
      required this.userBlogsList,
      required this.isApprovingBlog,
      required this.isDecliningBlog,
      required this.isAddingBlog,
      required this.isDeletingBlog,
      required this.hasMorePublishingBlogs,
      required this.isPublishingBlogsLoading,
      required this.fetchMorePublishingBlogsLoading,
      required this.approvedBlogsList});

  @override
  final bool hasMoreApprovedBlogs;
  @override
  final bool hasMoreUserBlogs;
  @override
  final bool isApprovedBlogsLoading;
  @override
  final bool isUserBlogsLoading;
  @override
  final bool fetchMoreApprovedBlogsLoading;
  @override
  final bool fetchMoreUserBlogsLoading;
  @override
  final Option<Either<FirebaseFailure, String>> blogActionResultOpt;
  @override
  final List<BlogsModel> blogsList;
  @override
  final List<BlogsModel> publishingBlogsList;
  @override
  final List<BlogsModel> userBlogsList;
  @override
  final bool isApprovingBlog;
  @override
  final bool isDecliningBlog;
  @override
  final bool isAddingBlog;
  @override
  final bool isDeletingBlog;
  @override
  final bool hasMorePublishingBlogs;
  @override
  final bool isPublishingBlogsLoading;
  @override
  final bool fetchMorePublishingBlogsLoading;
  @override
  final List<BlogsModel> approvedBlogsList;

  @override
  String toString() {
    return 'BlogsState(hasMoreApprovedBlogs: $hasMoreApprovedBlogs, hasMoreUserBlogs: $hasMoreUserBlogs, isApprovedBlogsLoading: $isApprovedBlogsLoading, isUserBlogsLoading: $isUserBlogsLoading, fetchMoreApprovedBlogsLoading: $fetchMoreApprovedBlogsLoading, fetchMoreUserBlogsLoading: $fetchMoreUserBlogsLoading, blogActionResultOpt: $blogActionResultOpt, blogsList: $blogsList, publishingBlogsList: $publishingBlogsList, userBlogsList: $userBlogsList, isApprovingBlog: $isApprovingBlog, isDecliningBlog: $isDecliningBlog, isAddingBlog: $isAddingBlog, isDeletingBlog: $isDeletingBlog, hasMorePublishingBlogs: $hasMorePublishingBlogs, isPublishingBlogsLoading: $isPublishingBlogsLoading, fetchMorePublishingBlogsLoading: $fetchMorePublishingBlogsLoading, approvedBlogsList: $approvedBlogsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BlogsState &&
            (identical(other.hasMoreApprovedBlogs, hasMoreApprovedBlogs) ||
                const DeepCollectionEquality().equals(
                    other.hasMoreApprovedBlogs, hasMoreApprovedBlogs)) &&
            (identical(other.hasMoreUserBlogs, hasMoreUserBlogs) ||
                const DeepCollectionEquality()
                    .equals(other.hasMoreUserBlogs, hasMoreUserBlogs)) &&
            (identical(other.isApprovedBlogsLoading, isApprovedBlogsLoading) ||
                const DeepCollectionEquality().equals(
                    other.isApprovedBlogsLoading, isApprovedBlogsLoading)) &&
            (identical(other.isUserBlogsLoading, isUserBlogsLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isUserBlogsLoading, isUserBlogsLoading)) &&
            (identical(other.fetchMoreApprovedBlogsLoading, fetchMoreApprovedBlogsLoading) ||
                const DeepCollectionEquality().equals(
                    other.fetchMoreApprovedBlogsLoading,
                    fetchMoreApprovedBlogsLoading)) &&
            (identical(other.fetchMoreUserBlogsLoading, fetchMoreUserBlogsLoading) ||
                const DeepCollectionEquality().equals(
                    other.fetchMoreUserBlogsLoading,
                    fetchMoreUserBlogsLoading)) &&
            (identical(other.blogActionResultOpt, blogActionResultOpt) ||
                const DeepCollectionEquality()
                    .equals(other.blogActionResultOpt, blogActionResultOpt)) &&
            (identical(other.blogsList, blogsList) ||
                const DeepCollectionEquality()
                    .equals(other.blogsList, blogsList)) &&
            (identical(other.publishingBlogsList, publishingBlogsList) ||
                const DeepCollectionEquality()
                    .equals(other.publishingBlogsList, publishingBlogsList)) &&
            (identical(other.userBlogsList, userBlogsList) ||
                const DeepCollectionEquality()
                    .equals(other.userBlogsList, userBlogsList)) &&
            (identical(other.isApprovingBlog, isApprovingBlog) ||
                const DeepCollectionEquality()
                    .equals(other.isApprovingBlog, isApprovingBlog)) &&
            (identical(other.isDecliningBlog, isDecliningBlog) ||
                const DeepCollectionEquality()
                    .equals(other.isDecliningBlog, isDecliningBlog)) &&
            (identical(other.isAddingBlog, isAddingBlog) ||
                const DeepCollectionEquality()
                    .equals(other.isAddingBlog, isAddingBlog)) &&
            (identical(other.isDeletingBlog, isDeletingBlog) ||
                const DeepCollectionEquality()
                    .equals(other.isDeletingBlog, isDeletingBlog)) &&
            (identical(other.hasMorePublishingBlogs, hasMorePublishingBlogs) || const DeepCollectionEquality().equals(other.hasMorePublishingBlogs, hasMorePublishingBlogs)) &&
            (identical(other.isPublishingBlogsLoading, isPublishingBlogsLoading) || const DeepCollectionEquality().equals(other.isPublishingBlogsLoading, isPublishingBlogsLoading)) &&
            (identical(other.fetchMorePublishingBlogsLoading, fetchMorePublishingBlogsLoading) || const DeepCollectionEquality().equals(other.fetchMorePublishingBlogsLoading, fetchMorePublishingBlogsLoading)) &&
            (identical(other.approvedBlogsList, approvedBlogsList) || const DeepCollectionEquality().equals(other.approvedBlogsList, approvedBlogsList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hasMoreApprovedBlogs) ^
      const DeepCollectionEquality().hash(hasMoreUserBlogs) ^
      const DeepCollectionEquality().hash(isApprovedBlogsLoading) ^
      const DeepCollectionEquality().hash(isUserBlogsLoading) ^
      const DeepCollectionEquality().hash(fetchMoreApprovedBlogsLoading) ^
      const DeepCollectionEquality().hash(fetchMoreUserBlogsLoading) ^
      const DeepCollectionEquality().hash(blogActionResultOpt) ^
      const DeepCollectionEquality().hash(blogsList) ^
      const DeepCollectionEquality().hash(publishingBlogsList) ^
      const DeepCollectionEquality().hash(userBlogsList) ^
      const DeepCollectionEquality().hash(isApprovingBlog) ^
      const DeepCollectionEquality().hash(isDecliningBlog) ^
      const DeepCollectionEquality().hash(isAddingBlog) ^
      const DeepCollectionEquality().hash(isDeletingBlog) ^
      const DeepCollectionEquality().hash(hasMorePublishingBlogs) ^
      const DeepCollectionEquality().hash(isPublishingBlogsLoading) ^
      const DeepCollectionEquality().hash(fetchMorePublishingBlogsLoading) ^
      const DeepCollectionEquality().hash(approvedBlogsList);

  @JsonKey(ignore: true)
  @override
  _$BlogsStateCopyWith<_BlogsState> get copyWith =>
      __$BlogsStateCopyWithImpl<_BlogsState>(this, _$identity);
}

abstract class _BlogsState implements BlogsState {
  const factory _BlogsState(
      {required bool hasMoreApprovedBlogs,
      required bool hasMoreUserBlogs,
      required bool isApprovedBlogsLoading,
      required bool isUserBlogsLoading,
      required bool fetchMoreApprovedBlogsLoading,
      required bool fetchMoreUserBlogsLoading,
      required Option<Either<FirebaseFailure, String>> blogActionResultOpt,
      required List<BlogsModel> blogsList,
      required List<BlogsModel> publishingBlogsList,
      required List<BlogsModel> userBlogsList,
      required bool isApprovingBlog,
      required bool isDecliningBlog,
      required bool isAddingBlog,
      required bool isDeletingBlog,
      required bool hasMorePublishingBlogs,
      required bool isPublishingBlogsLoading,
      required bool fetchMorePublishingBlogsLoading,
      required List<BlogsModel> approvedBlogsList}) = _$_BlogsState;

  @override
  bool get hasMoreApprovedBlogs => throw _privateConstructorUsedError;
  @override
  bool get hasMoreUserBlogs => throw _privateConstructorUsedError;
  @override
  bool get isApprovedBlogsLoading => throw _privateConstructorUsedError;
  @override
  bool get isUserBlogsLoading => throw _privateConstructorUsedError;
  @override
  bool get fetchMoreApprovedBlogsLoading => throw _privateConstructorUsedError;
  @override
  bool get fetchMoreUserBlogsLoading => throw _privateConstructorUsedError;
  @override
  Option<Either<FirebaseFailure, String>> get blogActionResultOpt =>
      throw _privateConstructorUsedError;
  @override
  List<BlogsModel> get blogsList => throw _privateConstructorUsedError;
  @override
  List<BlogsModel> get publishingBlogsList =>
      throw _privateConstructorUsedError;
  @override
  List<BlogsModel> get userBlogsList => throw _privateConstructorUsedError;
  @override
  bool get isApprovingBlog => throw _privateConstructorUsedError;
  @override
  bool get isDecliningBlog => throw _privateConstructorUsedError;
  @override
  bool get isAddingBlog => throw _privateConstructorUsedError;
  @override
  bool get isDeletingBlog => throw _privateConstructorUsedError;
  @override
  bool get hasMorePublishingBlogs => throw _privateConstructorUsedError;
  @override
  bool get isPublishingBlogsLoading => throw _privateConstructorUsedError;
  @override
  bool get fetchMorePublishingBlogsLoading =>
      throw _privateConstructorUsedError;
  @override
  List<BlogsModel> get approvedBlogsList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BlogsStateCopyWith<_BlogsState> get copyWith =>
      throw _privateConstructorUsedError;
}
