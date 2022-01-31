import 'package:core/core.dart';
import 'package:flutter/material.dart';

class CustomLayout extends StatelessWidget {
  final Widget child;
  const CustomLayout({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 500) {
        return Container(
          color: Kolors.greyWhite,
          alignment: Alignment.center,
          child: Container(
            width: 500,
            child: child,
          ),
        );
      } else {
        return child;
      }
    });
  }
}
