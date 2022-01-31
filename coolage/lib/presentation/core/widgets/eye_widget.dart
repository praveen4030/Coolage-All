import 'package:core/core.dart';
import 'package:flutter/material.dart';

class EyeWidget extends StatelessWidget {
  final bool isVisible;
  final Function? onTap;
  const EyeWidget({
    Key? key,
    required this.isVisible,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      child: Container(
        height: 32,
        width: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Kolors.greyWhite,
        ),
        child: Center(
          child: IconImagesWid(
            iconName: isVisible ? "visible.png" : 'invisible.png',
            color: Kolors.greyBlue,
            height: 18,
            width: 18,
          ),
        ),
      ),
    );
  }
}
