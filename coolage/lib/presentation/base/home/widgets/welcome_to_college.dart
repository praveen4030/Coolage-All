import 'package:flutter/material.dart';

class WelcomeToCollegeWidget extends StatelessWidget {
  const WelcomeToCollegeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 68,
        bottom: 80,
      ),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(right: 60),
            child: Image.asset(
              "assets/illustrations/welcome.png",
            ),
          ),
        ],
      ),
    );
  }
}
