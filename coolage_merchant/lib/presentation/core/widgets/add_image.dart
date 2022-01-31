import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/theme/fonts.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class AddImageWidget extends StatelessWidget {
  final double? height;
  final double? width;
  const AddImageWidget({
    Key? key,
    this.height = 200,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width ?? MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Kolors.greyWhite,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Kolors.greyBlue,
            ),
            height: 71,
            width: 71,
            child: Image.asset(
              'assets/icons/add.png',
              height: 96,
              width: 40,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          CustomText(
            text: "Add Photo",
            fontSize: 18,
            fontFamily: Fonts.CONTENT_FONT,
            fontWeight: FontWeight.w600,
            color: Kolors.greyLightBlue.withOpacity(0.5),
          )
        ],
      ),
    );
  }
}
