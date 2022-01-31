// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'college_groups_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CollegeGroupsEventTearOff {
  const _$CollegeGroupsEventTearOff();

  _GetGroupDetails getGroupDetails(
      {required String groupName, required String college}) {
    return _GetGroupDetails(
      groupName: groupName,
      college: college,
    );
  }

  _GetDepartmentFaculties getDepartmentFaculties(
      {required String college, required String department}) {
    return _GetDepartmentFaculties(
      college: college,
      department: department,
    );
  }

  _GetMoreDepartmentFaculties getMoreDepartmentFaculties(
      {required String college, required String department}) {
    return _GetMoreDepartmentFaculties(
      college: college,
      department: department,
    );
  }

  _GetGroupMembers getGroupMembers(
      {required String college, required String groupName}) {
    return _GetGroupMembers(
      college: college,
      groupName: groupName,
    );
  }

  _GetMoreGroupMembers getMoreGroupMembers(
      {required String college, required String groupName}) {
    return _GetMoreGroupMembers(
      college: college,
      groupName: groupName,
    );
  }

  _GetDepartmentStudentsGroupWise getDepartmentStudentsGroupWise(
      {required String group,
      required String department,
      required String college,
      required String degree,
      required String year}) {
    return _GetDepartmentStudentsGroupWise(
      group: group,
      department: department,
      college: college,
      degree: degree,
      year: year,
    );
  }

  _GetMoreDepartmentStudentsGroupWise getMoreDepartmentStudentsGroupWise(
      {required String group,
      required String department,
      required String college,
      required String degree,
      required String year}) {
    return _GetMoreDepartmentStudentsGroupWise(
      group: group,
      department: department,
      college: college,
      degree: degree,
      year: year,
    );
  }

  _AddGroupDetails addGroupDetails(
      {required String userCollege,
      required GroupModel model,
      required bool isEdit,
      String? earlierName,
      File? backgroundImageFile,
      File? logoFile}) {
    return _AddGroupDetails(
      userCollege: userCollege,
      model: model,
      isEdit: isEdit,
      earlierName: earlierName,
      backgroundImageFile: backgroundImageFile,
      logoFile: logoFile,
    );
  }

  _DeleteGroupDetails deleteGroupDetails(
      {required String userCollege, required GroupModel model}) {
    return _DeleteGroupDetails(
      userCollege: userCollege,
      model: model,
    );
  }
}

/// @nodoc
const $CollegeGroupsEvent = _$CollegeGroupsEventTearOff();

/// @nodoc
mixin _$CollegeGroupsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupName, String college) getGroupDetails,
    required TResult Function(String college, String department)
        getDepartmentFaculties,
    required TResult Function(String college, String department)
        getMoreDepartmentFaculties,
    required TResult Function(String college, String groupName) getGroupMembers,
    required TResult Function(String college, String groupName)
        getMoreGroupMembers,
    required TResult Function(String group, String department, String college,
            String degree, String year)
        getDepartmentStudentsGroupWise,
    required TResult Function(String group, String department, String college,
            String degree, String year)
        getMoreDepartmentStudentsGroupWise,
    required TResult Function(String userCollege, GroupModel model, bool isEdit,
            String? earlierName, File? backgroundImageFile, File? logoFile)
        addGroupDetails,
    required TResult Function(String userCollege, GroupModel model)
        deleteGroupDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupName, String college)? getGroupDetails,
    TResult Function(String college, String department)? getDepartmentFaculties,
    TResult Function(String college, String department)?
        getMoreDepartmentFaculties,
    TResult Function(String college, String groupName)? getGroupMembers,
    TResult Function(String college, String groupName)? getMoreGroupMembers,
    TResult Function(String group, String department, String college,
            String degree, String year)?
        getDepartmentStudentsGroupWise,
    TResult Function(String group, String department, String college,
            String degree, String year)?
        getMoreDepartmentStudentsGroupWise,
    TResult Function(String userCollege, GroupModel model, bool isEdit,
            String? earlierName, File? backgroundImageFile, File? logoFile)?
        addGroupDetails,
    TResult Function(String userCollege, GroupModel model)? deleteGroupDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGroupDetails value) getGroupDetails,
    required TResult Function(_GetDepartmentFaculties value)
        getDepartmentFaculties,
    required TResult Function(_GetMoreDepartmentFaculties value)
        getMoreDepartmentFaculties,
    required TResult Function(_GetGroupMembers value) getGroupMembers,
    required TResult Function(_GetMoreGroupMembers value) getMoreGroupMembers,
    required TResult Function(_GetDepartmentStudentsGroupWise value)
        getDepartmentStudentsGroupWise,
    required TResult Function(_GetMoreDepartmentStudentsGroupWise value)
        getMoreDepartmentStudentsGroupWise,
    required TResult Function(_AddGroupDetails value) addGroupDetails,
    required TResult Function(_DeleteGroupDetails value) deleteGroupDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGroupDetails value)? getGroupDetails,
    TResult Function(_GetDepartmentFaculties value)? getDepartmentFaculties,
    TResult Function(_GetMoreDepartmentFaculties value)?
        getMoreDepartmentFaculties,
    TResult Function(_GetGroupMembers value)? getGroupMembers,
    TResult Function(_GetMoreGroupMembers value)? getMoreGroupMembers,
    TResult Function(_GetDepartmentStudentsGroupWise value)?
        getDepartmentStudentsGroupWise,
    TResult Function(_GetMoreDepartmentStudentsGroupWise value)?
        getMoreDepartmentStudentsGroupWise,
    TResult Function(_AddGroupDetails value)? addGroupDetails,
    TResult Function(_DeleteGroupDetails value)? deleteGroupDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollegeGroupsEventCopyWith<$Res> {
  factory $CollegeGroupsEventCopyWith(
          CollegeGroupsEvent value, $Res Function(CollegeGroupsEvent) then) =
      _$CollegeGroupsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CollegeGroupsEventCopyWithImpl<$Res>
    implements $CollegeGroupsEventCopyWith<$Res> {
  _$CollegeGroupsEventCopyWithImpl(this._value, this._then);

  final CollegeGroupsEvent _value;
  // ignore: unused_field
  final $Res Function(CollegeGroupsEvent) _then;
}

/// @nodoc
abstract class _$GetGroupDetailsCopyWith<$Res> {
  factory _$GetGroupDetailsCopyWith(
          _GetGroupDetails value, $Res Function(_GetGroupDetails) then) =
      __$GetGroupDetailsCopyWithImpl<$Res>;
  $Res call({String groupName, String college});
}

/// @nodoc
class __$GetGroupDetailsCopyWithImpl<$Res>
    extends _$CollegeGroupsEventCopyWithImpl<$Res>
    implements _$GetGroupDetailsCopyWith<$Res> {
  __$GetGroupDetailsCopyWithImpl(
      _GetGroupDetails _value, $Res Function(_GetGroupDetails) _then)
      : super(_value, (v) => _then(v as _GetGroupDetails));

  @override
  _GetGroupDetails get _value => super._value as _GetGroupDetails;

  @override
  $Res call({
    Object? groupName = freezed,
    Object? college = freezed,
  }) {
    return _then(_GetGroupDetails(
      groupName: groupName == freezed
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      college: college == freezed
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetGroupDetails implements _GetGroupDetails {
  const _$_GetGroupDetails({required this.groupName, required this.college});

  @override
  final String groupName;
  @override
  final String college;

  @override
  String toString() {
    return 'CollegeGroupsEvent.getGroupDetails(groupName: $groupName, college: $college)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetGroupDetails &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.college, college) ||
                const DeepCollectionEquality().equals(other.college, college)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(college);

  @JsonKey(ignore: true)
  @override
  _$GetGroupDetailsCopyWith<_GetGroupDetails> get copyWith =>
      __$GetGroupDetailsCopyWithImpl<_GetGroupDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupName, String college) getGroupDetails,
    required TResult Function(String college, String department)
        getDepartmentFaculties,
    required TResult Function(String college, String department)
        getMoreDepartmentFaculties,
    required TResult Function(String college, String groupName) getGroupMembers,
    required TResult Function(String college, String groupName)
        getMoreGroupMembers,
    required TResult Function(String group, String department, String college,
            String degree, String year)
        getDepartmentStudentsGroupWise,
    required TResult Function(String group, String department, String college,
            String degree, String year)
        getMoreDepartmentStudentsGroupWise,
    required TResult Function(String userCollege, GroupModel model, bool isEdit,
            String? earlierName, File? backgroundImageFile, File? logoFile)
        addGroupDetails,
    required TResult Function(String userCollege, GroupModel model)
        deleteGroupDetails,
  }) {
    return getGroupDetails(groupName, college);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupName, String college)? getGroupDetails,
    TResult Function(String college, String department)? getDepartmentFaculties,
    TResult Function(String college, String department)?
        getMoreDepartmentFaculties,
    TResult Function(String college, String groupName)? getGroupMembers,
    TResult Function(String college, String groupName)? getMoreGroupMembers,
    TResult Function(String group, String department, String college,
            String degree, String year)?
        getDepartmentStudentsGroupWise,
    TResult Function(String group, String department, String college,
            String degree, String year)?
        getMoreDepartmentStudentsGroupWise,
    TResult Function(String userCollege, GroupModel model, bool isEdit,
            String? earlierName, File? backgroundImageFile, File? logoFile)?
        addGroupDetails,
    TResult Function(String userCollege, GroupModel model)? deleteGroupDetails,
    required TResult orElse(),
  }) {
    if (getGroupDetails != null) {
      return getGroupDetails(groupName, college);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGroupDetails value) getGroupDetails,
    required TResult Function(_GetDepartmentFaculties value)
        getDepartmentFaculties,
    required TResult Function(_GetMoreDepartmentFaculties value)
        getMoreDepartmentFaculties,
    required TResult Function(_GetGroupMembers value) getGroupMembers,
    required TResult Function(_GetMoreGroupMembers value) getMoreGroupMembers,
    required TResult Function(_GetDepartmentStudentsGroupWise value)
        getDepartmentStudentsGroupWise,
    required TResult Function(_GetMoreDepartmentStudentsGroupWise value)
        getMoreDepartmentStudentsGroupWise,
    required TResult Function(_AddGroupDetails value) addGroupDetails,
    required TResult Function(_DeleteGroupDetails value) deleteGroupDetails,
  }) {
    return getGroupDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGroupDetails value)? getGroupDetails,
    TResult Function(_GetDepartmentFaculties value)? getDepartmentFaculties,
    TResult Function(_GetMoreDepartmentFaculties value)?
        getMoreDepartmentFaculties,
    TResult Function(_GetGroupMembers value)? getGroupMembers,
    TResult Function(_GetMoreGroupMembers value)? getMoreGroupMembers,
    TResult Function(_GetDepartmentStudentsGroupWise value)?
        getDepartmentStudentsGroupWise,
    TResult Function(_GetMoreDepartmentStudentsGroupWise value)?
        getMoreDepartmentStudentsGroupWise,
    TResult Function(_AddGroupDetails value)? addGroupDetails,
    TResult Function(_DeleteGroupDetails value)? deleteGroupDetails,
    required TResult orElse(),
  }) {
    if (getGroupDetails != null) {
      return getGroupDetails(this);
    }
    return orElse();
  }
}

abstract class _GetGroupDetails implements CollegeGroupsEvent {
  const factory _GetGroupDetails(
      {required String groupName,
      required String college}) = _$_GetGroupDetails;

  String get groupName => throw _privateConstructorUsedError;
  String get college => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetGroupDetailsCopyWith<_GetGroupDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetDepartmentFacultiesCopyWith<$Res> {
  factory _$GetDepartmentFacultiesCopyWith(_GetDepartmentFaculties value,
          $Res Function(_GetDepartmentFaculties) then) =
      __$GetDepartmentFacultiesCopyWithImpl<$Res>;
  $Res call({String college, String department});
}

/// @nodoc
class __$GetDepartmentFacultiesCopyWithImpl<$Res>
    extends _$CollegeGroupsEventCopyWithImpl<$Res>
    implements _$GetDepartmentFacultiesCopyWith<$Res> {
  __$GetDepartmentFacultiesCopyWithImpl(_GetDepartmentFaculties _value,
      $Res Function(_GetDepartmentFaculties) _then)
      : super(_value, (v) => _then(v as _GetDepartmentFaculties));

  @override
  _GetDepartmentFaculties get _value => super._value as _GetDepartmentFaculties;

  @override
  $Res call({
    Object? college = freezed,
    Object? department = freezed,
  }) {
    return _then(_GetDepartmentFaculties(
      college: college == freezed
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String,
      department: department == freezed
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetDepartmentFaculties implements _GetDepartmentFaculties {
  const _$_GetDepartmentFaculties(
      {required this.college, required this.department});

  @override
  final String college;
  @override
  final String department;

  @override
  String toString() {
    return 'CollegeGroupsEvent.getDepartmentFaculties(college: $college, department: $department)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetDepartmentFaculties &&
            (identical(other.college, college) ||
                const DeepCollectionEquality()
                    .equals(other.college, college)) &&
            (identical(other.department, department) ||
                const DeepCollectionEquality()
                    .equals(other.department, department)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(college) ^
      const DeepCollectionEquality().hash(department);

  @JsonKey(ignore: true)
  @override
  _$GetDepartmentFacultiesCopyWith<_GetDepartmentFaculties> get copyWith =>
      __$GetDepartmentFacultiesCopyWithImpl<_GetDepartmentFaculties>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupName, String college) getGroupDetails,
    required TResult Function(String college, String department)
        getDepartmentFaculties,
    required TResult Function(String college, String department)
        getMoreDepartmentFaculties,
    required TResult Function(String college, String groupName) getGroupMembers,
    required TResult Function(String college, String groupName)
        getMoreGroupMembers,
    required TResult Function(String group, String department, String college,
            String degree, String year)
        getDepartmentStudentsGroupWise,
    required TResult Function(String group, String department, String college,
            String degree, String year)
        getMoreDepartmentStudentsGroupWise,
    required TResult Function(String userCollege, GroupModel model, bool isEdit,
            String? earlierName, File? backgroundImageFile, File? logoFile)
        addGroupDetails,
    required TResult Function(String userCollege, GroupModel model)
        deleteGroupDetails,
  }) {
    return getDepartmentFaculties(college, department);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupName, String college)? getGroupDetails,
    TResult Function(String college, String department)? getDepartmentFaculties,
    TResult Function(String college, String department)?
        getMoreDepartmentFaculties,
    TResult Function(String college, String groupName)? getGroupMembers,
    TResult Function(String college, String groupName)? getMoreGroupMembers,
    TResult Function(String group, String department, String college,
            String degree, String year)?
        getDepartmentStudentsGroupWise,
    TResult Function(String group, String department, String college,
            String degree, String year)?
        getMoreDepartmentStudentsGroupWise,
    TResult Function(String userCollege, GroupModel model, bool isEdit,
            String? earlierName, File? backgroundImageFile, File? logoFile)?
        addGroupDetails,
    TResult Function(String userCollege, GroupModel model)? deleteGroupDetails,
    required TResult orElse(),
  }) {
    if (getDepartmentFaculties != null) {
      return getDepartmentFaculties(college, department);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGroupDetails value) getGroupDetails,
    required TResult Function(_GetDepartmentFaculties value)
        getDepartmentFaculties,
    required TResult Function(_GetMoreDepartmentFaculties value)
        getMoreDepartmentFaculties,
    required TResult Function(_GetGroupMembers value) getGroupMembers,
    required TResult Function(_GetMoreGroupMembers value) getMoreGroupMembers,
    required TResult Function(_GetDepartmentStudentsGroupWise value)
        getDepartmentStudentsGroupWise,
    required TResult Function(_GetMoreDepartmentStudentsGroupWise value)
        getMoreDepartmentStudentsGroupWise,
    required TResult Function(_AddGroupDetails value) addGroupDetails,
    required TResult Function(_DeleteGroupDetails value) deleteGroupDetails,
  }) {
    return getDepartmentFaculties(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGroupDetails value)? getGroupDetails,
    TResult Function(_GetDepartmentFaculties value)? getDepartmentFaculties,
    TResult Function(_GetMoreDepartmentFaculties value)?
        getMoreDepartmentFaculties,
    TResult Function(_GetGroupMembers value)? getGroupMembers,
    TResult Function(_GetMoreGroupMembers value)? getMoreGroupMembers,
    TResult Function(_GetDepartmentStudentsGroupWise value)?
        getDepartmentStudentsGroupWise,
    TResult Function(_GetMoreDepartmentStudentsGroupWise value)?
        getMoreDepartmentStudentsGroupWise,
    TResult Function(_AddGroupDetails value)? addGroupDetails,
    TResult Function(_DeleteGroupDetails value)? deleteGroupDetails,
    required TResult orElse(),
  }) {
    if (getDepartmentFaculties != null) {
      return getDepartmentFaculties(this);
    }
    return orElse();
  }
}

abstract class _GetDepartmentFaculties implements CollegeGroupsEvent {
  const factory _GetDepartmentFaculties(
      {required String college,
      required String department}) = _$_GetDepartmentFaculties;

  String get college => throw _privateConstructorUsedError;
  String get department => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetDepartmentFacultiesCopyWith<_GetDepartmentFaculties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetMoreDepartmentFacultiesCopyWith<$Res> {
  factory _$GetMoreDepartmentFacultiesCopyWith(
          _GetMoreDepartmentFaculties value,
          $Res Function(_GetMoreDepartmentFaculties) then) =
      __$GetMoreDepartmentFacultiesCopyWithImpl<$Res>;
  $Res call({String college, String department});
}

/// @nodoc
class __$GetMoreDepartmentFacultiesCopyWithImpl<$Res>
    extends _$CollegeGroupsEventCopyWithImpl<$Res>
    implements _$GetMoreDepartmentFacultiesCopyWith<$Res> {
  __$GetMoreDepartmentFacultiesCopyWithImpl(_GetMoreDepartmentFaculties _value,
      $Res Function(_GetMoreDepartmentFaculties) _then)
      : super(_value, (v) => _then(v as _GetMoreDepartmentFaculties));

  @override
  _GetMoreDepartmentFaculties get _value =>
      super._value as _GetMoreDepartmentFaculties;

  @override
  $Res call({
    Object? college = freezed,
    Object? department = freezed,
  }) {
    return _then(_GetMoreDepartmentFaculties(
      college: college == freezed
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String,
      department: department == freezed
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetMoreDepartmentFaculties implements _GetMoreDepartmentFaculties {
  const _$_GetMoreDepartmentFaculties(
      {required this.college, required this.department});

  @override
  final String college;
  @override
  final String department;

  @override
  String toString() {
    return 'CollegeGroupsEvent.getMoreDepartmentFaculties(college: $college, department: $department)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetMoreDepartmentFaculties &&
            (identical(other.college, college) ||
                const DeepCollectionEquality()
                    .equals(other.college, college)) &&
            (identical(other.department, department) ||
                const DeepCollectionEquality()
                    .equals(other.department, department)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(college) ^
      const DeepCollectionEquality().hash(department);

  @JsonKey(ignore: true)
  @override
  _$GetMoreDepartmentFacultiesCopyWith<_GetMoreDepartmentFaculties>
      get copyWith => __$GetMoreDepartmentFacultiesCopyWithImpl<
          _GetMoreDepartmentFaculties>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupName, String college) getGroupDetails,
    required TResult Function(String college, String department)
        getDepartmentFaculties,
    required TResult Function(String college, String department)
        getMoreDepartmentFaculties,
    required TResult Function(String college, String groupName) getGroupMembers,
    required TResult Function(String college, String groupName)
        getMoreGroupMembers,
    required TResult Function(String group, String department, String college,
            String degree, String year)
        getDepartmentStudentsGroupWise,
    required TResult Function(String group, String department, String college,
            String degree, String year)
        getMoreDepartmentStudentsGroupWise,
    required TResult Function(String userCollege, GroupModel model, bool isEdit,
            String? earlierName, File? backgroundImageFile, File? logoFile)
        addGroupDetails,
    required TResult Function(String userCollege, GroupModel model)
        deleteGroupDetails,
  }) {
    return getMoreDepartmentFaculties(college, department);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupName, String college)? getGroupDetails,
    TResult Function(String college, String department)? getDepartmentFaculties,
    TResult Function(String college, String department)?
        getMoreDepartmentFaculties,
    TResult Function(String college, String groupName)? getGroupMembers,
    TResult Function(String college, String groupName)? getMoreGroupMembers,
    TResult Function(String group, String department, String college,
            String degree, String year)?
        getDepartmentStudentsGroupWise,
    TResult Function(String group, String department, String college,
            String degree, String year)?
        getMoreDepartmentStudentsGroupWise,
    TResult Function(String userCollege, GroupModel model, bool isEdit,
            String? earlierName, File? backgroundImageFile, File? logoFile)?
        addGroupDetails,
    TResult Function(String userCollege, GroupModel model)? deleteGroupDetails,
    required TResult orElse(),
  }) {
    if (getMoreDepartmentFaculties != null) {
      return getMoreDepartmentFaculties(college, department);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGroupDetails value) getGroupDetails,
    required TResult Function(_GetDepartmentFaculties value)
        getDepartmentFaculties,
    required TResult Function(_GetMoreDepartmentFaculties value)
        getMoreDepartmentFaculties,
    required TResult Function(_GetGroupMembers value) getGroupMembers,
    required TResult Function(_GetMoreGroupMembers value) getMoreGroupMembers,
    required TResult Function(_GetDepartmentStudentsGroupWise value)
        getDepartmentStudentsGroupWise,
    required TResult Function(_GetMoreDepartmentStudentsGroupWise value)
        getMoreDepartmentStudentsGroupWise,
    required TResult Function(_AddGroupDetails value) addGroupDetails,
    required TResult Function(_DeleteGroupDetails value) deleteGroupDetails,
  }) {
    return getMoreDepartmentFaculties(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGroupDetails value)? getGroupDetails,
    TResult Function(_GetDepartmentFaculties value)? getDepartmentFaculties,
    TResult Function(_GetMoreDepartmentFaculties value)?
        getMoreDepartmentFaculties,
    TResult Function(_GetGroupMembers value)? getGroupMembers,
    TResult Function(_GetMoreGroupMembers value)? getMoreGroupMembers,
    TResult Function(_GetDepartmentStudentsGroupWise value)?
        getDepartmentStudentsGroupWise,
    TResult Function(_GetMoreDepartmentStudentsGroupWise value)?
        getMoreDepartmentStudentsGroupWise,
    TResult Function(_AddGroupDetails value)? addGroupDetails,
    TResult Function(_DeleteGroupDetails value)? deleteGroupDetails,
    required TResult orElse(),
  }) {
    if (getMoreDepartmentFaculties != null) {
      return getMoreDepartmentFaculties(this);
    }
    return orElse();
  }
}

abstract class _GetMoreDepartmentFaculties implements CollegeGroupsEvent {
  const factory _GetMoreDepartmentFaculties(
      {required String college,
      required String department}) = _$_GetMoreDepartmentFaculties;

  String get college => throw _privateConstructorUsedError;
  String get department => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetMoreDepartmentFacultiesCopyWith<_GetMoreDepartmentFaculties>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetGroupMembersCopyWith<$Res> {
  factory _$GetGroupMembersCopyWith(
          _GetGroupMembers value, $Res Function(_GetGroupMembers) then) =
      __$GetGroupMembersCopyWithImpl<$Res>;
  $Res call({String college, String groupName});
}

/// @nodoc
class __$GetGroupMembersCopyWithImpl<$Res>
    extends _$CollegeGroupsEventCopyWithImpl<$Res>
    implements _$GetGroupMembersCopyWith<$Res> {
  __$GetGroupMembersCopyWithImpl(
      _GetGroupMembers _value, $Res Function(_GetGroupMembers) _then)
      : super(_value, (v) => _then(v as _GetGroupMembers));

  @override
  _GetGroupMembers get _value => super._value as _GetGroupMembers;

  @override
  $Res call({
    Object? college = freezed,
    Object? groupName = freezed,
  }) {
    return _then(_GetGroupMembers(
      college: college == freezed
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String,
      groupName: groupName == freezed
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetGroupMembers implements _GetGroupMembers {
  const _$_GetGroupMembers({required this.college, required this.groupName});

  @override
  final String college;
  @override
  final String groupName;

  @override
  String toString() {
    return 'CollegeGroupsEvent.getGroupMembers(college: $college, groupName: $groupName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetGroupMembers &&
            (identical(other.college, college) ||
                const DeepCollectionEquality()
                    .equals(other.college, college)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(college) ^
      const DeepCollectionEquality().hash(groupName);

  @JsonKey(ignore: true)
  @override
  _$GetGroupMembersCopyWith<_GetGroupMembers> get copyWith =>
      __$GetGroupMembersCopyWithImpl<_GetGroupMembers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupName, String college) getGroupDetails,
    required TResult Function(String college, String department)
        getDepartmentFaculties,
    required TResult Function(String college, String department)
        getMoreDepartmentFaculties,
    required TResult Function(String college, String groupName) getGroupMembers,
    required TResult Function(String college, String groupName)
        getMoreGroupMembers,
    required TResult Function(String group, String department, String college,
            String degree, String year)
        getDepartmentStudentsGroupWise,
    required TResult Function(String group, String department, String college,
            String degree, String year)
        getMoreDepartmentStudentsGroupWise,
    required TResult Function(String userCollege, GroupModel model, bool isEdit,
            String? earlierName, File? backgroundImageFile, File? logoFile)
        addGroupDetails,
    required TResult Function(String userCollege, GroupModel model)
        deleteGroupDetails,
  }) {
    return getGroupMembers(college, groupName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupName, String college)? getGroupDetails,
    TResult Function(String college, String department)? getDepartmentFaculties,
    TResult Function(String college, String department)?
        getMoreDepartmentFaculties,
    TResult Function(String college, String groupName)? getGroupMembers,
    TResult Function(String college, String groupName)? getMoreGroupMembers,
    TResult Function(String group, String department, String college,
            String degree, String year)?
        getDepartmentStudentsGroupWise,
    TResult Function(String group, String department, String college,
            String degree, String year)?
        getMoreDepartmentStudentsGroupWise,
    TResult Function(String userCollege, GroupModel model, bool isEdit,
            String? earlierName, File? backgroundImageFile, File? logoFile)?
        addGroupDetails,
    TResult Function(String userCollege, GroupModel model)? deleteGroupDetails,
    required TResult orElse(),
  }) {
    if (getGroupMembers != null) {
      return getGroupMembers(college, groupName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGroupDetails value) getGroupDetails,
    required TResult Function(_GetDepartmentFaculties value)
        getDepartmentFaculties,
    required TResult Function(_GetMoreDepartmentFaculties value)
        getMoreDepartmentFaculties,
    required TResult Function(_GetGroupMembers value) getGroupMembers,
    required TResult Function(_GetMoreGroupMembers value) getMoreGroupMembers,
    required TResult Function(_GetDepartmentStudentsGroupWise value)
        getDepartmentStudentsGroupWise,
    required TResult Function(_GetMoreDepartmentStudentsGroupWise value)
        getMoreDepartmentStudentsGroupWise,
    required TResult Function(_AddGroupDetails value) addGroupDetails,
    required TResult Function(_DeleteGroupDetails value) deleteGroupDetails,
  }) {
    return getGroupMembers(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGroupDetails value)? getGroupDetails,
    TResult Function(_GetDepartmentFaculties value)? getDepartmentFaculties,
    TResult Function(_GetMoreDepartmentFaculties value)?
        getMoreDepartmentFaculties,
    TResult Function(_GetGroupMembers value)? getGroupMembers,
    TResult Function(_GetMoreGroupMembers value)? getMoreGroupMembers,
    TResult Function(_GetDepartmentStudentsGroupWise value)?
        getDepartmentStudentsGroupWise,
    TResult Function(_GetMoreDepartmentStudentsGroupWise value)?
        getMoreDepartmentStudentsGroupWise,
    TResult Function(_AddGroupDetails value)? addGroupDetails,
    TResult Function(_DeleteGroupDetails value)? deleteGroupDetails,
    required TResult orElse(),
  }) {
    if (getGroupMembers != null) {
      return getGroupMembers(this);
    }
    return orElse();
  }
}

abstract class _GetGroupMembers implements CollegeGroupsEvent {
  const factory _GetGroupMembers(
      {required String college,
      required String groupName}) = _$_GetGroupMembers;

  String get college => throw _privateConstructorUsedError;
  String get groupName => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetGroupMembersCopyWith<_GetGroupMembers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetMoreGroupMembersCopyWith<$Res> {
  factory _$GetMoreGroupMembersCopyWith(_GetMoreGroupMembers value,
          $Res Function(_GetMoreGroupMembers) then) =
      __$GetMoreGroupMembersCopyWithImpl<$Res>;
  $Res call({String college, String groupName});
}

/// @nodoc
class __$GetMoreGroupMembersCopyWithImpl<$Res>
    extends _$CollegeGroupsEventCopyWithImpl<$Res>
    implements _$GetMoreGroupMembersCopyWith<$Res> {
  __$GetMoreGroupMembersCopyWithImpl(
      _GetMoreGroupMembers _value, $Res Function(_GetMoreGroupMembers) _then)
      : super(_value, (v) => _then(v as _GetMoreGroupMembers));

  @override
  _GetMoreGroupMembers get _value => super._value as _GetMoreGroupMembers;

  @override
  $Res call({
    Object? college = freezed,
    Object? groupName = freezed,
  }) {
    return _then(_GetMoreGroupMembers(
      college: college == freezed
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String,
      groupName: groupName == freezed
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetMoreGroupMembers implements _GetMoreGroupMembers {
  const _$_GetMoreGroupMembers(
      {required this.college, required this.groupName});

  @override
  final String college;
  @override
  final String groupName;

  @override
  String toString() {
    return 'CollegeGroupsEvent.getMoreGroupMembers(college: $college, groupName: $groupName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetMoreGroupMembers &&
            (identical(other.college, college) ||
                const DeepCollectionEquality()
                    .equals(other.college, college)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(college) ^
      const DeepCollectionEquality().hash(groupName);

  @JsonKey(ignore: true)
  @override
  _$GetMoreGroupMembersCopyWith<_GetMoreGroupMembers> get copyWith =>
      __$GetMoreGroupMembersCopyWithImpl<_GetMoreGroupMembers>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupName, String college) getGroupDetails,
    required TResult Function(String college, String department)
        getDepartmentFaculties,
    required TResult Function(String college, String department)
        getMoreDepartmentFaculties,
    required TResult Function(String college, String groupName) getGroupMembers,
    required TResult Function(String college, String groupName)
        getMoreGroupMembers,
    required TResult Function(String group, String department, String college,
            String degree, String year)
        getDepartmentStudentsGroupWise,
    required TResult Function(String group, String department, String college,
            String degree, String year)
        getMoreDepartmentStudentsGroupWise,
    required TResult Function(String userCollege, GroupModel model, bool isEdit,
            String? earlierName, File? backgroundImageFile, File? logoFile)
        addGroupDetails,
    required TResult Function(String userCollege, GroupModel model)
        deleteGroupDetails,
  }) {
    return getMoreGroupMembers(college, groupName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupName, String college)? getGroupDetails,
    TResult Function(String college, String department)? getDepartmentFaculties,
    TResult Function(String college, String department)?
        getMoreDepartmentFaculties,
    TResult Function(String college, String groupName)? getGroupMembers,
    TResult Function(String college, String groupName)? getMoreGroupMembers,
    TResult Function(String group, String department, String college,
            String degree, String year)?
        getDepartmentStudentsGroupWise,
    TResult Function(String group, String department, String college,
            String degree, String year)?
        getMoreDepartmentStudentsGroupWise,
    TResult Function(String userCollege, GroupModel model, bool isEdit,
            String? earlierName, File? backgroundImageFile, File? logoFile)?
        addGroupDetails,
    TResult Function(String userCollege, GroupModel model)? deleteGroupDetails,
    required TResult orElse(),
  }) {
    if (getMoreGroupMembers != null) {
      return getMoreGroupMembers(college, groupName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGroupDetails value) getGroupDetails,
    required TResult Function(_GetDepartmentFaculties value)
        getDepartmentFaculties,
    required TResult Function(_GetMoreDepartmentFaculties value)
        getMoreDepartmentFaculties,
    required TResult Function(_GetGroupMembers value) getGroupMembers,
    required TResult Function(_GetMoreGroupMembers value) getMoreGroupMembers,
    required TResult Function(_GetDepartmentStudentsGroupWise value)
        getDepartmentStudentsGroupWise,
    required TResult Function(_GetMoreDepartmentStudentsGroupWise value)
        getMoreDepartmentStudentsGroupWise,
    required TResult Function(_AddGroupDetails value) addGroupDetails,
    required TResult Function(_DeleteGroupDetails value) deleteGroupDetails,
  }) {
    return getMoreGroupMembers(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGroupDetails value)? getGroupDetails,
    TResult Function(_GetDepartmentFaculties value)? getDepartmentFaculties,
    TResult Function(_GetMoreDepartmentFaculties value)?
        getMoreDepartmentFaculties,
    TResult Function(_GetGroupMembers value)? getGroupMembers,
    TResult Function(_GetMoreGroupMembers value)? getMoreGroupMembers,
    TResult Function(_GetDepartmentStudentsGroupWise value)?
        getDepartmentStudentsGroupWise,
    TResult Function(_GetMoreDepartmentStudentsGroupWise value)?
        getMoreDepartmentStudentsGroupWise,
    TResult Function(_AddGroupDetails value)? addGroupDetails,
    TResult Function(_DeleteGroupDetails value)? deleteGroupDetails,
    required TResult orElse(),
  }) {
    if (getMoreGroupMembers != null) {
      return getMoreGroupMembers(this);
    }
    return orElse();
  }
}

abstract class _GetMoreGroupMembers implements CollegeGroupsEvent {
  const factory _GetMoreGroupMembers(
      {required String college,
      required String groupName}) = _$_GetMoreGroupMembers;

  String get college => throw _privateConstructorUsedError;
  String get groupName => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetMoreGroupMembersCopyWith<_GetMoreGroupMembers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetDepartmentStudentsGroupWiseCopyWith<$Res> {
  factory _$GetDepartmentStudentsGroupWiseCopyWith(
          _GetDepartmentStudentsGroupWise value,
          $Res Function(_GetDepartmentStudentsGroupWise) then) =
      __$GetDepartmentStudentsGroupWiseCopyWithImpl<$Res>;
  $Res call(
      {String group,
      String department,
      String college,
      String degree,
      String year});
}

/// @nodoc
class __$GetDepartmentStudentsGroupWiseCopyWithImpl<$Res>
    extends _$CollegeGroupsEventCopyWithImpl<$Res>
    implements _$GetDepartmentStudentsGroupWiseCopyWith<$Res> {
  __$GetDepartmentStudentsGroupWiseCopyWithImpl(
      _GetDepartmentStudentsGroupWise _value,
      $Res Function(_GetDepartmentStudentsGroupWise) _then)
      : super(_value, (v) => _then(v as _GetDepartmentStudentsGroupWise));

  @override
  _GetDepartmentStudentsGroupWise get _value =>
      super._value as _GetDepartmentStudentsGroupWise;

  @override
  $Res call({
    Object? group = freezed,
    Object? department = freezed,
    Object? college = freezed,
    Object? degree = freezed,
    Object? year = freezed,
  }) {
    return _then(_GetDepartmentStudentsGroupWise(
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
      department: department == freezed
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
      college: college == freezed
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String,
      degree: degree == freezed
          ? _value.degree
          : degree // ignore: cast_nullable_to_non_nullable
              as String,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetDepartmentStudentsGroupWise
    implements _GetDepartmentStudentsGroupWise {
  const _$_GetDepartmentStudentsGroupWise(
      {required this.group,
      required this.department,
      required this.college,
      required this.degree,
      required this.year});

  @override
  final String group;
  @override
  final String department;
  @override
  final String college;
  @override
  final String degree;
  @override
  final String year;

  @override
  String toString() {
    return 'CollegeGroupsEvent.getDepartmentStudentsGroupWise(group: $group, department: $department, college: $college, degree: $degree, year: $year)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetDepartmentStudentsGroupWise &&
            (identical(other.group, group) ||
                const DeepCollectionEquality().equals(other.group, group)) &&
            (identical(other.department, department) ||
                const DeepCollectionEquality()
                    .equals(other.department, department)) &&
            (identical(other.college, college) ||
                const DeepCollectionEquality()
                    .equals(other.college, college)) &&
            (identical(other.degree, degree) ||
                const DeepCollectionEquality().equals(other.degree, degree)) &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(group) ^
      const DeepCollectionEquality().hash(department) ^
      const DeepCollectionEquality().hash(college) ^
      const DeepCollectionEquality().hash(degree) ^
      const DeepCollectionEquality().hash(year);

  @JsonKey(ignore: true)
  @override
  _$GetDepartmentStudentsGroupWiseCopyWith<_GetDepartmentStudentsGroupWise>
      get copyWith => __$GetDepartmentStudentsGroupWiseCopyWithImpl<
          _GetDepartmentStudentsGroupWise>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupName, String college) getGroupDetails,
    required TResult Function(String college, String department)
        getDepartmentFaculties,
    required TResult Function(String college, String department)
        getMoreDepartmentFaculties,
    required TResult Function(String college, String groupName) getGroupMembers,
    required TResult Function(String college, String groupName)
        getMoreGroupMembers,
    required TResult Function(String group, String department, String college,
            String degree, String year)
        getDepartmentStudentsGroupWise,
    required TResult Function(String group, String department, String college,
            String degree, String year)
        getMoreDepartmentStudentsGroupWise,
    required TResult Function(String userCollege, GroupModel model, bool isEdit,
            String? earlierName, File? backgroundImageFile, File? logoFile)
        addGroupDetails,
    required TResult Function(String userCollege, GroupModel model)
        deleteGroupDetails,
  }) {
    return getDepartmentStudentsGroupWise(
        group, department, college, degree, year);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupName, String college)? getGroupDetails,
    TResult Function(String college, String department)? getDepartmentFaculties,
    TResult Function(String college, String department)?
        getMoreDepartmentFaculties,
    TResult Function(String college, String groupName)? getGroupMembers,
    TResult Function(String college, String groupName)? getMoreGroupMembers,
    TResult Function(String group, String department, String college,
            String degree, String year)?
        getDepartmentStudentsGroupWise,
    TResult Function(String group, String department, String college,
            String degree, String year)?
        getMoreDepartmentStudentsGroupWise,
    TResult Function(String userCollege, GroupModel model, bool isEdit,
            String? earlierName, File? backgroundImageFile, File? logoFile)?
        addGroupDetails,
    TResult Function(String userCollege, GroupModel model)? deleteGroupDetails,
    required TResult orElse(),
  }) {
    if (getDepartmentStudentsGroupWise != null) {
      return getDepartmentStudentsGroupWise(
          group, department, college, degree, year);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGroupDetails value) getGroupDetails,
    required TResult Function(_GetDepartmentFaculties value)
        getDepartmentFaculties,
    required TResult Function(_GetMoreDepartmentFaculties value)
        getMoreDepartmentFaculties,
    required TResult Function(_GetGroupMembers value) getGroupMembers,
    required TResult Function(_GetMoreGroupMembers value) getMoreGroupMembers,
    required TResult Function(_GetDepartmentStudentsGroupWise value)
        getDepartmentStudentsGroupWise,
    required TResult Function(_GetMoreDepartmentStudentsGroupWise value)
        getMoreDepartmentStudentsGroupWise,
    required TResult Function(_AddGroupDetails value) addGroupDetails,
    required TResult Function(_DeleteGroupDetails value) deleteGroupDetails,
  }) {
    return getDepartmentStudentsGroupWise(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGroupDetails value)? getGroupDetails,
    TResult Function(_GetDepartmentFaculties value)? getDepartmentFaculties,
    TResult Function(_GetMoreDepartmentFaculties value)?
        getMoreDepartmentFaculties,
    TResult Function(_GetGroupMembers value)? getGroupMembers,
    TResult Function(_GetMoreGroupMembers value)? getMoreGroupMembers,
    TResult Function(_GetDepartmentStudentsGroupWise value)?
        getDepartmentStudentsGroupWise,
    TResult Function(_GetMoreDepartmentStudentsGroupWise value)?
        getMoreDepartmentStudentsGroupWise,
    TResult Function(_AddGroupDetails value)? addGroupDetails,
    TResult Function(_DeleteGroupDetails value)? deleteGroupDetails,
    required TResult orElse(),
  }) {
    if (getDepartmentStudentsGroupWise != null) {
      return getDepartmentStudentsGroupWise(this);
    }
    return orElse();
  }
}

abstract class _GetDepartmentStudentsGroupWise implements CollegeGroupsEvent {
  const factory _GetDepartmentStudentsGroupWise(
      {required String group,
      required String department,
      required String college,
      required String degree,
      required String year}) = _$_GetDepartmentStudentsGroupWise;

  String get group => throw _privateConstructorUsedError;
  String get department => throw _privateConstructorUsedError;
  String get college => throw _privateConstructorUsedError;
  String get degree => throw _privateConstructorUsedError;
  String get year => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetDepartmentStudentsGroupWiseCopyWith<_GetDepartmentStudentsGroupWise>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetMoreDepartmentStudentsGroupWiseCopyWith<$Res> {
  factory _$GetMoreDepartmentStudentsGroupWiseCopyWith(
          _GetMoreDepartmentStudentsGroupWise value,
          $Res Function(_GetMoreDepartmentStudentsGroupWise) then) =
      __$GetMoreDepartmentStudentsGroupWiseCopyWithImpl<$Res>;
  $Res call(
      {String group,
      String department,
      String college,
      String degree,
      String year});
}

/// @nodoc
class __$GetMoreDepartmentStudentsGroupWiseCopyWithImpl<$Res>
    extends _$CollegeGroupsEventCopyWithImpl<$Res>
    implements _$GetMoreDepartmentStudentsGroupWiseCopyWith<$Res> {
  __$GetMoreDepartmentStudentsGroupWiseCopyWithImpl(
      _GetMoreDepartmentStudentsGroupWise _value,
      $Res Function(_GetMoreDepartmentStudentsGroupWise) _then)
      : super(_value, (v) => _then(v as _GetMoreDepartmentStudentsGroupWise));

  @override
  _GetMoreDepartmentStudentsGroupWise get _value =>
      super._value as _GetMoreDepartmentStudentsGroupWise;

  @override
  $Res call({
    Object? group = freezed,
    Object? department = freezed,
    Object? college = freezed,
    Object? degree = freezed,
    Object? year = freezed,
  }) {
    return _then(_GetMoreDepartmentStudentsGroupWise(
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
      department: department == freezed
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
      college: college == freezed
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String,
      degree: degree == freezed
          ? _value.degree
          : degree // ignore: cast_nullable_to_non_nullable
              as String,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetMoreDepartmentStudentsGroupWise
    implements _GetMoreDepartmentStudentsGroupWise {
  const _$_GetMoreDepartmentStudentsGroupWise(
      {required this.group,
      required this.department,
      required this.college,
      required this.degree,
      required this.year});

  @override
  final String group;
  @override
  final String department;
  @override
  final String college;
  @override
  final String degree;
  @override
  final String year;

  @override
  String toString() {
    return 'CollegeGroupsEvent.getMoreDepartmentStudentsGroupWise(group: $group, department: $department, college: $college, degree: $degree, year: $year)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetMoreDepartmentStudentsGroupWise &&
            (identical(other.group, group) ||
                const DeepCollectionEquality().equals(other.group, group)) &&
            (identical(other.department, department) ||
                const DeepCollectionEquality()
                    .equals(other.department, department)) &&
            (identical(other.college, college) ||
                const DeepCollectionEquality()
                    .equals(other.college, college)) &&
            (identical(other.degree, degree) ||
                const DeepCollectionEquality().equals(other.degree, degree)) &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(group) ^
      const DeepCollectionEquality().hash(department) ^
      const DeepCollectionEquality().hash(college) ^
      const DeepCollectionEquality().hash(degree) ^
      const DeepCollectionEquality().hash(year);

  @JsonKey(ignore: true)
  @override
  _$GetMoreDepartmentStudentsGroupWiseCopyWith<
          _GetMoreDepartmentStudentsGroupWise>
      get copyWith => __$GetMoreDepartmentStudentsGroupWiseCopyWithImpl<
          _GetMoreDepartmentStudentsGroupWise>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupName, String college) getGroupDetails,
    required TResult Function(String college, String department)
        getDepartmentFaculties,
    required TResult Function(String college, String department)
        getMoreDepartmentFaculties,
    required TResult Function(String college, String groupName) getGroupMembers,
    required TResult Function(String college, String groupName)
        getMoreGroupMembers,
    required TResult Function(String group, String department, String college,
            String degree, String year)
        getDepartmentStudentsGroupWise,
    required TResult Function(String group, String department, String college,
            String degree, String year)
        getMoreDepartmentStudentsGroupWise,
    required TResult Function(String userCollege, GroupModel model, bool isEdit,
            String? earlierName, File? backgroundImageFile, File? logoFile)
        addGroupDetails,
    required TResult Function(String userCollege, GroupModel model)
        deleteGroupDetails,
  }) {
    return getMoreDepartmentStudentsGroupWise(
        group, department, college, degree, year);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupName, String college)? getGroupDetails,
    TResult Function(String college, String department)? getDepartmentFaculties,
    TResult Function(String college, String department)?
        getMoreDepartmentFaculties,
    TResult Function(String college, String groupName)? getGroupMembers,
    TResult Function(String college, String groupName)? getMoreGroupMembers,
    TResult Function(String group, String department, String college,
            String degree, String year)?
        getDepartmentStudentsGroupWise,
    TResult Function(String group, String department, String college,
            String degree, String year)?
        getMoreDepartmentStudentsGroupWise,
    TResult Function(String userCollege, GroupModel model, bool isEdit,
            String? earlierName, File? backgroundImageFile, File? logoFile)?
        addGroupDetails,
    TResult Function(String userCollege, GroupModel model)? deleteGroupDetails,
    required TResult orElse(),
  }) {
    if (getMoreDepartmentStudentsGroupWise != null) {
      return getMoreDepartmentStudentsGroupWise(
          group, department, college, degree, year);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGroupDetails value) getGroupDetails,
    required TResult Function(_GetDepartmentFaculties value)
        getDepartmentFaculties,
    required TResult Function(_GetMoreDepartmentFaculties value)
        getMoreDepartmentFaculties,
    required TResult Function(_GetGroupMembers value) getGroupMembers,
    required TResult Function(_GetMoreGroupMembers value) getMoreGroupMembers,
    required TResult Function(_GetDepartmentStudentsGroupWise value)
        getDepartmentStudentsGroupWise,
    required TResult Function(_GetMoreDepartmentStudentsGroupWise value)
        getMoreDepartmentStudentsGroupWise,
    required TResult Function(_AddGroupDetails value) addGroupDetails,
    required TResult Function(_DeleteGroupDetails value) deleteGroupDetails,
  }) {
    return getMoreDepartmentStudentsGroupWise(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGroupDetails value)? getGroupDetails,
    TResult Function(_GetDepartmentFaculties value)? getDepartmentFaculties,
    TResult Function(_GetMoreDepartmentFaculties value)?
        getMoreDepartmentFaculties,
    TResult Function(_GetGroupMembers value)? getGroupMembers,
    TResult Function(_GetMoreGroupMembers value)? getMoreGroupMembers,
    TResult Function(_GetDepartmentStudentsGroupWise value)?
        getDepartmentStudentsGroupWise,
    TResult Function(_GetMoreDepartmentStudentsGroupWise value)?
        getMoreDepartmentStudentsGroupWise,
    TResult Function(_AddGroupDetails value)? addGroupDetails,
    TResult Function(_DeleteGroupDetails value)? deleteGroupDetails,
    required TResult orElse(),
  }) {
    if (getMoreDepartmentStudentsGroupWise != null) {
      return getMoreDepartmentStudentsGroupWise(this);
    }
    return orElse();
  }
}

abstract class _GetMoreDepartmentStudentsGroupWise
    implements CollegeGroupsEvent {
  const factory _GetMoreDepartmentStudentsGroupWise(
      {required String group,
      required String department,
      required String college,
      required String degree,
      required String year}) = _$_GetMoreDepartmentStudentsGroupWise;

  String get group => throw _privateConstructorUsedError;
  String get department => throw _privateConstructorUsedError;
  String get college => throw _privateConstructorUsedError;
  String get degree => throw _privateConstructorUsedError;
  String get year => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetMoreDepartmentStudentsGroupWiseCopyWith<
          _GetMoreDepartmentStudentsGroupWise>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddGroupDetailsCopyWith<$Res> {
  factory _$AddGroupDetailsCopyWith(
          _AddGroupDetails value, $Res Function(_AddGroupDetails) then) =
      __$AddGroupDetailsCopyWithImpl<$Res>;
  $Res call(
      {String userCollege,
      GroupModel model,
      bool isEdit,
      String? earlierName,
      File? backgroundImageFile,
      File? logoFile});
}

/// @nodoc
class __$AddGroupDetailsCopyWithImpl<$Res>
    extends _$CollegeGroupsEventCopyWithImpl<$Res>
    implements _$AddGroupDetailsCopyWith<$Res> {
  __$AddGroupDetailsCopyWithImpl(
      _AddGroupDetails _value, $Res Function(_AddGroupDetails) _then)
      : super(_value, (v) => _then(v as _AddGroupDetails));

  @override
  _AddGroupDetails get _value => super._value as _AddGroupDetails;

  @override
  $Res call({
    Object? userCollege = freezed,
    Object? model = freezed,
    Object? isEdit = freezed,
    Object? earlierName = freezed,
    Object? backgroundImageFile = freezed,
    Object? logoFile = freezed,
  }) {
    return _then(_AddGroupDetails(
      userCollege: userCollege == freezed
          ? _value.userCollege
          : userCollege // ignore: cast_nullable_to_non_nullable
              as String,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as GroupModel,
      isEdit: isEdit == freezed
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool,
      earlierName: earlierName == freezed
          ? _value.earlierName
          : earlierName // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundImageFile: backgroundImageFile == freezed
          ? _value.backgroundImageFile
          : backgroundImageFile // ignore: cast_nullable_to_non_nullable
              as File?,
      logoFile: logoFile == freezed
          ? _value.logoFile
          : logoFile // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$_AddGroupDetails implements _AddGroupDetails {
  const _$_AddGroupDetails(
      {required this.userCollege,
      required this.model,
      required this.isEdit,
      this.earlierName,
      this.backgroundImageFile,
      this.logoFile});

  @override
  final String userCollege;
  @override
  final GroupModel model;
  @override
  final bool isEdit;
  @override //need to delete in case of name change
  final String? earlierName;
  @override
  final File? backgroundImageFile;
  @override
  final File? logoFile;

  @override
  String toString() {
    return 'CollegeGroupsEvent.addGroupDetails(userCollege: $userCollege, model: $model, isEdit: $isEdit, earlierName: $earlierName, backgroundImageFile: $backgroundImageFile, logoFile: $logoFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddGroupDetails &&
            (identical(other.userCollege, userCollege) ||
                const DeepCollectionEquality()
                    .equals(other.userCollege, userCollege)) &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)) &&
            (identical(other.isEdit, isEdit) ||
                const DeepCollectionEquality().equals(other.isEdit, isEdit)) &&
            (identical(other.earlierName, earlierName) ||
                const DeepCollectionEquality()
                    .equals(other.earlierName, earlierName)) &&
            (identical(other.backgroundImageFile, backgroundImageFile) ||
                const DeepCollectionEquality()
                    .equals(other.backgroundImageFile, backgroundImageFile)) &&
            (identical(other.logoFile, logoFile) ||
                const DeepCollectionEquality()
                    .equals(other.logoFile, logoFile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userCollege) ^
      const DeepCollectionEquality().hash(model) ^
      const DeepCollectionEquality().hash(isEdit) ^
      const DeepCollectionEquality().hash(earlierName) ^
      const DeepCollectionEquality().hash(backgroundImageFile) ^
      const DeepCollectionEquality().hash(logoFile);

  @JsonKey(ignore: true)
  @override
  _$AddGroupDetailsCopyWith<_AddGroupDetails> get copyWith =>
      __$AddGroupDetailsCopyWithImpl<_AddGroupDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupName, String college) getGroupDetails,
    required TResult Function(String college, String department)
        getDepartmentFaculties,
    required TResult Function(String college, String department)
        getMoreDepartmentFaculties,
    required TResult Function(String college, String groupName) getGroupMembers,
    required TResult Function(String college, String groupName)
        getMoreGroupMembers,
    required TResult Function(String group, String department, String college,
            String degree, String year)
        getDepartmentStudentsGroupWise,
    required TResult Function(String group, String department, String college,
            String degree, String year)
        getMoreDepartmentStudentsGroupWise,
    required TResult Function(String userCollege, GroupModel model, bool isEdit,
            String? earlierName, File? backgroundImageFile, File? logoFile)
        addGroupDetails,
    required TResult Function(String userCollege, GroupModel model)
        deleteGroupDetails,
  }) {
    return addGroupDetails(
        userCollege, model, isEdit, earlierName, backgroundImageFile, logoFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupName, String college)? getGroupDetails,
    TResult Function(String college, String department)? getDepartmentFaculties,
    TResult Function(String college, String department)?
        getMoreDepartmentFaculties,
    TResult Function(String college, String groupName)? getGroupMembers,
    TResult Function(String college, String groupName)? getMoreGroupMembers,
    TResult Function(String group, String department, String college,
            String degree, String year)?
        getDepartmentStudentsGroupWise,
    TResult Function(String group, String department, String college,
            String degree, String year)?
        getMoreDepartmentStudentsGroupWise,
    TResult Function(String userCollege, GroupModel model, bool isEdit,
            String? earlierName, File? backgroundImageFile, File? logoFile)?
        addGroupDetails,
    TResult Function(String userCollege, GroupModel model)? deleteGroupDetails,
    required TResult orElse(),
  }) {
    if (addGroupDetails != null) {
      return addGroupDetails(userCollege, model, isEdit, earlierName,
          backgroundImageFile, logoFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGroupDetails value) getGroupDetails,
    required TResult Function(_GetDepartmentFaculties value)
        getDepartmentFaculties,
    required TResult Function(_GetMoreDepartmentFaculties value)
        getMoreDepartmentFaculties,
    required TResult Function(_GetGroupMembers value) getGroupMembers,
    required TResult Function(_GetMoreGroupMembers value) getMoreGroupMembers,
    required TResult Function(_GetDepartmentStudentsGroupWise value)
        getDepartmentStudentsGroupWise,
    required TResult Function(_GetMoreDepartmentStudentsGroupWise value)
        getMoreDepartmentStudentsGroupWise,
    required TResult Function(_AddGroupDetails value) addGroupDetails,
    required TResult Function(_DeleteGroupDetails value) deleteGroupDetails,
  }) {
    return addGroupDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGroupDetails value)? getGroupDetails,
    TResult Function(_GetDepartmentFaculties value)? getDepartmentFaculties,
    TResult Function(_GetMoreDepartmentFaculties value)?
        getMoreDepartmentFaculties,
    TResult Function(_GetGroupMembers value)? getGroupMembers,
    TResult Function(_GetMoreGroupMembers value)? getMoreGroupMembers,
    TResult Function(_GetDepartmentStudentsGroupWise value)?
        getDepartmentStudentsGroupWise,
    TResult Function(_GetMoreDepartmentStudentsGroupWise value)?
        getMoreDepartmentStudentsGroupWise,
    TResult Function(_AddGroupDetails value)? addGroupDetails,
    TResult Function(_DeleteGroupDetails value)? deleteGroupDetails,
    required TResult orElse(),
  }) {
    if (addGroupDetails != null) {
      return addGroupDetails(this);
    }
    return orElse();
  }
}

abstract class _AddGroupDetails implements CollegeGroupsEvent {
  const factory _AddGroupDetails(
      {required String userCollege,
      required GroupModel model,
      required bool isEdit,
      String? earlierName,
      File? backgroundImageFile,
      File? logoFile}) = _$_AddGroupDetails;

  String get userCollege => throw _privateConstructorUsedError;
  GroupModel get model => throw _privateConstructorUsedError;
  bool get isEdit =>
      throw _privateConstructorUsedError; //need to delete in case of name change
  String? get earlierName => throw _privateConstructorUsedError;
  File? get backgroundImageFile => throw _privateConstructorUsedError;
  File? get logoFile => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddGroupDetailsCopyWith<_AddGroupDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteGroupDetailsCopyWith<$Res> {
  factory _$DeleteGroupDetailsCopyWith(
          _DeleteGroupDetails value, $Res Function(_DeleteGroupDetails) then) =
      __$DeleteGroupDetailsCopyWithImpl<$Res>;
  $Res call({String userCollege, GroupModel model});
}

/// @nodoc
class __$DeleteGroupDetailsCopyWithImpl<$Res>
    extends _$CollegeGroupsEventCopyWithImpl<$Res>
    implements _$DeleteGroupDetailsCopyWith<$Res> {
  __$DeleteGroupDetailsCopyWithImpl(
      _DeleteGroupDetails _value, $Res Function(_DeleteGroupDetails) _then)
      : super(_value, (v) => _then(v as _DeleteGroupDetails));

  @override
  _DeleteGroupDetails get _value => super._value as _DeleteGroupDetails;

  @override
  $Res call({
    Object? userCollege = freezed,
    Object? model = freezed,
  }) {
    return _then(_DeleteGroupDetails(
      userCollege: userCollege == freezed
          ? _value.userCollege
          : userCollege // ignore: cast_nullable_to_non_nullable
              as String,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as GroupModel,
    ));
  }
}

/// @nodoc

class _$_DeleteGroupDetails implements _DeleteGroupDetails {
  const _$_DeleteGroupDetails({required this.userCollege, required this.model});

  @override
  final String userCollege;
  @override
  final GroupModel model;

  @override
  String toString() {
    return 'CollegeGroupsEvent.deleteGroupDetails(userCollege: $userCollege, model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteGroupDetails &&
            (identical(other.userCollege, userCollege) ||
                const DeepCollectionEquality()
                    .equals(other.userCollege, userCollege)) &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userCollege) ^
      const DeepCollectionEquality().hash(model);

  @JsonKey(ignore: true)
  @override
  _$DeleteGroupDetailsCopyWith<_DeleteGroupDetails> get copyWith =>
      __$DeleteGroupDetailsCopyWithImpl<_DeleteGroupDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupName, String college) getGroupDetails,
    required TResult Function(String college, String department)
        getDepartmentFaculties,
    required TResult Function(String college, String department)
        getMoreDepartmentFaculties,
    required TResult Function(String college, String groupName) getGroupMembers,
    required TResult Function(String college, String groupName)
        getMoreGroupMembers,
    required TResult Function(String group, String department, String college,
            String degree, String year)
        getDepartmentStudentsGroupWise,
    required TResult Function(String group, String department, String college,
            String degree, String year)
        getMoreDepartmentStudentsGroupWise,
    required TResult Function(String userCollege, GroupModel model, bool isEdit,
            String? earlierName, File? backgroundImageFile, File? logoFile)
        addGroupDetails,
    required TResult Function(String userCollege, GroupModel model)
        deleteGroupDetails,
  }) {
    return deleteGroupDetails(userCollege, model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupName, String college)? getGroupDetails,
    TResult Function(String college, String department)? getDepartmentFaculties,
    TResult Function(String college, String department)?
        getMoreDepartmentFaculties,
    TResult Function(String college, String groupName)? getGroupMembers,
    TResult Function(String college, String groupName)? getMoreGroupMembers,
    TResult Function(String group, String department, String college,
            String degree, String year)?
        getDepartmentStudentsGroupWise,
    TResult Function(String group, String department, String college,
            String degree, String year)?
        getMoreDepartmentStudentsGroupWise,
    TResult Function(String userCollege, GroupModel model, bool isEdit,
            String? earlierName, File? backgroundImageFile, File? logoFile)?
        addGroupDetails,
    TResult Function(String userCollege, GroupModel model)? deleteGroupDetails,
    required TResult orElse(),
  }) {
    if (deleteGroupDetails != null) {
      return deleteGroupDetails(userCollege, model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGroupDetails value) getGroupDetails,
    required TResult Function(_GetDepartmentFaculties value)
        getDepartmentFaculties,
    required TResult Function(_GetMoreDepartmentFaculties value)
        getMoreDepartmentFaculties,
    required TResult Function(_GetGroupMembers value) getGroupMembers,
    required TResult Function(_GetMoreGroupMembers value) getMoreGroupMembers,
    required TResult Function(_GetDepartmentStudentsGroupWise value)
        getDepartmentStudentsGroupWise,
    required TResult Function(_GetMoreDepartmentStudentsGroupWise value)
        getMoreDepartmentStudentsGroupWise,
    required TResult Function(_AddGroupDetails value) addGroupDetails,
    required TResult Function(_DeleteGroupDetails value) deleteGroupDetails,
  }) {
    return deleteGroupDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGroupDetails value)? getGroupDetails,
    TResult Function(_GetDepartmentFaculties value)? getDepartmentFaculties,
    TResult Function(_GetMoreDepartmentFaculties value)?
        getMoreDepartmentFaculties,
    TResult Function(_GetGroupMembers value)? getGroupMembers,
    TResult Function(_GetMoreGroupMembers value)? getMoreGroupMembers,
    TResult Function(_GetDepartmentStudentsGroupWise value)?
        getDepartmentStudentsGroupWise,
    TResult Function(_GetMoreDepartmentStudentsGroupWise value)?
        getMoreDepartmentStudentsGroupWise,
    TResult Function(_AddGroupDetails value)? addGroupDetails,
    TResult Function(_DeleteGroupDetails value)? deleteGroupDetails,
    required TResult orElse(),
  }) {
    if (deleteGroupDetails != null) {
      return deleteGroupDetails(this);
    }
    return orElse();
  }
}

abstract class _DeleteGroupDetails implements CollegeGroupsEvent {
  const factory _DeleteGroupDetails(
      {required String userCollege,
      required GroupModel model}) = _$_DeleteGroupDetails;

  String get userCollege => throw _privateConstructorUsedError;
  GroupModel get model => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteGroupDetailsCopyWith<_DeleteGroupDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CollegeGroupsStateTearOff {
  const _$CollegeGroupsStateTearOff();

  _CollegeGroupsState call(
      {required bool isSavingGroup,
      required bool isDeletingGroup,
      required bool isGroupLoading,
      required GroupModel? groupModel,
      required Option<Either<FirebaseFailure, String>> actionFirebaseResultOpt,
      required List<CoolUser> departmentFacultiesList,
      required bool hasMoreDepartmentFaculties,
      required bool isMoreDepartmentFacultiesLoading,
      required bool isDepartmentFacultiesLoading,
      required List<CoolUser> groupMembersList,
      required bool hasMoreGroupMembers,
      required bool isMoreGroupMembersLoading,
      required bool isGroupMembersLoading,
      required Map<String, List<CoolUser>> departmentStudentsMap,
      required Map<String, bool> hasMoreDepartmentStudentsMap,
      required Map<String, bool> isDepartmentStudentsLoadingMap,
      required Map<String, bool> isMoreDepartmentStudentsLoadingMap}) {
    return _CollegeGroupsState(
      isSavingGroup: isSavingGroup,
      isDeletingGroup: isDeletingGroup,
      isGroupLoading: isGroupLoading,
      groupModel: groupModel,
      actionFirebaseResultOpt: actionFirebaseResultOpt,
      departmentFacultiesList: departmentFacultiesList,
      hasMoreDepartmentFaculties: hasMoreDepartmentFaculties,
      isMoreDepartmentFacultiesLoading: isMoreDepartmentFacultiesLoading,
      isDepartmentFacultiesLoading: isDepartmentFacultiesLoading,
      groupMembersList: groupMembersList,
      hasMoreGroupMembers: hasMoreGroupMembers,
      isMoreGroupMembersLoading: isMoreGroupMembersLoading,
      isGroupMembersLoading: isGroupMembersLoading,
      departmentStudentsMap: departmentStudentsMap,
      hasMoreDepartmentStudentsMap: hasMoreDepartmentStudentsMap,
      isDepartmentStudentsLoadingMap: isDepartmentStudentsLoadingMap,
      isMoreDepartmentStudentsLoadingMap: isMoreDepartmentStudentsLoadingMap,
    );
  }
}

/// @nodoc
const $CollegeGroupsState = _$CollegeGroupsStateTearOff();

/// @nodoc
mixin _$CollegeGroupsState {
  bool get isSavingGroup => throw _privateConstructorUsedError;
  bool get isDeletingGroup => throw _privateConstructorUsedError;
  bool get isGroupLoading => throw _privateConstructorUsedError;
  GroupModel? get groupModel => throw _privateConstructorUsedError;
  Option<Either<FirebaseFailure, String>> get actionFirebaseResultOpt =>
      throw _privateConstructorUsedError;
  List<CoolUser> get departmentFacultiesList =>
      throw _privateConstructorUsedError;
  bool get hasMoreDepartmentFaculties => throw _privateConstructorUsedError;
  bool get isMoreDepartmentFacultiesLoading =>
      throw _privateConstructorUsedError;
  bool get isDepartmentFacultiesLoading => throw _privateConstructorUsedError;
  List<CoolUser> get groupMembersList => throw _privateConstructorUsedError;
  bool get hasMoreGroupMembers => throw _privateConstructorUsedError;
  bool get isMoreGroupMembersLoading => throw _privateConstructorUsedError;
  bool get isGroupMembersLoading => throw _privateConstructorUsedError;
  Map<String, List<CoolUser>> get departmentStudentsMap =>
      throw _privateConstructorUsedError;
  Map<String, bool> get hasMoreDepartmentStudentsMap =>
      throw _privateConstructorUsedError;
  Map<String, bool> get isDepartmentStudentsLoadingMap =>
      throw _privateConstructorUsedError;
  Map<String, bool> get isMoreDepartmentStudentsLoadingMap =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CollegeGroupsStateCopyWith<CollegeGroupsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollegeGroupsStateCopyWith<$Res> {
  factory $CollegeGroupsStateCopyWith(
          CollegeGroupsState value, $Res Function(CollegeGroupsState) then) =
      _$CollegeGroupsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isSavingGroup,
      bool isDeletingGroup,
      bool isGroupLoading,
      GroupModel? groupModel,
      Option<Either<FirebaseFailure, String>> actionFirebaseResultOpt,
      List<CoolUser> departmentFacultiesList,
      bool hasMoreDepartmentFaculties,
      bool isMoreDepartmentFacultiesLoading,
      bool isDepartmentFacultiesLoading,
      List<CoolUser> groupMembersList,
      bool hasMoreGroupMembers,
      bool isMoreGroupMembersLoading,
      bool isGroupMembersLoading,
      Map<String, List<CoolUser>> departmentStudentsMap,
      Map<String, bool> hasMoreDepartmentStudentsMap,
      Map<String, bool> isDepartmentStudentsLoadingMap,
      Map<String, bool> isMoreDepartmentStudentsLoadingMap});
}

/// @nodoc
class _$CollegeGroupsStateCopyWithImpl<$Res>
    implements $CollegeGroupsStateCopyWith<$Res> {
  _$CollegeGroupsStateCopyWithImpl(this._value, this._then);

  final CollegeGroupsState _value;
  // ignore: unused_field
  final $Res Function(CollegeGroupsState) _then;

  @override
  $Res call({
    Object? isSavingGroup = freezed,
    Object? isDeletingGroup = freezed,
    Object? isGroupLoading = freezed,
    Object? groupModel = freezed,
    Object? actionFirebaseResultOpt = freezed,
    Object? departmentFacultiesList = freezed,
    Object? hasMoreDepartmentFaculties = freezed,
    Object? isMoreDepartmentFacultiesLoading = freezed,
    Object? isDepartmentFacultiesLoading = freezed,
    Object? groupMembersList = freezed,
    Object? hasMoreGroupMembers = freezed,
    Object? isMoreGroupMembersLoading = freezed,
    Object? isGroupMembersLoading = freezed,
    Object? departmentStudentsMap = freezed,
    Object? hasMoreDepartmentStudentsMap = freezed,
    Object? isDepartmentStudentsLoadingMap = freezed,
    Object? isMoreDepartmentStudentsLoadingMap = freezed,
  }) {
    return _then(_value.copyWith(
      isSavingGroup: isSavingGroup == freezed
          ? _value.isSavingGroup
          : isSavingGroup // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeletingGroup: isDeletingGroup == freezed
          ? _value.isDeletingGroup
          : isDeletingGroup // ignore: cast_nullable_to_non_nullable
              as bool,
      isGroupLoading: isGroupLoading == freezed
          ? _value.isGroupLoading
          : isGroupLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      groupModel: groupModel == freezed
          ? _value.groupModel
          : groupModel // ignore: cast_nullable_to_non_nullable
              as GroupModel?,
      actionFirebaseResultOpt: actionFirebaseResultOpt == freezed
          ? _value.actionFirebaseResultOpt
          : actionFirebaseResultOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, String>>,
      departmentFacultiesList: departmentFacultiesList == freezed
          ? _value.departmentFacultiesList
          : departmentFacultiesList // ignore: cast_nullable_to_non_nullable
              as List<CoolUser>,
      hasMoreDepartmentFaculties: hasMoreDepartmentFaculties == freezed
          ? _value.hasMoreDepartmentFaculties
          : hasMoreDepartmentFaculties // ignore: cast_nullable_to_non_nullable
              as bool,
      isMoreDepartmentFacultiesLoading: isMoreDepartmentFacultiesLoading ==
              freezed
          ? _value.isMoreDepartmentFacultiesLoading
          : isMoreDepartmentFacultiesLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDepartmentFacultiesLoading: isDepartmentFacultiesLoading == freezed
          ? _value.isDepartmentFacultiesLoading
          : isDepartmentFacultiesLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      groupMembersList: groupMembersList == freezed
          ? _value.groupMembersList
          : groupMembersList // ignore: cast_nullable_to_non_nullable
              as List<CoolUser>,
      hasMoreGroupMembers: hasMoreGroupMembers == freezed
          ? _value.hasMoreGroupMembers
          : hasMoreGroupMembers // ignore: cast_nullable_to_non_nullable
              as bool,
      isMoreGroupMembersLoading: isMoreGroupMembersLoading == freezed
          ? _value.isMoreGroupMembersLoading
          : isMoreGroupMembersLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isGroupMembersLoading: isGroupMembersLoading == freezed
          ? _value.isGroupMembersLoading
          : isGroupMembersLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      departmentStudentsMap: departmentStudentsMap == freezed
          ? _value.departmentStudentsMap
          : departmentStudentsMap // ignore: cast_nullable_to_non_nullable
              as Map<String, List<CoolUser>>,
      hasMoreDepartmentStudentsMap: hasMoreDepartmentStudentsMap == freezed
          ? _value.hasMoreDepartmentStudentsMap
          : hasMoreDepartmentStudentsMap // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      isDepartmentStudentsLoadingMap: isDepartmentStudentsLoadingMap == freezed
          ? _value.isDepartmentStudentsLoadingMap
          : isDepartmentStudentsLoadingMap // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      isMoreDepartmentStudentsLoadingMap: isMoreDepartmentStudentsLoadingMap ==
              freezed
          ? _value.isMoreDepartmentStudentsLoadingMap
          : isMoreDepartmentStudentsLoadingMap // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
    ));
  }
}

/// @nodoc
abstract class _$CollegeGroupsStateCopyWith<$Res>
    implements $CollegeGroupsStateCopyWith<$Res> {
  factory _$CollegeGroupsStateCopyWith(
          _CollegeGroupsState value, $Res Function(_CollegeGroupsState) then) =
      __$CollegeGroupsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isSavingGroup,
      bool isDeletingGroup,
      bool isGroupLoading,
      GroupModel? groupModel,
      Option<Either<FirebaseFailure, String>> actionFirebaseResultOpt,
      List<CoolUser> departmentFacultiesList,
      bool hasMoreDepartmentFaculties,
      bool isMoreDepartmentFacultiesLoading,
      bool isDepartmentFacultiesLoading,
      List<CoolUser> groupMembersList,
      bool hasMoreGroupMembers,
      bool isMoreGroupMembersLoading,
      bool isGroupMembersLoading,
      Map<String, List<CoolUser>> departmentStudentsMap,
      Map<String, bool> hasMoreDepartmentStudentsMap,
      Map<String, bool> isDepartmentStudentsLoadingMap,
      Map<String, bool> isMoreDepartmentStudentsLoadingMap});
}

/// @nodoc
class __$CollegeGroupsStateCopyWithImpl<$Res>
    extends _$CollegeGroupsStateCopyWithImpl<$Res>
    implements _$CollegeGroupsStateCopyWith<$Res> {
  __$CollegeGroupsStateCopyWithImpl(
      _CollegeGroupsState _value, $Res Function(_CollegeGroupsState) _then)
      : super(_value, (v) => _then(v as _CollegeGroupsState));

  @override
  _CollegeGroupsState get _value => super._value as _CollegeGroupsState;

  @override
  $Res call({
    Object? isSavingGroup = freezed,
    Object? isDeletingGroup = freezed,
    Object? isGroupLoading = freezed,
    Object? groupModel = freezed,
    Object? actionFirebaseResultOpt = freezed,
    Object? departmentFacultiesList = freezed,
    Object? hasMoreDepartmentFaculties = freezed,
    Object? isMoreDepartmentFacultiesLoading = freezed,
    Object? isDepartmentFacultiesLoading = freezed,
    Object? groupMembersList = freezed,
    Object? hasMoreGroupMembers = freezed,
    Object? isMoreGroupMembersLoading = freezed,
    Object? isGroupMembersLoading = freezed,
    Object? departmentStudentsMap = freezed,
    Object? hasMoreDepartmentStudentsMap = freezed,
    Object? isDepartmentStudentsLoadingMap = freezed,
    Object? isMoreDepartmentStudentsLoadingMap = freezed,
  }) {
    return _then(_CollegeGroupsState(
      isSavingGroup: isSavingGroup == freezed
          ? _value.isSavingGroup
          : isSavingGroup // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeletingGroup: isDeletingGroup == freezed
          ? _value.isDeletingGroup
          : isDeletingGroup // ignore: cast_nullable_to_non_nullable
              as bool,
      isGroupLoading: isGroupLoading == freezed
          ? _value.isGroupLoading
          : isGroupLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      groupModel: groupModel == freezed
          ? _value.groupModel
          : groupModel // ignore: cast_nullable_to_non_nullable
              as GroupModel?,
      actionFirebaseResultOpt: actionFirebaseResultOpt == freezed
          ? _value.actionFirebaseResultOpt
          : actionFirebaseResultOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, String>>,
      departmentFacultiesList: departmentFacultiesList == freezed
          ? _value.departmentFacultiesList
          : departmentFacultiesList // ignore: cast_nullable_to_non_nullable
              as List<CoolUser>,
      hasMoreDepartmentFaculties: hasMoreDepartmentFaculties == freezed
          ? _value.hasMoreDepartmentFaculties
          : hasMoreDepartmentFaculties // ignore: cast_nullable_to_non_nullable
              as bool,
      isMoreDepartmentFacultiesLoading: isMoreDepartmentFacultiesLoading ==
              freezed
          ? _value.isMoreDepartmentFacultiesLoading
          : isMoreDepartmentFacultiesLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDepartmentFacultiesLoading: isDepartmentFacultiesLoading == freezed
          ? _value.isDepartmentFacultiesLoading
          : isDepartmentFacultiesLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      groupMembersList: groupMembersList == freezed
          ? _value.groupMembersList
          : groupMembersList // ignore: cast_nullable_to_non_nullable
              as List<CoolUser>,
      hasMoreGroupMembers: hasMoreGroupMembers == freezed
          ? _value.hasMoreGroupMembers
          : hasMoreGroupMembers // ignore: cast_nullable_to_non_nullable
              as bool,
      isMoreGroupMembersLoading: isMoreGroupMembersLoading == freezed
          ? _value.isMoreGroupMembersLoading
          : isMoreGroupMembersLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isGroupMembersLoading: isGroupMembersLoading == freezed
          ? _value.isGroupMembersLoading
          : isGroupMembersLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      departmentStudentsMap: departmentStudentsMap == freezed
          ? _value.departmentStudentsMap
          : departmentStudentsMap // ignore: cast_nullable_to_non_nullable
              as Map<String, List<CoolUser>>,
      hasMoreDepartmentStudentsMap: hasMoreDepartmentStudentsMap == freezed
          ? _value.hasMoreDepartmentStudentsMap
          : hasMoreDepartmentStudentsMap // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      isDepartmentStudentsLoadingMap: isDepartmentStudentsLoadingMap == freezed
          ? _value.isDepartmentStudentsLoadingMap
          : isDepartmentStudentsLoadingMap // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      isMoreDepartmentStudentsLoadingMap: isMoreDepartmentStudentsLoadingMap ==
              freezed
          ? _value.isMoreDepartmentStudentsLoadingMap
          : isMoreDepartmentStudentsLoadingMap // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
    ));
  }
}

/// @nodoc

class _$_CollegeGroupsState implements _CollegeGroupsState {
  const _$_CollegeGroupsState(
      {required this.isSavingGroup,
      required this.isDeletingGroup,
      required this.isGroupLoading,
      required this.groupModel,
      required this.actionFirebaseResultOpt,
      required this.departmentFacultiesList,
      required this.hasMoreDepartmentFaculties,
      required this.isMoreDepartmentFacultiesLoading,
      required this.isDepartmentFacultiesLoading,
      required this.groupMembersList,
      required this.hasMoreGroupMembers,
      required this.isMoreGroupMembersLoading,
      required this.isGroupMembersLoading,
      required this.departmentStudentsMap,
      required this.hasMoreDepartmentStudentsMap,
      required this.isDepartmentStudentsLoadingMap,
      required this.isMoreDepartmentStudentsLoadingMap});

  @override
  final bool isSavingGroup;
  @override
  final bool isDeletingGroup;
  @override
  final bool isGroupLoading;
  @override
  final GroupModel? groupModel;
  @override
  final Option<Either<FirebaseFailure, String>> actionFirebaseResultOpt;
  @override
  final List<CoolUser> departmentFacultiesList;
  @override
  final bool hasMoreDepartmentFaculties;
  @override
  final bool isMoreDepartmentFacultiesLoading;
  @override
  final bool isDepartmentFacultiesLoading;
  @override
  final List<CoolUser> groupMembersList;
  @override
  final bool hasMoreGroupMembers;
  @override
  final bool isMoreGroupMembersLoading;
  @override
  final bool isGroupMembersLoading;
  @override
  final Map<String, List<CoolUser>> departmentStudentsMap;
  @override
  final Map<String, bool> hasMoreDepartmentStudentsMap;
  @override
  final Map<String, bool> isDepartmentStudentsLoadingMap;
  @override
  final Map<String, bool> isMoreDepartmentStudentsLoadingMap;

  @override
  String toString() {
    return 'CollegeGroupsState(isSavingGroup: $isSavingGroup, isDeletingGroup: $isDeletingGroup, isGroupLoading: $isGroupLoading, groupModel: $groupModel, actionFirebaseResultOpt: $actionFirebaseResultOpt, departmentFacultiesList: $departmentFacultiesList, hasMoreDepartmentFaculties: $hasMoreDepartmentFaculties, isMoreDepartmentFacultiesLoading: $isMoreDepartmentFacultiesLoading, isDepartmentFacultiesLoading: $isDepartmentFacultiesLoading, groupMembersList: $groupMembersList, hasMoreGroupMembers: $hasMoreGroupMembers, isMoreGroupMembersLoading: $isMoreGroupMembersLoading, isGroupMembersLoading: $isGroupMembersLoading, departmentStudentsMap: $departmentStudentsMap, hasMoreDepartmentStudentsMap: $hasMoreDepartmentStudentsMap, isDepartmentStudentsLoadingMap: $isDepartmentStudentsLoadingMap, isMoreDepartmentStudentsLoadingMap: $isMoreDepartmentStudentsLoadingMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CollegeGroupsState &&
            (identical(other.isSavingGroup, isSavingGroup) ||
                const DeepCollectionEquality()
                    .equals(other.isSavingGroup, isSavingGroup)) &&
            (identical(other.isDeletingGroup, isDeletingGroup) ||
                const DeepCollectionEquality()
                    .equals(other.isDeletingGroup, isDeletingGroup)) &&
            (identical(other.isGroupLoading, isGroupLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isGroupLoading, isGroupLoading)) &&
            (identical(other.groupModel, groupModel) ||
                const DeepCollectionEquality()
                    .equals(other.groupModel, groupModel)) &&
            (identical(other.actionFirebaseResultOpt, actionFirebaseResultOpt) ||
                const DeepCollectionEquality().equals(
                    other.actionFirebaseResultOpt, actionFirebaseResultOpt)) &&
            (identical(other.departmentFacultiesList, departmentFacultiesList) ||
                const DeepCollectionEquality().equals(
                    other.departmentFacultiesList, departmentFacultiesList)) &&
            (identical(other.hasMoreDepartmentFaculties, hasMoreDepartmentFaculties) ||
                const DeepCollectionEquality().equals(
                    other.hasMoreDepartmentFaculties,
                    hasMoreDepartmentFaculties)) &&
            (identical(other.isMoreDepartmentFacultiesLoading, isMoreDepartmentFacultiesLoading) ||
                const DeepCollectionEquality().equals(
                    other.isMoreDepartmentFacultiesLoading,
                    isMoreDepartmentFacultiesLoading)) &&
            (identical(other.isDepartmentFacultiesLoading, isDepartmentFacultiesLoading) ||
                const DeepCollectionEquality().equals(
                    other.isDepartmentFacultiesLoading,
                    isDepartmentFacultiesLoading)) &&
            (identical(other.groupMembersList, groupMembersList) ||
                const DeepCollectionEquality()
                    .equals(other.groupMembersList, groupMembersList)) &&
            (identical(other.hasMoreGroupMembers, hasMoreGroupMembers) ||
                const DeepCollectionEquality()
                    .equals(other.hasMoreGroupMembers, hasMoreGroupMembers)) &&
            (identical(other.isMoreGroupMembersLoading, isMoreGroupMembersLoading) ||
                const DeepCollectionEquality().equals(other.isMoreGroupMembersLoading, isMoreGroupMembersLoading)) &&
            (identical(other.isGroupMembersLoading, isGroupMembersLoading) || const DeepCollectionEquality().equals(other.isGroupMembersLoading, isGroupMembersLoading)) &&
            (identical(other.departmentStudentsMap, departmentStudentsMap) || const DeepCollectionEquality().equals(other.departmentStudentsMap, departmentStudentsMap)) &&
            (identical(other.hasMoreDepartmentStudentsMap, hasMoreDepartmentStudentsMap) || const DeepCollectionEquality().equals(other.hasMoreDepartmentStudentsMap, hasMoreDepartmentStudentsMap)) &&
            (identical(other.isDepartmentStudentsLoadingMap, isDepartmentStudentsLoadingMap) || const DeepCollectionEquality().equals(other.isDepartmentStudentsLoadingMap, isDepartmentStudentsLoadingMap)) &&
            (identical(other.isMoreDepartmentStudentsLoadingMap, isMoreDepartmentStudentsLoadingMap) || const DeepCollectionEquality().equals(other.isMoreDepartmentStudentsLoadingMap, isMoreDepartmentStudentsLoadingMap)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isSavingGroup) ^
      const DeepCollectionEquality().hash(isDeletingGroup) ^
      const DeepCollectionEquality().hash(isGroupLoading) ^
      const DeepCollectionEquality().hash(groupModel) ^
      const DeepCollectionEquality().hash(actionFirebaseResultOpt) ^
      const DeepCollectionEquality().hash(departmentFacultiesList) ^
      const DeepCollectionEquality().hash(hasMoreDepartmentFaculties) ^
      const DeepCollectionEquality().hash(isMoreDepartmentFacultiesLoading) ^
      const DeepCollectionEquality().hash(isDepartmentFacultiesLoading) ^
      const DeepCollectionEquality().hash(groupMembersList) ^
      const DeepCollectionEquality().hash(hasMoreGroupMembers) ^
      const DeepCollectionEquality().hash(isMoreGroupMembersLoading) ^
      const DeepCollectionEquality().hash(isGroupMembersLoading) ^
      const DeepCollectionEquality().hash(departmentStudentsMap) ^
      const DeepCollectionEquality().hash(hasMoreDepartmentStudentsMap) ^
      const DeepCollectionEquality().hash(isDepartmentStudentsLoadingMap) ^
      const DeepCollectionEquality().hash(isMoreDepartmentStudentsLoadingMap);

  @JsonKey(ignore: true)
  @override
  _$CollegeGroupsStateCopyWith<_CollegeGroupsState> get copyWith =>
      __$CollegeGroupsStateCopyWithImpl<_CollegeGroupsState>(this, _$identity);
}

abstract class _CollegeGroupsState implements CollegeGroupsState {
  const factory _CollegeGroupsState(
      {required bool isSavingGroup,
      required bool isDeletingGroup,
      required bool isGroupLoading,
      required GroupModel? groupModel,
      required Option<Either<FirebaseFailure, String>> actionFirebaseResultOpt,
      required List<CoolUser> departmentFacultiesList,
      required bool hasMoreDepartmentFaculties,
      required bool isMoreDepartmentFacultiesLoading,
      required bool isDepartmentFacultiesLoading,
      required List<CoolUser> groupMembersList,
      required bool hasMoreGroupMembers,
      required bool isMoreGroupMembersLoading,
      required bool isGroupMembersLoading,
      required Map<String, List<CoolUser>> departmentStudentsMap,
      required Map<String, bool> hasMoreDepartmentStudentsMap,
      required Map<String, bool> isDepartmentStudentsLoadingMap,
      required Map<String, bool>
          isMoreDepartmentStudentsLoadingMap}) = _$_CollegeGroupsState;

  @override
  bool get isSavingGroup => throw _privateConstructorUsedError;
  @override
  bool get isDeletingGroup => throw _privateConstructorUsedError;
  @override
  bool get isGroupLoading => throw _privateConstructorUsedError;
  @override
  GroupModel? get groupModel => throw _privateConstructorUsedError;
  @override
  Option<Either<FirebaseFailure, String>> get actionFirebaseResultOpt =>
      throw _privateConstructorUsedError;
  @override
  List<CoolUser> get departmentFacultiesList =>
      throw _privateConstructorUsedError;
  @override
  bool get hasMoreDepartmentFaculties => throw _privateConstructorUsedError;
  @override
  bool get isMoreDepartmentFacultiesLoading =>
      throw _privateConstructorUsedError;
  @override
  bool get isDepartmentFacultiesLoading => throw _privateConstructorUsedError;
  @override
  List<CoolUser> get groupMembersList => throw _privateConstructorUsedError;
  @override
  bool get hasMoreGroupMembers => throw _privateConstructorUsedError;
  @override
  bool get isMoreGroupMembersLoading => throw _privateConstructorUsedError;
  @override
  bool get isGroupMembersLoading => throw _privateConstructorUsedError;
  @override
  Map<String, List<CoolUser>> get departmentStudentsMap =>
      throw _privateConstructorUsedError;
  @override
  Map<String, bool> get hasMoreDepartmentStudentsMap =>
      throw _privateConstructorUsedError;
  @override
  Map<String, bool> get isDepartmentStudentsLoadingMap =>
      throw _privateConstructorUsedError;
  @override
  Map<String, bool> get isMoreDepartmentStudentsLoadingMap =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CollegeGroupsStateCopyWith<_CollegeGroupsState> get copyWith =>
      throw _privateConstructorUsedError;
}
