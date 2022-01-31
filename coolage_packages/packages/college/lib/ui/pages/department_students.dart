import 'package:college/application/college_groups/college_groups_bloc.dart';
import 'package:college/ui/widgets/student_group_tile.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DepartmentStudentsPage extends StatelessWidget {
  final String department;
  final List<String> departmentDegreesList;
  const DepartmentStudentsPage({
    Key? key,
    required this.department,
    required this.departmentDegreesList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CollegeGroupsBloc, CollegeGroupsState>(
      builder: (context, state) {
        final degrees = Functions.getDepartmentDegreeYearGroups(
            departmentDegreesList, context);
        return Container(
          color: Colors.white,
          child: ListView(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: degrees.length,
                itemBuilder: (context, index) {
                  return StudentGroupTile(
                    group: degrees[index],
                    department: department,
                  );
                },
              ),
              const SizedBox(
                height: 80,
              ),
            ],
          ),
        );
      },
    );
  }
}
