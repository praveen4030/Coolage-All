import 'package:core/core.dart';
import 'package:flutter/material.dart';

class FeedDetailsWidget extends StatelessWidget {
  final TextEditingController? titleTEC;
  final TextEditingController? summaryTEC;
  final String? category;
  final Function? selectCategoryFn;
  final bool isNonEditablePublishingMode;

  const FeedDetailsWidget({
    Key? key,
    @required this.titleTEC,
    @required this.summaryTEC,
    @required this.category,
    @required this.selectCategoryFn,
    this.isNonEditablePublishingMode = false,
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
            text: "Feed Details",
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
          DropDownList(
            list: Functions.getFeedCategories(),
            onChanged: (value) {
              if (isNonEditablePublishingMode) return;
              selectCategoryFn!(value);
            },
            value: category,
            hint: "Category",
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
