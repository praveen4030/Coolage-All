import 'package:coolage_merchant/domain/core/helpers/constants.dart';
import 'package:coolage_merchant/domain/models/deliverable_zones_model.dart';
import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/theme/fonts.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_text.dart';
import 'package:coolage_merchant/presentation/core/widgets/price_widget.dart';
import 'package:flutter/material.dart';

class DiscountDeliveryChargesTile extends StatelessWidget {
  final bool? isDelivery;
  final double? totalPrices;
  final DeliverableZonesModel? deliverableZonesModel;
  const DiscountDeliveryChargesTile({
    Key? key,
    @required this.totalPrices,
    @required this.isDelivery,
    this.deliverableZonesModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isDelivery!) {
      return Column(
        children: [
          deliveryChargesTile(),
          if (totalPrices!.toInt() >
              deliverableZonesModel!.minimumPriceForFreeDelivery!)
            Column(
              children: [
                const SizedBox(height: 8),
                discountPrice(),
              ],
            ),
        ],
      );
    }
    return Container();
  }

  Widget discountPrice() {
    return Row(
      children: [
        const Expanded(
          flex: 2,
          child: CustomText(
            text: "Discount",
            fontWeight: FontWeight.w600,
            fontFamily: Fonts.CONTENT_FONT,
            fontSize: 14,
            color: Kolors.greyBlue,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(),
        ),
        Expanded(
          flex: 1,
          child: Center(
            child: CustomText(
              text: '₹ ${deliverableZonesModel!.deliveryCharge}',
              fontWeight: FontWeight.w600,
              fontFamily: Fonts.CONTENT_FONT,
              fontSize: 14,
              color: Kolors.greenColor,
            ),
          ),
        ),
      ],
    );
  }

  Widget deliveryChargesTile() {
    return Row(
      children: [
        const Expanded(
          flex: 2,
          child: CustomText(
            text: "Delivery Charges",
            fontWeight: FontWeight.w600,
            fontFamily: Fonts.CONTENT_FONT,
            fontSize: 14,
            color: Kolors.greyBlue,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(),
        ),
        Expanded(
          flex: 1,
          child: Center(
            child: CustomText(
              text: '₹ ${deliverableZonesModel!.deliveryCharge}',
              fontWeight: FontWeight.w600,
              fontFamily: Fonts.CONTENT_FONT,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
