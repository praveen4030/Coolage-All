import 'package:core/core.dart';
import 'package:flutter/material.dart';

class StoreCanteenActionButtons extends StatelessWidget {
  final Function? onMessageTap;
  final Function? onCallTap;
  final Function? onLocationTap;

  const StoreCanteenActionButtons({
    Key? key,
    @required this.onCallTap,
    @required this.onLocationTap,
    @required this.onMessageTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SquareIconWidget(
          icon: 'messages',
          onTap: () {
            onMessageTap!();
          },
        ),
        const SizedBox(width: 30),
        SquareIconWidget(
          icon: 'location',
          onTap: () {
            onLocationTap!();
          },
        ),
        const SizedBox(width: 30),
        SquareIconWidget(
          icon: 'call',
          onTap: () {
            onCallTap!();
          },
        )
      ],
    );
  }
}
