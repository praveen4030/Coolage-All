import 'package:coolage_merchant/domain/base/canteen/order_model.dart';
import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/theme/fonts.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class OrderDeliveryDetailsWidget extends StatelessWidget {
  final OrderModel? orderModel;
  const OrderDeliveryDetailsWidget({
    Key? key,
    @required this.orderModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Kolors.white,
      ),
      child: !orderModel!.isDelivery!
          ? !orderModel!.isTakeAway!
              ? onTable()
              : takeAway()
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(
                  text: "Delivery Address",
                  fontFamily: Fonts.CONTENT_FONT,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Kolors.fontColor,
                ),
                CustomText(
                  text: orderModel!.deliveryAddress,
                  fontFamily: Fonts.CONTENT_FONT,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Kolors.greyBlue,
                )
              ],
            ),
    );
  }

  Widget onTable() {
    return const CustomText(
      text: 'On Table',
      fontSize: 18,
    );
  }

  Widget takeAway() {
    return const CustomText(
      text: 'Take Away',
      fontSize: 18,
    );
  }
}
