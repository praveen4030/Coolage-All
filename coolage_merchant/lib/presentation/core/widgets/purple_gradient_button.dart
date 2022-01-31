import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:flutter/material.dart';

class PurpleGradientButton extends StatelessWidget {
  final bool isLoading;
  final String? text;
  final double fontSize;
  final Function? onTap;
  final double? width;
  final bool? isDisabled;
  const PurpleGradientButton({
    Key? key,
    this.isLoading = false,
    this.text,
    this.fontSize = 17,
    this.isDisabled = false,
    @required this.onTap,
    this.width,
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
        width: width ?? MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(
          vertical: isLoading ? 0 : 14,
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          color: isDisabled! ? Colors.grey : Kolors.primaryColor1,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: !isDisabled!
                ? [
                    Kolors.primaryColor1.withOpacity(0.8),
                    Kolors.primaryColor4,
                  ]
                : [],
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: isLoading
            ? buttonCircularProgress()
            : Text(
                text!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: fontSize,
                  fontWeight: FontWeight.w500,
                ),
              ),
      ),
    );
  }

  Container buttonCircularProgress() {
    return Container(
      alignment: Alignment.center,
      // margin: EdgeInsets.symmetric(vertical : 6),
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: const CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(Colors.white),
      ),
    );
  }
}
