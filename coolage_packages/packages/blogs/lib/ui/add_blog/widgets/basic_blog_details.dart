import 'package:blogs/ui/add_blog/widgets/blog_tags.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

class BasicBlogDetailsWidget extends StatelessWidget {
  final TextEditingController? titleTEC;
  final TextEditingController? summaryTEC;
  final List<String>? tagsList;
  final bool isNonEditablePublishingMode;
  final Function onChange;

  const BasicBlogDetailsWidget({
    Key? key,
    @required this.titleTEC,
    @required this.summaryTEC,
    @required this.tagsList,
    required this.isNonEditablePublishingMode,
    required this.onChange,
  }) : super(key: key);

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
            text: "Blog Details",
          ),
          const SizedBox(
            height: 32,
          ),
          TextFieldLineWidget(
            isEnabled: !isNonEditablePublishingMode,
            controller: titleTEC,
            hint: "Title",
            validationFn: (val) {
              return val?.isNotEmpty ?? false ? null : 'Please add title';
            },
          ),
          const SizedBox(
            height: 32,
          ),
          BlogTagsWidget(
            tagsList: tagsList,
            isNonEditablePublishingMode: isNonEditablePublishingMode,
            onChange: () {
              onChange();
            },
          ),
          const SizedBox(
            height: 32,
          ),
          TextFieldBoxWidget(
            isEnabled: !isNonEditablePublishingMode,
            controller: summaryTEC,
            minLinesForHeight: 4,
            hint: "Summary",
            maxLength: 200,
            validationFn: (val) {
              return val?.isNotEmpty ?? false ? null : 'Please add summary';
            },
          ),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
