import 'package:college/college.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:user/user.dart';

mixin FeedFunctions {
  static List<String> getUserRelatedTag() {
    final List<String> userRelatedTags = [];
    userRelatedTags.add("All");
    final user = Getters.getCurrentUser(CoreGetters.getContext);
    if (user.userType == Constants.USER_TYPE_STUDENT) {
      final degree = user.degree!;
      final department = user.branch!;
      final year = user.year!;
      final program =
          Functions.getProgramFromDegree(CoreGetters.getContext, degree);
      String tag = program.toUpperCase();
      tag += "_";
      tag += department;
      if (program != Constants.PHD_GROUP) {
        tag += "_";
        tag += "${Functions.getWithSuffix(int.parse(year))} Year - $degree";
      }

      userRelatedTags.add(tag);
    } else if (user.userType == Constants.USER_TYPE_FACULTY) {
      final designation = user.designation!;
      final department = user.branch!;
      String tag = Constants.FACULTY_GROUP;
      tag += "_";
      tag += department;
      tag += "_";
      tag += designation;
      userRelatedTags.add(tag);
    }

    String tagIndividual = Constants.INDIVIDUAL_GROUP;
    tagIndividual += "_";
    tagIndividual += user.uid!;
    userRelatedTags.add(tagIndividual);

    return userRelatedTags;
  }

  static bool checkifAllProgramSelected(
      BuildContext context, List<String> selectedGroupsList, String groupName) {
    final yearGroups = getYearGroups(context, groupName);
    final departments =
        CollegeGetters.getCurrentUserCollegeDepartments(context);
    for (final depp in departments) {
      for (final group in yearGroups) {
        String s = "${groupName}_${depp}_$group";
        if (!selectedGroupsList.contains(s)) {
          return false;
        }
      }
    }
    return true;
  }

  static bool checkifAllPhdDeppSelected(
      BuildContext context, List<String> selectedGroupsList, String groupName) {
    final departments =
        CollegeGetters.getCurrentUserCollegeDepartments(context);
    for (final depp in departments) {
      String s = "${groupName}_$depp";
      if (!selectedGroupsList.contains(s)) {
        return false;
      }
    }
    return true;
  }

  static bool checkifAllFacultySelected(
      BuildContext context, List<String> selectedGroupsList, String groupName) {
    final designations =
        CollegeGetters.getCurrentUserCollegeDesignations(context);
    final departments =
        CollegeGetters.getCurrentUserCollegeDepartments(context);
    for (final depp in departments) {
      for (final group in designations) {
        String s = "${groupName}_${depp}_$group";
        if (!selectedGroupsList.contains(s)) {
          return false;
        }
      }
    }
    return true;
  }

  static bool checkifGroupSelected(
      List<String> selectedGroupsList, String groupName) {
    for (var element in selectedGroupsList) {
      if (element == groupName) {
        return true;
      }
    }
    return false;
  }

  static bool checkIfAnyProgramGroupSelected(
      List<String> selectedGroupsList, String groupName) {
    for (var element in selectedGroupsList) {
      if (element.startsWith("${groupName}_")) {
        return true;
      }
    }
    return false;
  }

  static void removeGroupPublishTags(
      List<String> selectedGroupsList, String groupName) {
    if (groupName == "All") {
      selectedGroupsList = [];
      return;
    }
    final List<String> list = List.from(selectedGroupsList);
    for (var element in list) {
      if (element.startsWith("${groupName}_")) {
        selectedGroupsList.remove(element);
      }
    }
  }

  static void removeDepartmentPublishTags(
      List<String> selectedGroupsList, String groupName, String department) {
    final List<String> list = List.from(selectedGroupsList);
    for (var element in list) {
      if (element.startsWith("${groupName}_${department}_")) {
        selectedGroupsList.remove(element);
      }
    }
  }

  static void removePhdDepartmentPublishTags(
      List<String> selectedGroupsList, String groupName, String department) {
    final List<String> list = List.from(selectedGroupsList);
    for (var element in list) {
      if (element.startsWith("${groupName}_$department")) {
        selectedGroupsList.remove(element);
      }
    }
  }

  static void removeSubGroupPublishTags(
      List<String> selectedGroupsList, String groupName, String subgroup) {
    if (groupName == "All") {
      selectedGroupsList = [];
      return;
    }
    final List<String> list = List.from(selectedGroupsList);
    for (var element in list) {
      if (element.contains("${groupName}_") && element.contains("_$subgroup")) {
        selectedGroupsList.remove(element);
      }
    }
    debugPrint(selectedGroupsList.toString());
  }

  static List<String> getSelectedDepartments(
      List<String> selectedGroupsList, String groupName) {
    final List<String> departmentsList = [];
    for (var element in selectedGroupsList) {
      if (element.startsWith("${groupName}_")) {
        final groups = element.split("_");
        if (!departmentsList.contains(groups[1])) {
          departmentsList.add(groups[1]);
        }
      }
    }
    return departmentsList;
  }

  static List<String> getSelectedYearGroups(
      List<String> selectedGroupsList, String groupName) {
    final List<String> departmentsList = [];
    for (var element in selectedGroupsList) {
      if (element.startsWith("${groupName}_")) {
        final groups = element.split("_");
        if (groups.length > 2) {
          if (!departmentsList.contains(groups[2])) {
            departmentsList.add(groups[2]);
          }
        }
      }
    }
    return departmentsList;
  }

  static List<String> getSelectedIndividuals(List<String> selectedGroupsList) {
    final List<String> departmentsList = [];
    for (var element in selectedGroupsList) {
      if (element.startsWith("${Constants.INDIVIDUAL_GROUP}_")) {
        final groups = element.split("_");
        if (!departmentsList.contains(groups[1])) {
          departmentsList.add(groups[1]);
        }
      }
    }
    return departmentsList;
  }

  static List<String> getSelectedSecondGroupsFromDepartment(
      List<String> selectedGroupsList, String groupName, String department) {
    final List<String> yearGroupsList = [];
    for (var element in selectedGroupsList) {
      if (element.startsWith("${groupName}_${department}_")) {
        final groups = element.split("_");
        if (!yearGroupsList.contains(groups[2])) {
          yearGroupsList.add(groups[2]);
        }
      }
    }
    return yearGroupsList;
  }

  static List<String> getSelectedDepartmentsFromSubGroups(
      List<String> selectedGroupsList, String groupName, String subGroup) {
    final List<String> departments = [];
    for (var element in selectedGroupsList) {
      if (element.contains("${groupName}_") && element.contains("_$subGroup")) {
        final groups = element.split("_");
        if (!departments.contains(groups[1])) {
          departments.add(groups[1]);
        }
      }
    }
    return departments;
  }

  static void selectAllForProgram(
      BuildContext context, List<String> selectedGroupsList, String groupName) {
    final yearGroups = getYearGroups(context, groupName);
    final departments =
        CollegeGetters.getCurrentUserCollegeDepartments(context);
    for (final depp in departments) {
      for (final group in yearGroups) {
        String s = "${groupName}_${depp}_$group";
        if (!selectedGroupsList.contains(s)) {
          selectedGroupsList.add(s);
        }
      }
    }
  }

  static void selectAllForFaculty(
      BuildContext context, List<String> selectedGroupsList, String groupName) {
    final designations =
        CollegeGetters.getCurrentUserCollegeDesignations(context);
    final departments =
        CollegeGetters.getCurrentUserCollegeDepartments(context);
    for (final depp in departments) {
      for (final group in designations) {
        String s = "${groupName}_${depp}_$group";
        if (!selectedGroupsList.contains(s)) {
          selectedGroupsList.add(s);
        }
      }
    }
  }

  static void selectAllForPhd(
      BuildContext context, List<String> selectedGroupsList, String groupName) {
    final departments =
        CollegeGetters.getCurrentUserCollegeDepartments(context);
    for (final depp in departments) {
      String s = "${groupName}_$depp";
      if (!selectedGroupsList.contains(s)) {
        selectedGroupsList.add(s);
      }
    }
  }

  static bool checkIfAnyGroupSelected(
    List<String> selectedGroupsList,
  ) {
    for (final element in selectedGroupsList) {
      if (element.contains("_")) {
        return true;
      }
    }
    return false;
  }

  static List<String> getYearGroups(BuildContext context, String groupName) {
    final programmesMap =
        CollegeGetters.getCurrentUserCollegeProgrammes(context);
    if (!programmesMap.containsKey(groupName)) {
      return [];
    }
    final programmesWithDuration = CoreGetters.getProgrammes(context);
    final List<String> groups = [];
    final programmesList = programmesMap[groupName];
    for (var program in programmesList!) {
      int duration = programmesWithDuration[groupName]![program] ?? 0;
      for (int i = 1; i <= duration; i++) {
        String s = Functions.getWithSuffix(i);
        s = "$s Year - $program";
        groups.add(s);
      }
    }
    return groups;
  }

  static void filterPublishTags(List<String> selectedGroupsList) {
    if (!selectedGroupsList.contains(Constants.UG_GROUP)) {
      removeGroupPublishTags(selectedGroupsList, Constants.UG_GROUP);
    }
    if (!selectedGroupsList.contains(Constants.PG_GROUP)) {
      removeGroupPublishTags(selectedGroupsList, Constants.PG_GROUP);
    }
    if (!selectedGroupsList.contains(Constants.PHD_GROUP)) {
      removeGroupPublishTags(selectedGroupsList, Constants.PG_GROUP);
    }
    if (!selectedGroupsList.contains(Constants.INDIVIDUAL_GROUP)) {
      removeGroupPublishTags(selectedGroupsList, Constants.INDIVIDUAL_GROUP);
    }
    if (!selectedGroupsList.contains(Constants.FACULTY_GROUP)) {
      removeGroupPublishTags(selectedGroupsList, Constants.FACULTY_GROUP);
    }
  }
}
