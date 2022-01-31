import 'package:core/core.dart';
import 'package:flutter/material.dart';

class ExpiredButton extends StatelessWidget {
  const ExpiredButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BorderButton(
      onTap: () {},
      text: "Expired",
      height: 40,
      width: 120,
      color: Kolors.greyBlue.withOpacity(0.5),
      borderRadius: 8,
      fontSize: 14,
      fontColor: Kolors.greyBlue.withOpacity(0.5),
    );
  }
}
