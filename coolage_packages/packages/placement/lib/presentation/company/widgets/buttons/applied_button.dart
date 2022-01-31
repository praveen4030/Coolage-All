import 'package:core/core.dart';
import 'package:flutter/material.dart';

class AppliedButton extends StatelessWidget {
  const AppliedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonWid(
      onTap: () {},
      text: "Applied",
      height: 40,
      width: 120,
      fontSize: 14,
      color: Kolors.primaryColor1,
      borderRadius: 8,
    );
  }
}
