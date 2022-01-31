import 'package:core/core.dart';
import 'package:flutter/material.dart';

/// [on the scale of 10]
class OnboardingProgressBar extends StatelessWidget {
  final int stepNo;
  final int totalSteps;
  const OnboardingProgressBar({
    Key? key,
    required this.stepNo,
    this.totalSteps = 11,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      child: Row(
        children: [
          Expanded(
            flex: stepNo,
            child: Container(
              color: Kolors.primaryColor1,
            ),
          ),
          Expanded(
            flex: totalSteps - stepNo,
            child: Container(
              color: Kolors.lightGreyBlue,
            ),
          ),
        ],
      ),
    );
  }
}
