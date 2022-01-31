import 'package:core/core.dart';
import 'package:flutter/material.dart';

class BlogVisibilityWidget extends StatelessWidget {
  final int? visibilityIndex;
  final Function? onVisibilityChange;
  final bool isNonEditablePublishingMode;

  const BlogVisibilityWidget({
    Key? key,
    @required this.visibilityIndex,
    @required this.onVisibilityChange,
    required this.isNonEditablePublishingMode,
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
            text: "Visibility",
          ),
          const SizedBox(
            height: 32,
          ),
          RadioTileWidget(
            text: "Your College",
            onChange: () {
              if (isNonEditablePublishingMode) return;

              onVisibilityChange!(1);
            },
            value: visibilityIndex,
            grpNo: 1,
          ),
          const SizedBox(
            height: 32,
          ),
          RadioTileWidget(
            text: "Your City",
            onChange: () {
              if (isNonEditablePublishingMode) return;

              onVisibilityChange!(2);
            },
            value: visibilityIndex,
            grpNo: 2,
          ),
          const SizedBox(
            height: 32,
          ),
          RadioTileWidget(
            text: "Open to Everyone",
            onChange: () {
              if (isNonEditablePublishingMode) return;

              onVisibilityChange!(3);
            },
            value: visibilityIndex,
            grpNo: 3,
          ),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
