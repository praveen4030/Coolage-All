import 'package:college/college.dart';
import 'package:core/core.dart';
import 'package:feed/domain/feed_functions.dart';
import 'package:feed/ui/add_feed/dialogs/select_groups_dialog.dart';
import 'package:feed/ui/add_feed/widgets/select_group_tile.dart';
import 'package:flutter/material.dart';

class ShareProgramByYearWidget extends StatefulWidget {
  final List<String> selectedGroupsList;
  final String groupName;
  const ShareProgramByYearWidget({
    Key? key,
    required this.selectedGroupsList,
    required this.groupName,
  }) : super(key: key);

  @override
  _ShareProgramByYearWidgetState createState() =>
      _ShareProgramByYearWidgetState();
}

class _ShareProgramByYearWidgetState extends State<ShareProgramByYearWidget> {
  @override
  Widget build(BuildContext context) {
    final selectedYearGroups = FeedFunctions.getSelectedYearGroups(
        widget.selectedGroupsList, widget.groupName);
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          if (!FeedFunctions.checkIfAnyProgramGroupSelected(
              widget.selectedGroupsList, widget.groupName))
            Container(
              padding: const EdgeInsets.only(
                top: 24,
                bottom: 6,
              ),
              child: const CustomText(
                text: "No group selected !",
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
                itemCount: selectedYearGroups.length,
                itemBuilder: (context, index) {
                  return SelectGroupTile(
                    onCancel: () {
                      setState(() {
                        FeedFunctions.removeSubGroupPublishTags(
                            widget.selectedGroupsList,
                            widget.groupName,
                            selectedYearGroups[index]);
                      });
                    },
                    onSelect: () {
                      showDepartmentsForYearsDialog(selectedYearGroups[index]);
                    },
                    text: selectedYearGroups[index],
                  );
                },
              ),
            ),
          const SizedBox(
            height: 18,
          ),
          CircleAddButton(
            onTap: () {
              showYearGroupsDialog();
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Future<void> showDepartmentsForYearsDialog(String yearGroup) async {
    final selectedDepartments =
        FeedFunctions.getSelectedDepartmentsFromSubGroups(
            widget.selectedGroupsList, widget.groupName, yearGroup);
    await showDialog(
      context: context,
      builder: (context) {
        return SelectGroupsDialog(
          selectedItemsList: selectedDepartments,
          title: yearGroup,
          onDone: (value) {
            if (value == null) {
              return;
            }
            final selectedList = value as List<String>;
            FeedFunctions.removeSubGroupPublishTags(
                widget.selectedGroupsList, widget.groupName, yearGroup);

            for (final department in selectedList) {
              widget.selectedGroupsList
                  .add("${widget.groupName}_${department}_$yearGroup");
            }
            setState(() {});
            Navigator.of(context).pop();
          },
          list: CollegeGetters.getCurrentUserCollegeDepartments(context),
        );
      },
    );
  }

  Future<void> showYearGroupsDialog() async {
    final selectedList = FeedFunctions.getSelectedYearGroups(
        widget.selectedGroupsList, widget.groupName);
    final itemsList = FeedFunctions.getYearGroups(context, widget.groupName);
    await showDialog(
      context: context,
      builder: (context) {
        return SelectItemsListDialog(
          selectedList: selectedList,
          itemsList: itemsList,
          onItemTap: (String value, bool isAdded) {
            if (isAdded) {
              final departments =
                  CollegeGetters.getCurrentUserCollegeDepartments(context);
              for (final depp in departments) {
                String s = "${widget.groupName}_${depp}_$value";
                if (!widget.selectedGroupsList.contains(s)) {
                  widget.selectedGroupsList.add(s);
                }
              }
            } else {
              FeedFunctions.removeSubGroupPublishTags(
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
