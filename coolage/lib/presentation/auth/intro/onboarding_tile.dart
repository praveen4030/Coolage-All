import 'package:coolage/presentation/auth/onboarding/intro_data.dart';
import 'package:core/core.dart';

import 'package:flutter/material.dart';

class OnboardingTile extends StatelessWidget {
  final SliderModel? sliderModel;

  const OnboardingTile({this.sliderModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Center(
              child: Image.asset(
                sliderModel!.imageAssetPath!,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CustomText(
                  text: sliderModel!.title,
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Center(
                child: CustomText(
                  text: sliderModel!.desc,
                  fontSize: 12,
                  textAlign: TextAlign.center,
                  color: Kolors.greyBlue,
                  fontFamily: Fonts.CONTENT_FONT,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
