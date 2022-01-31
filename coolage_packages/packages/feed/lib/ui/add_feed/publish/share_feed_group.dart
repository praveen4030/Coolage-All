import 'package:core/core.dart';
import 'package:feed/domain/feed_functions.dart';
import 'package:feed/ui/add_feed/publish/share_program_by_department.dart';
import 'package:feed/ui/add_feed/publish/share_program_by_year.dart';
import 'package:feed/ui/add_feed/widgets/feed_dropdown.dart';
import 'package:flutter/material.dart';

class ShareFeedGroupWidget extends StatefulWidget {
  final List<String> selectedGroupsList;
  final String groupName;
  const ShareFeedGroupWidget({
    Key? key,
    required this.selectedGroupsList,
    required this.groupName,
  }) : super(key: key);

  @override
  State<ShareFeedGroupWidget> createState() => _ShareFeedGroupWidgetState();
}

class _ShareFeedGroupWidgetState extends State<ShareFeedGroupWidget> {
  String selectedCategory = "Departments";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.only(
          top: 24,
          left: 16,
          right: 16,
          bottom: 12,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Kolors.greyWhite,
        ),
        child: Column(
          children: [
            Row(
              children: [
                const CustomText(
                  text: "Select by : ",
                  color: Kolors.greyBlack,
                  fontSize: 16,
                  fontFamily: Fonts.HEADING_FONT,
                  fontWeight: FontWeight.w400,
                ),
                const Spacer(),
                CheckboxWidget(
                  isSelected: FeedFunctions.checkifAllProgramSelected(
                      context, widget.selectedGroupsList, widget.groupName),
                  text: "ALL",
                  onChange: () {
                    if (FeedFunctions.checkifAllProgramSelected(
                        context, widget.selectedGroupsList, widget.groupName)) {
                      setState(() {
                        FeedFunctions.removeGroupPublishTags(
                            widget.selectedGroupsList, widget.groupName);
                      });
                    } else {
                      setState(() {
                        FeedFunctions.selectAllForProgram(context,
                            widget.selectedGroupsList, widget.groupName);
                      });
                    }
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FeedDropdownWidget(
                      onChanged: (val) {
                        setState(() {
                          selectedCategory = val as String;
                        });
                      },
                      itemsList: const [
                        "Departments",
                        "Year",
                      ],
                      selectedValue: selectedCategory,
                    ),
                    if (selectedCategory == "Departments")
                      ShareProgramByDepartmentWidget(
                        selectedGroupsList: widget.selectedGroupsList,
                        groupName: widget.groupName,
                      )
                    else
                      ShareProgramByYearWidget(
                        selectedGroupsList: widget.selectedGroupsList,
                        groupName: widget.groupName,
                      )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
