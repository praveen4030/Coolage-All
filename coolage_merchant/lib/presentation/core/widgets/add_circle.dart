import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:flutter/material.dart';

class AddCircleWidget extends StatelessWidget {
  final Function? onTap;
  const AddCircleWidget({
    Key? key,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Container(
        height: 40,
        width: 40,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Kolors.greyBlue,
        ),
        child: const Icon(
          Icons.add,
          size: 24,
          color: Colors.white,
        ),
      ),
    );
  }
}
