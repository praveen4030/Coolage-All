import 'package:core/core.dart';
import 'package:flutter/material.dart';

class NotSelectedButton extends StatelessWidget {
  const NotSelectedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonWid(
      onTap: () {},
      text: "Not selected",
      height: 40,
      width: 120,
      color: Kolors.greyBlue.withOpacity(0.5),
      borderRadius: 8,
      fontColor: Colors.white,
      fontSize: 14,
    );
  }
}
