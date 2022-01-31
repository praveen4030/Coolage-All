import 'package:coolage_merchant/domain/core/helpers/enum.dart';
import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/theme/fonts.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class OrderStatusWidget extends StatelessWidget {
  final OrderStatus? orderStatus;
  final bool? isDelivery;
  const OrderStatusWidget({
    Key? key,
    @required this.orderStatus,
    @required this.isDelivery,
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
      child: getWidget(),
    );
  }

  Widget getWidget() {
    if (orderStatus == OrderStatus.pending) {
      return orderPendingStatus();
    } else if (orderStatus == OrderStatus.preparing) {
      return orderPreparingStatus();
    } else if (orderStatus == OrderStatus.prepared) {
      return orderPreparedStatus(isDelivery!);
    } else if (orderStatus == OrderStatus.delivering) {
      return orderDeliveringStatus();
    } else if (orderStatus == OrderStatus.delivered) {
      return orderDeliveredStatus();
    } else if (orderStatus == OrderStatus.canceled) {
      return orderCancelledStatus();
    }
    return Container();
  }

  Widget orderPendingStatus() {
    return orderStatusWidget('Order Placed', 'Yet to be accepted');
  }

  Widget orderPreparingStatus() {
    return orderStatusWidget('Order Accepted', 'Food preparing!');
  }

  Widget orderPreparedStatus(bool isDelivery) {
    return orderStatusWidget(
        'Order Prepared',
        isDelivery
            ? 'Yet to be sent for delivery'
            : 'User will pick up the order soon!');
  }

  Widget orderDeliveringStatus() {
    return orderStatusWidget('Order on the way', 'Yet to be delivered');
  }

  Widget orderDeliveredStatus() {
    return orderStatusWidget('Order Completed', '');
  }

  Widget orderCancelledStatus() {
    return orderStatusWidget(
        'Order Cancelled', 'Canteen has cancelled your order!');
  }

  Widget orderStatusWidget(String title, String subtitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: title,
          fontFamily: Fonts.CONTENT_FONT,
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Kolors.fontColor,
        ),
        CustomText(
          text: subtitle,
          fontFamily: Fonts.CONTENT_FONT,
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Kolors.greyBlue,
        )
      ],
    );
  }
}
