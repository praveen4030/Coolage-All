import 'package:core/core.dart';
import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  final bool isLoading;
  final Function? onTap;
  const SaveButton({
    Key? key,
    @required this.onTap,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!isLoading) {
          onTap!();
        }
      },
      behavior: HitTestBehavior.translucent,
      child: Container(
        alignment: Alignment.center,
        height: 36,
        width: 80,
        padding: const EdgeInsets.symmetric(
          horizontal: 6,
        ),
        decoration: BoxDecoration(
          color: Kolors.primaryColor1,
          borderRadius: BorderRadius.circular(8),
        ),
        child: isLoading
            ? buttonCircularProgress()
            : Row(
                children: const [
                  IconImagesWid(
                    iconName: 'tick.png',
                    color: Colors.white,
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  CustomText(
                    text: "Save",
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: Fonts.HEADING_FONT,
                  ),
                ],
              ),
      ),
    );
  }

  Container buttonCircularProgress() {
    return Container(
      height: 24,
      width: 24,
      alignment: Alignment.center,
      // margin: EdgeInsets.symmetric(vertical : 6),
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(Colors.white),
      ),
    );
  }
}
