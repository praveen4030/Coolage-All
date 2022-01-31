import 'package:coolage_merchant/presentation/core/theme/fonts.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_text.dart';
import 'package:coolage_merchant/presentation/core/widgets/price_widget.dart';
import 'package:flutter/material.dart';

class BillingTile extends StatelessWidget {
  final String? name;
  final String? qty;
  final String? price;
  final bool? isLast;
  const BillingTile({
    Key? key,
    @required this.isLast,
    @required this.name,
    @required this.price,
    @required this.qty,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: CustomText(
                text: name,
                fontWeight: FontWeight.w600,
                fontFamily: Fonts.CONTENT_FONT,
                fontSize: 14,
              ),
            ),
            Expanded(
              flex: 1,
              child: CustomText(
                text: 'x $qty',
                textAlign: TextAlign.center,
                fontWeight: FontWeight.w600,
                fontFamily: Fonts.CONTENT_FONT,
                fontSize: 14,
              ),
            ),
            Expanded(
              flex: 1,
              child: PriceWidget(
                mainAxisAlignment: MainAxisAlignment.center,
                price: CustomText(
                  text: price!,
                  fontWeight: FontWeight.w600,
                  fontFamily: Fonts.CONTENT_FONT,
                  fontSize: 14,
                ),
                size: 12,
              ),
            ),
          ],
        ),
        if (!isLast!) const Divider(),
      ],
    );
  }
}
