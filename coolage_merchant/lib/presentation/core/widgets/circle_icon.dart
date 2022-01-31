import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget {
  final String? icon;
  final Color? color;
  final double? height;
  final double? width;
  final Function? onTap;
  final Color? backgroundColor;
  const CircleIcon({
    Key? key,
    this.color,
    @required this.icon,
    @required this.height,
    @required this.width,
    @required this.onTap,
    this.backgroundColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: backgroundColor,
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                color: Kolors.greyBlue.withOpacity(0.5),
              )
            ],
          ),
          child: Image.asset(
            'assets/icons/$icon.png',
            height: height,
            width: width,
            color: color,
          )),
    );
  }
}
