import 'package:coolage_merchant/presentation/core/theme/fonts.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:coolage_merchant/presentation/core/theme/colors.dart';

class TextFieldTopText extends StatelessWidget {
  final String? text;
  const TextFieldTopText({
    Key? key,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 4,
      ),
      child: CustomText(
        text: text!,
        fontFamily: Fonts.CONTENT_FONT,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
