import 'package:college/application/college_groups/college_groups_bloc.dart';
import 'package:college/ui/widgets/fetch_more_bottom_widget.dart';
import 'package:college/ui/widgets/user_member_tile.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user/user.dart';

class StudentGroupTile extends StatefulWidget {
  final String group;
  final String department;
  const StudentGroupTile({
    Key? key,
    required this.group,
    required this.department,
  }) : super(key: key);

  @override
  State<StudentGroupTile> createState() => _StudentGroupTileState();
}

class _StudentGroupTileState extends State<StudentGroupTile> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CollegeGroupsBloc, CollegeGroupsState>(
      builder: (context, state) {
        final studentsList = state.departmentStudentsMap[widget.group];
        return Column(
          children: [
            Container(
              color: Kolors.greyWhite,
              height: 60,
              margin: EdgeInsets.only(bottom: isExpanded ? 0 : 8),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: CustomText(
                      text: widget.group,
                      color: Kolors.greyBlue,
                      fontSize: 16,
                    ),
                  ),
                  expandedButton(state.departmentStudentsMap),
                ],
              ),
            ),
            if (isExpanded)
              if ((state.isDepartmentStudentsLoadingMap[widget.group] ?? false))
                const LogoLoading()
              else if (studentsList?.isEmpty ?? true)
                Container(
                  height: 100,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Center(
                    child: CustomText(
                      text: "No student found with the matching criteria !",
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Kolors.greyBlue,
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              else
                ListView.builder(
                  // controller: _scrollController,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: studentsList?.length ?? 0,
                  itemBuilder: (context, index) {
                    return UserMemberTile(
                      coolUser: studentsList![index],
                      subtitle: studentsList[index].designation ?? "",
                    );
                  },
                ),
            if (state.isMoreDepartmentStudentsLoadingMap[widget.group] ?? false)
              const LogoLoading()
            else if ((state.hasMoreDepartmentStudentsMap[widget.group] ??
                false))
              FetchMoreBottomWidget(
                onTap: () {
                  context.read<CollegeGroupsBloc>().add(
                        CollegeGroupsEvent.getMoreDepartmentStudentsGroupWise(
                          group: widget.group,
                          department: widget.department,
                          college: Getters.getCurrentUserCollege(context),
                          degree: Functions.getDegreeFromDegreeYearGroup(
                              widget.group),
                          year: Functions.getYearFromDegreeYearGroup(
                              widget.group),
                        ),
                      );
                },
              ),
          ],
        );
      },
    );
  }

  Widget expandedButton(Map<String, List<CoolUser>> studentsGroup) {
    return GestureDetector(
      onTap: () {
        if (!studentsGroup.containsKey(widget.group) && !isExpanded) {
          context.read<CollegeGroupsBloc>().add(
                CollegeGroupsEvent.getDepartmentStudentsGroupWise(
                  group: widget.group,
                  department: widget.department,
                  college: Getters.getCurrentUserCollege(context),
                  degree: Functions.getDegreeFromDegreeYearGroup(widget.group),
                  year: Functions.getYearFromDegreeYearGroup(widget.group),
                ),
              );
        }
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: Container(
        height: 32,
        width: 32,
        decoration: BoxDecoration(
          color: Kolors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: Kolors.greyBlack.withOpacity(0.25),
            ),
          ],
        ),
        child: Center(
          child: CustomText(
            text: isExpanded ? "-" : "+",
            fontWeight: FontWeight.w900,
            color: Kolors.greyBlue,
          ),
        ),
      ),
    );
  }
}
