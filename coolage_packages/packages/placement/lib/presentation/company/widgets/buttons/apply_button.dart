import 'package:core/core.dart';
import 'package:flutter/material.dart';

class ApplyButton extends StatelessWidget {
  const ApplyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BorderButton(
      onTap: () {},
      text: "Apply",
      height: 40,
      width: 120,
      fontSize: 14,
      color: Kolors.primaryColor1,
      borderRadius: 8,
      fontColor: Kolors.primaryColor1,
    );
  }
}
