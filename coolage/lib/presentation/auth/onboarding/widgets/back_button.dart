import 'package:core/core.dart';
import 'package:flutter/material.dart';

class BackIntroButton extends StatelessWidget {
  final String? text;
  final Function? onTap;
  const BackIntroButton({
    Key? key,
    @required this.onTap,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Container(
        height: 60,
        padding: const EdgeInsets.symmetric(
          horizontal: 23,
          vertical: 8,
        ),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(80),
            bottomRight: Radius.circular(80),
          ),
          color: Kolors.greyLightBlue,
        ),
        child: CustomText(
          text: text,
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}
