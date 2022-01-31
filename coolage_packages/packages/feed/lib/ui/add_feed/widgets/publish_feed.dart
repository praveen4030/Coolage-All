import 'package:core/core.dart';
import 'package:feed/domain/feed_functions.dart';
import 'package:feed/ui/add_feed/publish/share_feed_faculty.dart';
import 'package:feed/ui/add_feed/publish/share_feed_group.dart';
import 'package:feed/ui/add_feed/publish/share_feed_phd_group.dart';
import 'package:feed/ui/add_feed/widgets/add_individual.dart';
import 'package:flutter/material.dart';

class PublishFeedWidget extends StatefulWidget {
  final List<String> selectedGroupsList;
  final bool isNonEditablePublishingMode;
  const PublishFeedWidget({
    Key? key,
    required this.selectedGroupsList,
    this.isNonEditablePublishingMode = false,
  }) : super(key: key);

  @override
  State<PublishFeedWidget> createState() => _PublishFeedWidgetState();
}

class _PublishFeedWidgetState extends State<PublishFeedWidget> {
  List<String> selectedGroupsList = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedGroupsList = widget.selectedGroupsList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        children: [
          const CardHeaderTextWidget(
            text: "Publish to : ",
          ),
          const SizedBox(
            height: 32,
          ),
          RadioTileWidget(
            grpNo: 1,
            value: FeedFunctions.checkifGroupSelected(
                    widget.selectedGroupsList, "All")
                ? 1
                : null,
            text: "All",
            onChange: () {
              if (widget.isNonEditablePublishingMode) return;

              if (FeedFunctions.checkifGroupSelected(
                  selectedGroupsList, "All")) {
                setState(() {
                  selectedGroupsList.remove("All");
                });
              } else {
                setState(() {
                  selectedGroupsList.add("All");
                  selectedGroupsList.remove(Constants.UG_GROUP);
                  selectedGroupsList.remove(Constants.PG_GROUP);
                  selectedGroupsList.remove(Constants.PHD_GROUP);
                  selectedGroupsList.remove(Constants.FACULTY_GROUP);
                  selectedGroupsList.remove(Constants.INDIVIDUAL_GROUP);
                });
              }
            },
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16),
            child: const Divider(
              color: Kolors.greyLightBlue,
              height: 1,
            ),
          ),
          RadioTileWidget(
            grpNo: 2,
            value: FeedFunctions.checkifGroupSelected(
                    widget.selectedGroupsList, Constants.UG_GROUP)
                ? 2
                : null,
            text: "UG Students",
            onChange: () {
              if (widget.isNonEditablePublishingMode) return;

              if (FeedFunctions.checkifGroupSelected(
                  widget.selectedGroupsList, Constants.UG_GROUP)) {
                setState(() {
                  selectedGroupsList.remove(Constants.UG_GROUP);
                });
              } else {
                setState(() {
                  selectedGroupsList.remove("All");
                  selectedGroupsList.add(Constants.UG_GROUP);
                });
              }
            },
          ),
          if (FeedFunctions.checkifGroupSelected(
              widget.selectedGroupsList, Constants.UG_GROUP))
            ShareFeedGroupWidget(
              groupName: Constants.UG_GROUP,
              selectedGroupsList: widget.selectedGroupsList,
            ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16),
            child: const Divider(
              color: Kolors.greyLightBlue,
              height: 1,
            ),
          ),
          RadioTileWidget(
            grpNo: 3,
            value: FeedFunctions.checkifGroupSelected(
                    widget.selectedGroupsList, Constants.PG_GROUP)
                ? 3
                : null,
            text: "PG Students",
            onChange: () {
              if (widget.isNonEditablePublishingMode) return;

              if (FeedFunctions.checkifGroupSelected(
                  widget.selectedGroupsList, Constants.PG_GROUP)) {
                setState(() {
                  selectedGroupsList.remove(Constants.PG_GROUP);
                });
              } else {
                setState(() {
                  selectedGroupsList.remove("All");
                  selectedGroupsList.add(Constants.PG_GROUP);
                });
              }
            },
          ),
          if (FeedFunctions.checkifGroupSelected(
              widget.selectedGroupsList, Constants.PG_GROUP))
            ShareFeedGroupWidget(
              groupName: Constants.PG_GROUP,
              selectedGroupsList: widget.selectedGroupsList,
            ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16),
            child: const Divider(
              color: Kolors.greyLightBlue,
              height: 1,
            ),
          ),
          RadioTileWidget(
            grpNo: 4,
            value: FeedFunctions.checkifGroupSelected(
                    widget.selectedGroupsList, Constants.PHD_GROUP)
                ? 4
                : null,
            text: "Phd Students",
            onChange: () {
              if (widget.isNonEditablePublishingMode) return;

              if (FeedFunctions.checkifGroupSelected(
                  widget.selectedGroupsList, Constants.PHD_GROUP)) {
                setState(() {
                  selectedGroupsList.remove(Constants.PHD_GROUP);
                });
              } else {
                setState(() {
                  selectedGroupsList.remove("All");
                  selectedGroupsList.add(Constants.PHD_GROUP);
                });
              }
            },
          ),
          if (FeedFunctions.checkifGroupSelected(
              widget.selectedGroupsList, Constants.PHD_GROUP))
            ShareFeedPhdGroupWidget(
              groupName: Constants.PHD_GROUP,
              selectedGroupsList: widget.selectedGroupsList,
            ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16),
            child: const Divider(
              color: Kolors.greyLightBlue,
              height: 1,
            ),
          ),
          RadioTileWidget(
            grpNo: 5,
            value: FeedFunctions.checkifGroupSelected(
                    widget.selectedGroupsList, Constants.FACULTY_GROUP)
                ? 5
                : null,
            text: "Faculty",
            onChange: () async {
              if (widget.isNonEditablePublishingMode) return;

              if (FeedFunctions.checkifGroupSelected(
                  widget.selectedGroupsList, Constants.FACULTY_GROUP)) {
                setState(() {
                  selectedGroupsList.remove(Constants.FACULTY_GROUP);
                });
              } else {
                setState(() {
                  selectedGroupsList.remove("All");
                  selectedGroupsList.add(Constants.FACULTY_GROUP);
                });
              }
            },
          ),
          if (FeedFunctions.checkifGroupSelected(
              widget.selectedGroupsList, Constants.FACULTY_GROUP))
            ShareFeedFacultyWidget(
              groupName: Constants.FACULTY_GROUP,
              selectedGroupsList: widget.selectedGroupsList,
            ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16),
            child: const Divider(
              color: Kolors.greyLightBlue,
              height: 1,
            ),
          ),
          RadioTileWidget(
            grpNo: 6,
            value: FeedFunctions.checkifGroupSelected(
                    widget.selectedGroupsList, Constants.INDIVIDUAL_GROUP)
                ? 6
                : null,
            text: "Individuals",
            onChange: () {
              if (widget.isNonEditablePublishingMode) return;

              if (FeedFunctions.checkifGroupSelected(
                  widget.selectedGroupsList, Constants.INDIVIDUAL_GROUP)) {
                setState(() {
                  selectedGroupsList.remove(Constants.INDIVIDUAL_GROUP);
                });
              } else {
                setState(() {
                  selectedGroupsList.remove("All");
                  selectedGroupsList.add(Constants.INDIVIDUAL_GROUP);
                });
              }
            },
          ),
          if (FeedFunctions.checkifGroupSelected(
              widget.selectedGroupsList, Constants.INDIVIDUAL_GROUP))
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
              ),
              child: AddIndividualWidget(
                selectedGroupsList: widget.selectedGroupsList,
              ),
            ),
        ],
      ),
    );
  }
}
