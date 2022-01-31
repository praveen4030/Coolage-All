import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:flutter/material.dart';

class IconWithBackground extends StatelessWidget {
  final String? iconName;
  final double? backgroundSize;
  final double? iconSize;
  final Function? onTap;
  final Color backgroundColor;
  final Color? iconColor;
  const IconWithBackground({
    Key? key,
    @required this.iconName,
    this.backgroundSize = 50,
    this.iconSize = 25,
    @required this.onTap,
    this.backgroundColor = Colors.white,
    this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Container(
        height: backgroundSize,
        width: backgroundSize,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: Kolors.greyBlue.withOpacity(0.5),
            )
          ],
        ),
        child: Center(
          child: Image.asset(
            'assets/icons/$iconName.png',
            height: iconSize,
            width: iconSize,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
