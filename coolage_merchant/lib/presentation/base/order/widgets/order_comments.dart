import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/theme/fonts.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class OrderCommentsWidget extends StatelessWidget {
  final String? orderComments;
  const OrderCommentsWidget({
    Key? key,
    @required this.orderComments,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        const CustomText(
          text: "Comments : ",
          color: Kolors.fontColor,
          fontFamily: Fonts.CONTENT_FONT,
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Kolors.white,
          ),
          child: CustomText(
            text: orderComments,
            fontFamily: Fonts.CONTENT_FONT,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
