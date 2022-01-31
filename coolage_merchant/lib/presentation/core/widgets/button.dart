import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:flutter/material.dart';

class ButtonWid extends StatelessWidget {
  final bool isLoading;
  final String? text;
  final double fontSize;
  final Function? onTap;
  final double? width;
  final bool? isDisabled;
  final double? height;
  final Color? color;
  final Color? fontColor;
  const ButtonWid({
    Key? key,
    this.isLoading = false,
    this.text,
    this.fontSize = 17,
    this.isDisabled = false,
    @required this.onTap,
    this.height = 40,
    this.width,
    this.color = Kolors.primaryColor1,
    this.fontColor = Colors.white,
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
        height: height,
        width: width ?? MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          color: isDisabled! ? Colors.grey : color,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: Kolors.greyBlue.withOpacity(0.5),
            )
          ],
        ),
        child: isLoading
            ? buttonCircularProgress()
            : Text(
                text!,
                style: TextStyle(
                  color: fontColor,
                  fontSize: fontSize,
                  fontWeight: FontWeight.w500,
                ),
              ),
      ),
    );
  }

  Widget buttonCircularProgress() {
    return Center(
      child: Container(
        alignment: Alignment.center,
        // margin: EdgeInsets.symmetric(vertical : 6),
        child: const CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation(Colors.white),
        ),
      ),
    );
  }
}
