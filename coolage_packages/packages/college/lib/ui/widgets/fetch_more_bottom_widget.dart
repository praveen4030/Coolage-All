import 'package:core/core.dart';
import 'package:flutter/material.dart';

class FetchMoreBottomWidget extends StatelessWidget {
  final Function onTap;
  const FetchMoreBottomWidget({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        height: 48,
        width: 48,
        margin: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Kolors.white,
          // borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: Kolors.greyBlack.withOpacity(0.25),
            ),
          ],
        ),
        child: const Center(
          child: CustomText(
            text: "+",
            fontWeight: FontWeight.w900,
            fontSize: 32,
            color: Kolors.greyBlue,
          ),
        ),
      ),
    );
  }
}
