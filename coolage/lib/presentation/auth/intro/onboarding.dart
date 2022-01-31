import 'package:coolage/presentation/auth/intro/onboarding_tile.dart';
import 'package:coolage/presentation/auth/login.dart';
import 'package:coolage/presentation/auth/onboarding/intro_data.dart';
import 'package:coolage/presentation/auth/onboarding/widgets/back_button.dart';
import 'package:coolage/presentation/auth/onboarding/widgets/next_button.dart';
import 'package:coolage/presentation/auth/onboarding/widgets/slider_tile.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

class OnboardingWidget extends StatefulWidget {
  const OnboardingWidget({Key? key}) : super(key: key);

  @override
  _OnboardingWidgetState createState() => _OnboardingWidgetState();
}

class _OnboardingWidgetState extends State<OnboardingWidget> {
  List<SliderModel> mySlides = [];
  int currentIndex = 0;
  PageController controller = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    mySlides = getOnboardingData();
  }

  Widget pageIndexIndicator(bool isCurrentPage) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      height: isCurrentPage ? 5 : 6.0,
      width: isCurrentPage ? 24 : 6,
      decoration: BoxDecoration(
        color: isCurrentPage ? Kolors.primaryColor1 : Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                for (int i = 0; i < mySlides.length; i++)
                  currentIndex == i
                      ? pageIndexIndicator(true)
                      : pageIndexIndicator(false),
              ],
            ),
          ),
          Expanded(
            child: PageView.builder(
                controller: controller,
                onPageChanged: (val) {
                  setState(() {
                    currentIndex = val;
                  });
                },
                itemCount: mySlides.length,
                itemBuilder: (context, index) {
                  return OnboardingTile(
                    sliderModel: mySlides[index],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
