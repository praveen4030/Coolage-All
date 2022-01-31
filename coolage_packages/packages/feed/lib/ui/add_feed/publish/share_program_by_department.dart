import 'package:college/college.dart';
import 'package:core/core.dart';
import 'package:feed/domain/feed_functions.dart';
import 'package:feed/ui/add_feed/dialogs/select_groups_dialog.dart';
import 'package:feed/ui/add_feed/widgets/select_group_tile.dart';
import 'package:flutter/material.dart';

class ShareProgramByDepartmentWidget extends StatefulWidget {
  final List<String> selectedGroupsList;
  final String groupName;
  const ShareProgramByDepartmentWidget({
    Key? key,
    required this.selectedGroupsList,
    required this.groupName,
  }) : super(key: key);

  @override
  _ShareProgramByDepartmentWidgetState createState() =>
      _ShareProgramByDepartmentWidgetState();
}

class _ShareProgramByDepartmentWidgetState
    extends State<ShareProgramByDepartmentWidget> {
  @override
  Widget build(BuildContext context) {
    final selectedDepp = FeedFunctions.getSelectedDepartments(
        widget.selectedGroupsList, widget.groupName);
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (!FeedFunctions.checkIfAnyProgramGroupSelected(
              widget.selectedGroupsList, widget.groupName))
            Container(
              padding: const EdgeInsets.only(
                top: 24,
                bottom: 6,
              ),
              child: const CustomText(
                text: "No department selected !",
                color: Kolors.greyBlue,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: Fonts.HEADING_FONT,
              ),
            )
          else
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: selectedDepp.length,
                itemBuilder: (context, index) {
                  return SelectGroupTile(
                    onCancel: () {
                      setState(() {
                        FeedFunctions.removeDepartmentPublishTags(
                            widget.selectedGroupsList,
                            widget.groupName,
                            selectedDepp[index]);
                      });
                    },
                    onSelect: () {
                      showYearsForDepartmentDialog(selectedDepp[index]);
                    },
                    text: selectedDepp[index],
                  );
                },
              ),
            ),
          const SizedBox(
            height: 18,
          ),
          CircleAddButton(
            onTap: () {
              showDepartmentsDialog();
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Future<void> showYearsForDepartmentDialog(String department) async {
    final selectedYearGroups =
        FeedFunctions.getSelectedSecondGroupsFromDepartment(
            widget.selectedGroupsList, widget.groupName, department);
    await showDialog(
      context: context,
      builder: (context) {
        return SelectGroupsDialog(
          selectedItemsList: selectedYearGroups,
          title: department,
          onDone: (value) {
            if (value == null) {
              return;
            }
            final selectedList = value as List<String>;
            FeedFunctions.removeDepartmentPublishTags(
                widget.selectedGroupsList, widget.groupName, department);

            for (final group in selectedList) {
              widget.selectedGroupsList
                  .add("${widget.groupName}_${department}_$group");
            }
            setState(() {});
            Navigator.of(context).pop();
          },
          list: FeedFunctions.getYearGroups(context, widget.groupName),
        );
      },
    );
  }

  Future<void> showDepartmentsDialog() async {
    final selectedList = FeedFunctions.getSelectedDepartments(
        widget.selectedGroupsList, widget.groupName);
    final itemsList = CollegeGetters.getCurrentUserCollegeDepartments(context);
    debugPrint(selectedList.toString());
    await showDialog(
      context: context,
      builder: (context) {
        return SelectItemsListDialog(
          selectedList: selectedList,
          itemsList: itemsList,
          onItemTap: (String value, bool isAdded) {
            if (isAdded) {
              final yearGroups =
                  FeedFunctions.getYearGroups(context, widget.groupName);
              for (final group in yearGroups) {
                String s = "${widget.groupName}_${value}_$group";
                if (!widget.selectedGroupsList.contains(s)) {
                  widget.selectedGroupsList.add(s);
                }
              }
            } else {
              FeedFunctions.removeDepartmentPublishTags(
                  widget.selectedGroupsList, widget.groupName, value);
            }
          },
        );
      },
    ).then((value) {
      setState(() {});
    });
  }
}
