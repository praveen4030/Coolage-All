import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/theme/fonts.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class TimerWidget extends StatelessWidget {
  final String? time;
  const TimerWidget({
    Key? key,
    @required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Kolors.secondaryColor1, width: 3),
        color: Colors.white,
      ),
      child: CustomText(
        text: time,
        color: Kolors.secondaryColor1,
        fontWeight: FontWeight.w700,
        fontSize: 18,
        fontFamily: Fonts.CONTENT_FONT,
      ),
    );
  }
}
