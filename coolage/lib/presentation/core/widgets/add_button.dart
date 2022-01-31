import 'package:core/core.dart';
import 'package:flutter/material.dart';

class AddButtonWidget extends StatelessWidget {
  final Function onTap;
  const AddButtonWidget({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        height: 44,
        width: 44,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Kolors.greyWhite,
        ),
        child: const Center(
          child: IconImagesWid(
            iconName: 'add.png',
            color: Kolors.greyBlue,
            height: 24,
            width: 24,
          ),
        ),
      ),
    );
  }
}
