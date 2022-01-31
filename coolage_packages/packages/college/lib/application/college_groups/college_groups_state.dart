part of 'college_groups_bloc.dart';

@freezed
class CollegeGroupsState with _$CollegeGroupsState {
  const factory CollegeGroupsState({
    required bool isSavingGroup,
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
    required Map<String, bool> isMoreDepartmentStudentsLoadingMap,
  }) = _CollegeGroupsState;
  factory CollegeGroupsState.initial() => CollegeGroupsState(
        groupModel: null,
        isGroupLoading: false,
        actionFirebaseResultOpt: none(),
        departmentFacultiesList: [],
        groupMembersList: [],
        hasMoreDepartmentFaculties: true,
        hasMoreGroupMembers: true,
        isMoreGroupMembersLoading: false,
        isMoreDepartmentFacultiesLoading: false,
        isGroupMembersLoading: false,
        isDepartmentFacultiesLoading: false,
        hasMoreDepartmentStudentsMap: {},
        isMoreDepartmentStudentsLoadingMap: {},
        departmentStudentsMap: {},
        isDepartmentStudentsLoadingMap: {},
        isSavingGroup: false,
        isDeletingGroup: false,
      );
}
