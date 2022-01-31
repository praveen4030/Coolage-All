import 'package:core/core.dart';
import 'package:flutter/material.dart';

class NumberWidget extends StatelessWidget {
  final int number;
  const NumberWidget({
    Key? key,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      decoration: const BoxDecoration(
        color: Kolors.secondaryColor1,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: CustomText(
          text: number.toString(),
          fontSize: 12,
          color: Colors.white,
        ),
      ),
    );
  }
}
