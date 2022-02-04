import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:college/domain/group_model.dart';
import 'package:college/domain/i_college_group_repo.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:user/user.dart';

part 'college_groups_event.dart';
part 'college_groups_state.dart';
part 'college_groups_bloc.freezed.dart';

@injectable
class CollegeGroupsBloc extends Bloc<CollegeGroupsEvent, CollegeGroupsState> {
  final ICollegeGroupRepo iCollegeGroupRepo;
  CollegeGroupsBloc(this.iCollegeGroupRepo)
      : super(CollegeGroupsState.initial());
  @override
  Stream<CollegeGroupsState> mapEventToState(
    CollegeGroupsEvent event,
  ) async* {
    yield* event.map(
      getGroupDetails: (e) async* {
        yield CollegeGroupsState.initialGroupLoading();
        final opt = await iCollegeGroupRepo.getGroupDetails(
          e.groupName,
          e.college,
        );
        yield opt.fold((failure) {
          return state.copyWith(
            isGroupLoading: false,
            actionFirebaseResultOpt: some(left(failure)),
          );
        }, (model) {
          return state.copyWith(
            actionFirebaseResultOpt: some(right('')),
            isGroupLoading: false,
            groupModel: model,
          );
        });
      },
      getDepartmentFaculties: (e) async* {
        yield state.copyWith(
          isDepartmentFacultiesLoading: true,
          actionFirebaseResultOpt: none(),
        );

        final usersOpt = await iCollegeGroupRepo.getDepartmentFaculties(
            e.college, e.department);
        yield usersOpt.fold((failure) {
          return state.copyWith(
            isDepartmentFacultiesLoading: false,
            actionFirebaseResultOpt: some(left(failure)),
          );
        }, (list) {
          bool hasMore = true;
          if (list.length == Constants.USERS_LIMIT) {
            hasMore = true;
          } else {
            hasMore = false;
          }
          return state.copyWith(
            hasMoreDepartmentFaculties: hasMore,
            isDepartmentFacultiesLoading: false,
            actionFirebaseResultOpt: none(),
            departmentFacultiesList: list,
          );
        });
      },
      getMoreDepartmentFaculties: (e) async* {
        if (state.hasMoreDepartmentFaculties &&
            state.departmentFacultiesList.length >= Constants.USERS_LIMIT &&
            !state.isMoreDepartmentFacultiesLoading) {
          yield state.copyWith(
            isDepartmentFacultiesLoading: false,
            isMoreDepartmentFacultiesLoading: true,
            actionFirebaseResultOpt: none(),
          );
          final lastItem = state.departmentFacultiesList.last;

          final usersOpt = await iCollegeGroupRepo.getMoreDepartmentFaculties(
              e.college, e.department, lastItem);

          yield usersOpt.fold((failure) {
            return state.copyWith(
              isMoreDepartmentFacultiesLoading: false,
              actionFirebaseResultOpt: some(left(failure)),
            );
          }, (list) {
            bool hasMore = true;
            if (list.length == Constants.USERS_LIMIT) {
              hasMore = true;
            } else {
              hasMore = false;
            }
            List<CoolUser> usersList = List.from(state.departmentFacultiesList);
            usersList.addAll(list);
            return state.copyWith(
              hasMoreDepartmentFaculties: hasMore,
              isMoreDepartmentFacultiesLoading: false,
              actionFirebaseResultOpt: none(),
              departmentFacultiesList: usersList,
            );
          });
        }
      },
      getGroupMembers: (e) async* {
        yield state.copyWith(
          isGroupMembersLoading: true,
          actionFirebaseResultOpt: none(),
        );

        final usersOpt = await iCollegeGroupRepo.getGroupMembers(
            college: e.college, groupName: e.groupName);
        yield usersOpt.fold((failure) {
          return state.copyWith(
            isGroupMembersLoading: false,
            actionFirebaseResultOpt: some(left(failure)),
          );
        }, (list) {
          bool hasMore = true;
          if (list.length == Constants.USERS_LIMIT) {
            hasMore = true;
          } else {
            hasMore = false;
          }
          return state.copyWith(
            hasMoreGroupMembers: hasMore,
            isGroupMembersLoading: false,
            actionFirebaseResultOpt: none(),
            groupMembersList: list,
          );
        });
      },
      getMoreGroupMembers: (e) async* {
        if (state.hasMoreGroupMembers &&
            state.groupMembersList.length >= Constants.USERS_LIMIT &&
            !state.isMoreGroupMembersLoading) {
          yield state.copyWith(
            isGroupMembersLoading: false,
            isMoreGroupMembersLoading: true,
            actionFirebaseResultOpt: none(),
          );
          final lastItem = state.groupMembersList.last;

          final usersOpt = await iCollegeGroupRepo.getMoreGroupMembers(
            college: e.college,
            groupName: e.groupName,
            coolUser: lastItem,
          );

          yield usersOpt.fold((failure) {
            return state.copyWith(
              isMoreGroupMembersLoading: false,
              actionFirebaseResultOpt: some(left(failure)),
            );
          }, (list) {
            bool hasMore = true;
            if (list.length == Constants.USERS_LIMIT) {
              hasMore = true;
            } else {
              hasMore = false;
            }
            List<CoolUser> usersList = List.from(state.groupMembersList);
            usersList.addAll(list);
            return state.copyWith(
              hasMoreGroupMembers: hasMore,
              isMoreGroupMembersLoading: false,
              actionFirebaseResultOpt: none(),
              groupMembersList: usersList,
            );
          });
        }
      },
      getDepartmentStudentsGroupWise: (e) async* {
        final Map<String, bool> loadingMap =
            Map.from(state.isDepartmentStudentsLoadingMap);
        if (loadingMap.containsKey(e.group)) {
          loadingMap.update(e.group, (_) => true);
        } else {
          loadingMap.putIfAbsent(e.group, () => true);
        }
        yield state.copyWith(
          actionFirebaseResultOpt: none(),
          isDepartmentStudentsLoadingMap: loadingMap,
        );

        final usersOpt = await iCollegeGroupRepo.getDepartmentStudentsGroupWise(
          college: e.college,
          department: e.department,
          year: e.year,
          degree: e.degree,
        );
        final Map<String, bool> loadingMap2 =
            Map.from(state.isDepartmentStudentsLoadingMap);
        loadingMap2.update(e.group, (_) => false);

        yield usersOpt.fold((failure) {
          return state.copyWith(
            isDepartmentStudentsLoadingMap: loadingMap2,
            actionFirebaseResultOpt: some(left(failure)),
          );
        }, (list) {
          bool hasMore = true;
          if (list.length == Constants.USERS_LIMIT) {
            hasMore = true;
          } else {
            hasMore = false;
          }
          final Map<String, bool> hasMoreMap =
              Map.from(state.hasMoreDepartmentStudentsMap);
          if (hasMoreMap.containsKey(e.group)) {
            hasMoreMap.update(e.group, (_) => hasMore);
          } else {
            hasMoreMap.putIfAbsent(e.group, () => hasMore);
          }
          final Map<String, List<CoolUser>> usersMap =
              Map.from(state.departmentStudentsMap);
          if (!usersMap.containsKey(e.group)) {
            usersMap.putIfAbsent(e.group, () => list);
          } else {
            usersMap.update(e.group, (_) => list);
          }
          return state.copyWith(
            hasMoreDepartmentStudentsMap: hasMoreMap,
            isDepartmentStudentsLoadingMap: loadingMap2,
            actionFirebaseResultOpt: none(),
            departmentStudentsMap: usersMap,
          );
        });
      },
      getMoreDepartmentStudentsGroupWise: (e) async* {
        if (state.departmentStudentsMap.containsKey(e.group) &&
            (state.hasMoreDepartmentStudentsMap[e.group] ?? true) &&
            (state.departmentStudentsMap[e.group] ?? []).length >=
                Constants.USERS_LIMIT &&
            !(state.isMoreDepartmentStudentsLoadingMap[e.group] ?? false)) {
          final Map<String, bool> loadingMap =
              Map.from(state.isMoreDepartmentStudentsLoadingMap);
          if (loadingMap.containsKey(e.group)) {
            loadingMap.update(e.group, (_) => true);
          } else {
            loadingMap.putIfAbsent(e.group, () => true);
          }
          yield state.copyWith(
            actionFirebaseResultOpt: none(),
            isMoreDepartmentStudentsLoadingMap: loadingMap,
          );
          final lastItem = state.departmentStudentsMap[e.group]!.last;
          final usersOpt =
              await iCollegeGroupRepo.getMoreDepartmentStudentsGroupWise(
            college: e.college,
            department: e.department,
            year: e.year,
            degree: e.degree,
            coolUser: lastItem,
          );

          final Map<String, bool> loadingMap2 =
              Map.from(state.isMoreDepartmentStudentsLoadingMap);
          loadingMap2.update(e.group, (_) => false);

          yield usersOpt.fold((failure) {
            return state.copyWith(
              isMoreDepartmentStudentsLoadingMap: loadingMap2,
              actionFirebaseResultOpt: some(left(failure)),
            );
          }, (list) {
            bool hasMore = true;
            if (list.length == Constants.USERS_LIMIT) {
              hasMore = true;
            } else {
              hasMore = false;
            }
            final Map<String, bool> hasMoreMap =
                Map.from(state.hasMoreDepartmentStudentsMap);
            if (hasMoreMap.containsKey(e.group)) {
              hasMoreMap.update(e.group, (_) => hasMore);
            } else {
              hasMoreMap.putIfAbsent(e.group, () => hasMore);
            }
            final Map<String, List<CoolUser>> usersMap =
                Map.from(state.departmentStudentsMap);
            usersMap.update(e.group, (earlierList) {
              earlierList.addAll(list);
              return earlierList;
            });

            return state.copyWith(
              hasMoreDepartmentStudentsMap: hasMoreMap,
              isMoreDepartmentStudentsLoadingMap: loadingMap2,
              actionFirebaseResultOpt: none(),
              departmentStudentsMap: usersMap,
            );
          });
        }
      },
      addGroupDetails: (e) async* {
        yield state.copyWith(
          isSavingGroup: true,
          actionFirebaseResultOpt: none(),
        );
        final opt = await iCollegeGroupRepo.addGroupDetails(
          e.userCollege,
          e.model,
          e.isEdit,
          earlierName: e.earlierName,
          backgroundImageFile: e.backgroundImageFile,
          logoFile: e.logoFile,
        );

        yield opt.fold((failure) {
          return state.copyWith(
            actionFirebaseResultOpt: some(left(failure)),
            isSavingGroup: false,
          );
        }, (model) {
          String msg = "";
          if (e.isEdit) {
            msg =
                "${model.isDepartment! ? "Department" : "Group"} updated successfully";
          } else {
            msg =
                "${model.isDepartment! ? "Department" : "Group"} added successfully";
          }

          return state.copyWith(
            actionFirebaseResultOpt: some(right(msg)),
            isSavingGroup: false,
            groupModel: model,
          );
        });
      },
      deleteGroupDetails: (e) async* {
        yield state.copyWith(
          isDeletingGroup: true,
          actionFirebaseResultOpt: none(),
        );
        final opt = await iCollegeGroupRepo.deleteGroupDetails(
          e.userCollege,
          e.model,
        );

        yield opt.fold((failure) {
          return state.copyWith(
            actionFirebaseResultOpt: some(left(failure)),
            isDeletingGroup: false,
          );
        }, (_) {
          String msg = "";
          msg =
              "${e.model.isDepartment! ? "Department" : "Group"} deleted successfully";

          return state.copyWith(
            actionFirebaseResultOpt: some(right(msg)),
            isDeletingGroup: false,
          );
        });
      },
    );
  }
}
