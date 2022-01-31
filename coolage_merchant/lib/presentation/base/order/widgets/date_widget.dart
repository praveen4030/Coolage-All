import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/theme/fonts.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class DateWidget extends StatelessWidget {
  final DateTime? dateTime;
  const DateWidget({
    Key? key,
    @required this.dateTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Kolors.greyLightBlue,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
      child: CustomText(
        text: getText(),
        color: Colors.white,
        fontWeight: FontWeight.w400,
        fontFamily: Fonts.CONTENT_FONT,
        fontSize: 12,
      ),
    );
  }

  String getText() {
    String s = '${dateTime!.day}/${dateTime!.month}/${dateTime!.year}';

    return s;
  }
}
