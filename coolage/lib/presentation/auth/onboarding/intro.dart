import 'package:coolage/presentation/auth/login.dart';
import 'package:coolage/presentation/auth/onboarding/intro_data.dart';
import 'package:coolage/presentation/auth/onboarding/widgets/back_button.dart';
import 'package:coolage/presentation/auth/onboarding/widgets/next_button.dart';
import 'package:coolage/presentation/auth/onboarding/widgets/slider_tile.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  List<SliderModel> mySlides = [];
  int currentIndex = 0;
  PageController controller = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    mySlides = getSlides();
  }

  Widget pageIndexIndicator(bool isCurrentPage) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      height: isCurrentPage ? 5 : 6.0,
      width: isCurrentPage ? 27 : 6,
      decoration: BoxDecoration(
        color: isCurrentPage ? Kolors.greyBlue : Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 10,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            alignment: Alignment.centerLeft,
            child: Image.asset(
              'assets/images/coolage.png',
              height: 36,
              width: 94,
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
                  return SlideTile(
                    sliderModel: mySlides[index],
                  );
                }),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      if (currentIndex != 0)
                        BackIntroButton(
                            onTap: () {
                              controller.animateToPage(currentIndex - 1,
                                  duration: Duration(milliseconds: 400),
                                  curve: Curves.linear);
                            },
                            text: 'Back'),
                      Container(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          children: <Widget>[
                            for (int i = 0; i < mySlides.length; i++)
                              currentIndex == i
                                  ? pageIndexIndicator(true)
                                  : pageIndexIndicator(false),
                          ],
                        ),
                      ),
                      NextButton(
                          onTap: () {
                            if (currentIndex == mySlides.length - 1) {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => const LoginPage()));
                            } else {
                              controller.animateToPage(currentIndex + 1,
                                  duration: const Duration(milliseconds: 400),
                                  curve: Curves.linear);
                            }
                          },
                          text: currentIndex == mySlides.length - 1
                              ? "Finish"
                              : "Next"),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
