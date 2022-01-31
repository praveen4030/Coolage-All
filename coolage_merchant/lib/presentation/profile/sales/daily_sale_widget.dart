import 'package:auto_route/auto_route.dart';
import 'package:coolage_merchant/domain/base/canteen/order_model.dart';
import 'package:coolage_merchant/presentation/core/functions/functions.dart';
import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_text.dart';
import 'package:coolage_merchant/presentation/core/widgets/price_widget.dart';
import 'package:coolage_merchant/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';

class DailySaleWidget extends StatelessWidget {
  final OrderModel? orderModel;
  const DailySaleWidget({
    Key? key,
    @required this.orderModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context)
            .push(OrderDetailsPageRoute(orderModel: orderModel));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomText(
                    text: orderModel!.orderPlaceByName,
                    color: Colors.black,
                    fontSize: 18,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  width: 14,
                ),
                Container(
                  width: 71,
                  alignment: Alignment.centerLeft,
                  child: CustomText(
                    text: '₹ ${orderModel!.totalPrice!.toInt().toString()}',
                    color: Kolors.greenColor,
                  ),
                ),
                if (orderModel!.isDelivery!)
                  Container(
                    alignment: Alignment.center,
                    width: 30,
                    child: Image.asset(
                      'assets/icons/delivery.png',
                      color: Kolors.greyBlack,
                      height: 24,
                      width: 24,
                    ),
                  )
                else
                  Container(
                    width: 30,
                  ),
                Container(
                  width: 71,
                  alignment: Alignment.centerRight,
                  child: CustomText(
                    text:
                        Functions.getStandard12HourTime(orderModel!.timestamp!),
                    color: Kolors.greyBlue,
                    fontSize: 14,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const Divider(
              height: 1,
              color: Kolors.greyColor,
            )
          ],
        ),
      ),
    );
  }
}
