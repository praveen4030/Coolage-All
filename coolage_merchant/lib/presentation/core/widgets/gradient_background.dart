import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  final Widget? child;
  final int? gradientNo;
  const GradientBackground({
    Key? key,
    @required this.child,
    this.gradientNo = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            'assets/images/background$gradientNo.png',
          ),
        ),
      ),
      child: child,
    );
  }
}
