import 'package:core/core.dart';
import 'package:flutter/material.dart';

class BlogContentWidget extends StatelessWidget {
  final TextEditingController? linkTEC;
  final bool isNonEditablePublishingMode;

  const BlogContentWidget({
    Key? key,
    @required this.linkTEC,
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
            text: "Blog Content",
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomText(
            text: "Add the URL below that contains the blog authored by you. ",
            color: Kolors.greyBlue,
            fontSize: 16,
            fontWeight: FontWeight.w600,
            fontFamily: Fonts.CONTENT_FONT,
          ),
          const SizedBox(
            height: 36,
          ),
          TextFieldBoxWidget(
            isEnabled: !isNonEditablePublishingMode,
            controller: linkTEC,
            hint: "Link",
            validationFn: (val) {
              return val?.isNotEmpty ?? false ? null : 'Please add blog url';
            },
          ),
          const SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }
}
