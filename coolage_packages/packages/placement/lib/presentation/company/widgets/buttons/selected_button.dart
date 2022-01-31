import 'package:core/core.dart';
import 'package:flutter/material.dart';

class SelectedButton extends StatelessWidget {
  const SelectedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonWid(
      onTap: () {},
      text: "Selected",
      height: 40,
      width: 120,
      fontSize: 14,
      color: Kolors.lightGreenColor,
      borderRadius: 8,
    );
  }
}
