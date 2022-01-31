import 'package:core/core.dart';
import 'package:flutter/material.dart';

class CloseForYouButton extends StatelessWidget {
  const CloseForYouButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BorderButton(
      onTap: () {},
      text: "Closed for you",
      height: 40,
      width: 120,
      fontSize: 14,
      color: Kolors.redColor,
      borderRadius: 8,
      fontColor: Kolors.redColor,
    );
  }
}
