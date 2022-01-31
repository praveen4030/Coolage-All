part of 'college_groups_bloc.dart';

@freezed
class CollegeGroupsEvent with _$CollegeGroupsEvent {
  const factory CollegeGroupsEvent.getGroupDetails({
    required String groupName,
    required String college,
  }) = _GetGroupDetails;
  const factory CollegeGroupsEvent.getDepartmentFaculties({
    required String college,
    required String department,
  }) = _GetDepartmentFaculties;
  const factory CollegeGroupsEvent.getMoreDepartmentFaculties({
    required String college,
    required String department,
  }) = _GetMoreDepartmentFaculties;
  const factory CollegeGroupsEvent.getGroupMembers({
    required String college,
    required String groupName,
  }) = _GetGroupMembers;
  const factory CollegeGroupsEvent.getMoreGroupMembers({
    required String college,
    required String groupName,
  }) = _GetMoreGroupMembers;
  const factory CollegeGroupsEvent.getDepartmentStudentsGroupWise({
    required String group,
    required String department,
    required String college,
    required String degree,
    required String year,
  }) = _GetDepartmentStudentsGroupWise;
  const factory CollegeGroupsEvent.getMoreDepartmentStudentsGroupWise({
    required String group,
    required String department,
    required String college,
    required String degree,
    required String year,
  }) = _GetMoreDepartmentStudentsGroupWise;
  const factory CollegeGroupsEvent.addGroupDetails({
    required String userCollege,
    required GroupModel model,
    required bool isEdit,
    //need to delete in case of name change
    String? earlierName,
    File? backgroundImageFile,
    File? logoFile,
  }) = _AddGroupDetails;

  const factory CollegeGroupsEvent.deleteGroupDetails({
    required String userCollege,
    required GroupModel model,
  }) = _DeleteGroupDetails;
}
