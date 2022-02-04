import 'package:core/core.dart';
import 'package:flutter/material.dart';

class NumberCountWidget extends StatelessWidget {
  final int count;
  const NumberCountWidget({
    Key? key,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Kolors.greyBlue.withOpacity(0.5),
      ),
      child: Center(
        child: CustomText(
          text: count.toString(),
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}
