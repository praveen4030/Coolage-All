import 'package:core/core.dart';
import 'package:flutter/material.dart';

class ShortlistedButton extends StatelessWidget {
  const ShortlistedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      behavior: HitTestBehavior.translucent,
      child: Container(
        alignment: Alignment.center,
        width: 120,
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: Kolors.secondaryColor2,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            CustomText(
              text: "Shortlisted for",
              color: Colors.white.withOpacity(0.5),
              fontSize: 14,
            ),
            const CustomText(
              text: "Round 1",
              color: Colors.white,
              fontSize: 14,
            ),
          ],
        ),
      ),
    );
  }
}
