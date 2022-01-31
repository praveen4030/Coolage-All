import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_text.dart';
import 'package:coolage_merchant/presentation/core/widgets/rupees_sign.dart';
import 'package:flutter/material.dart';

class PriceWidget extends StatelessWidget {
  final CustomText? price;
  final double? size;
  final Color? rupeeColor;
  final MainAxisAlignment mainAxisAlignment;
  const PriceWidget({
    Key? key,
    @required this.price,
    @required this.size,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.rupeeColor = Kolors.greyBlack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        children: [
          RupeesSign(
            size: size,
            color: rupeeColor,
          ),
          const SizedBox(
            width: 4,
          ),
          price!,
        ],
      ),
    );
  }
}
