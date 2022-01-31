import 'package:coolage_merchant/presentation/core/theme/fonts.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:coolage_merchant/presentation/core/theme/colors.dart';

class NextButton extends StatelessWidget {
  final String? text;
  final Function? onTap;
  final bool? isLoading;
  const NextButton({
    Key? key,
    @required this.onTap,
    @required this.text,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Container(
        height: 60,
        padding: const EdgeInsets.symmetric(
          horizontal: 23,
          vertical: 8,
        ),
        width: 120,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(80),
            bottomLeft: Radius.circular(80),
          ),
          color: Kolors.greyLight,
          gradient: LinearGradient(
            colors: [
              Kolors.purpleStartningColor,
              Kolors.purpleEndingColor,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: isLoading!
            ? const CircularProgressIndicator(
                color: Colors.white,
              )
            : CustomText(
                text: text,
                fontSize: 18,
                color: Colors.white,
              ),
      ),
    );
  }
}
