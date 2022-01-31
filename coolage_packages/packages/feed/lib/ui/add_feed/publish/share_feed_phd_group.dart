import 'package:college/college.dart';
import 'package:core/core.dart';
import 'package:feed/domain/feed_functions.dart';
import 'package:feed/ui/add_feed/widgets/select_group_tile.dart';
import 'package:flutter/material.dart';

class ShareFeedPhdGroupWidget extends StatefulWidget {
  final List<String> selectedGroupsList;
  final String groupName;
  const ShareFeedPhdGroupWidget({
    Key? key,
    required this.selectedGroupsList,
    required this.groupName,
  }) : super(key: key);

  @override
  State<ShareFeedPhdGroupWidget> createState() =>
      _ShareFeedPhdGroupWidgetState();
}

class _ShareFeedPhdGroupWidgetState extends State<ShareFeedPhdGroupWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                text: "Select : ",
                color: Kolors.greyBlack,
                fontSize: 16,
                fontFamily: Fonts.HEADING_FONT,
                fontWeight: FontWeight.w400,
              ),
              const Spacer(),
              CheckboxWidget(
                isSelected: FeedFunctions.checkifAllPhdDeppSelected(
                    context, widget.selectedGroupsList, widget.groupName),
                text: "ALL",
                onChange: () {
                  if (FeedFunctions.checkifAllPhdDeppSelected(
                      context, widget.selectedGroupsList, widget.groupName)) {
                    setState(() {
                      FeedFunctions.removeGroupPublishTags(
                          widget.selectedGroupsList, widget.groupName);
                    });
                  } else {
                    setState(() {
                      FeedFunctions.selectAllForPhd(
                          context, widget.selectedGroupsList, widget.groupName);
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
                  phdDepartmentsGroup(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget phdDepartmentsGroup() {
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
                    isEditable: false,
                    onCancel: () {
                      setState(() {
                        FeedFunctions.removePhdDepartmentPublishTags(
                            widget.selectedGroupsList,
                            widget.groupName,
                            selectedDepp[index]);
                      });
                    },
                    onSelect: () {},
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
              String s = "${widget.groupName}_$value";
              if (!widget.selectedGroupsList.contains(s)) {
                widget.selectedGroupsList.add(s);
              }
            } else {
              FeedFunctions.removePhdDepartmentPublishTags(
                widget.selectedGroupsList,
                widget.groupName,
                value,
              );
            }
          },
        );
      },
    ).then((value) {
      setState(() {});
    });
  }
}
