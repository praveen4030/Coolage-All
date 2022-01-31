import 'package:core/core.dart';
import 'package:flutter/material.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Container(
        alignment: Alignment.center,
        height: 36,
        width: 80,
        padding: const EdgeInsets.symmetric(
          horizontal: 6,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Kolors.redPrimaryColor,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            IconImagesWid(
              iconName: 'cancel.png',
              color: Kolors.redPrimaryColor,
              width: 10,
              height: 10,
            ),
            SizedBox(
              width: 4,
            ),
            CustomText(
              text: "Cancel",
              color: Kolors.redPrimaryColor,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: Fonts.HEADING_FONT,
            ),
          ],
        ),
      ),
    );
  }
}
