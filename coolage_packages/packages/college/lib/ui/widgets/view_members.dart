import 'package:college/ui/pages/department_members.dart';
import 'package:college/ui/pages/group_members.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

class ViewMembersWidget extends StatelessWidget {
  final String groupName;
  final bool isDepartment;
  final List<String> departmentDegreesList;

  const ViewMembersWidget({
    Key? key,
    required this.groupName,
    required this.isDepartment,
    required this.departmentDegreesList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isDepartment) {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DepartmentMembersPage(
                    department: groupName,
                    departmentDegreesList: departmentDegreesList,
                  )));
        } else {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => GroupMembersPage(groupName: groupName)));
        }
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 12,
        ),
        decoration: BoxDecoration(
          color: Kolors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: Kolors.greyBlue.withOpacity(0.5),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/icons/members.png",
              width: 34,
              height: 25,
            ),
            const SizedBox(
              width: 28,
            ),
            const CustomText(
              text: "View Members",
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
            const SizedBox(
              width: 32,
            ),
            IconImagesWid(
              iconName: "arrow_right.png",
              width: 12,
              height: 24,
              color: Kolors.greyBlue.withOpacity(0.5),
            )
          ],
        ),
      ),
    );
  }
}
