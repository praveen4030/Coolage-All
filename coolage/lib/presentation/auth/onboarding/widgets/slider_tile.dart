import 'package:coolage/presentation/auth/onboarding/intro_data.dart';
import 'package:core/core.dart';

import 'package:flutter/material.dart';

class SlideTile extends StatelessWidget {
  final SliderModel? sliderModel;

  const SlideTile({this.sliderModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Image.asset(
          sliderModel!.imageAssetPath!,
          height: 380,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fill,
        ),
        const SizedBox(
          height: 40,
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
                  color: Kolors.primaryColor1,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: CustomText(
                  text: sliderModel!.desc,
                  fontSize: 14,
                  textAlign: TextAlign.center,
                  color: Kolors.fontColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
