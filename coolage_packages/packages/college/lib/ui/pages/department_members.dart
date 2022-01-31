import 'package:college/application/college_groups/college_groups_bloc.dart';
import 'package:college/ui/pages/department_faculties.dart';
import 'package:college/ui/pages/department_students.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user/user.dart';

class DepartmentMembersPage extends StatefulWidget {
  final String department;
  final List<String> departmentDegreesList;

  DepartmentMembersPage({
    Key? key,
    required this.department,
    required this.departmentDegreesList,
  }) : super(key: key);

  @override
  _DepartmentMembersPageState createState() => _DepartmentMembersPageState();
}

class _DepartmentMembersPageState extends State<DepartmentMembersPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2)
      ..addListener(() {
        setState(() {
          currentIndex = _tabController!.index;
        });
      });
    context
        .read<CollegeGroupsBloc>()
        .add(CollegeGroupsEvent.getDepartmentFaculties(
          college: Getters.getCurrentUserCollege(context),
          department: widget.department,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Kolors.greyWhite,
        appBar: AppBar(
          toolbarHeight: 0,
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                height: 80,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconWithWhiteBackground(
                      iconName: 'back',
                      iconColor: Kolors.greyBlue,
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomText(
                          text: "Members",
                          fontSize: 22,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomText(
                          text: widget.department,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Kolors.greyBlue,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 1),
                      blurRadius: 4,
                      color: Kolors.greyBlue.withOpacity(0.2),
                    ),
                    BoxShadow(
                      offset: const Offset(0, -4),
                      blurRadius: 4,
                      color: Kolors.greyBlue.withOpacity(0.2),
                    ),
                  ],
                ),
                child: tabsWidget(context),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    DepartmentFacultiesPage(
                      department: widget.department,
                    ),
                    DepartmentStudentsPage(
                      department: widget.department,
                      departmentDegreesList: widget.departmentDegreesList,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  Widget tabsWidget(BuildContext context) {
    return TabBar(
      controller: _tabController,
      indicator: const TabIndicator(
        indicatorSize: TabIndicatorSize.tiny,
        indicatorHeight: 6,
        indicatorColor: Kolors.primaryColor1,
      ),
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorColor: Kolors.primaryColor1,
      labelColor: Kolors.fontColor,
      labelStyle: const TextStyle(
        fontSize: 16,
        fontFamily: Fonts.HEADING_FONT,
        color: Kolors.fontColor,
        fontWeight: FontWeight.w400,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 16,
        fontFamily: Fonts.HEADING_FONT,
        color: Kolors.greyBlue,
        fontWeight: FontWeight.w400,
      ),
      unselectedLabelColor: Colors.grey[400],
      tabs: const [
        Tab(
          text: "Faculty",
        ),
        Tab(
          text: "Student",
        ),
      ],
    );
  }
}
