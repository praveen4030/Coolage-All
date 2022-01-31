part of canteen;

class PreviousOrderDialogBottomWidget extends StatelessWidget {
  final OrderModel? orderModel;
  const PreviousOrderDialogBottomWidget({
    Key? key,
    @required this.orderModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserOrdersBloc, UserOrdersState>(
        builder: (context, state) {
      return Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 16,
          top: 16,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: Kolors.greyBlue.withOpacity(0.5),
            )
          ],
        ),
        child: getWidget(),
      );
    });
  }

  Widget getWidget() {
    if (orderModel!.orderStatus == OrderStatus.pending) {
      return orderPendingStatus();
    } else if (orderModel!.orderStatus == OrderStatus.preparing) {
      return orderPreparingStatus();
    } else if (orderModel!.orderStatus == OrderStatus.prepared) {
      return orderPreparedStatus(orderModel!.isDelivery!);
    } else if (orderModel!.orderStatus == OrderStatus.delivering) {
      return orderDeliveringStatus();
    } else if (orderModel!.orderStatus == OrderStatus.delivered) {
      return orderDeliveredStatus();
    } else if (orderModel!.orderStatus == OrderStatus.canceled) {
      return orderCancelledStatus();
    }
    return Container();
  }

  // Widget deliveredStatus(BuildContext context, bool isAddToCartLoading,
  //     bool isRepeatOrderLoading) {
  //   return Row(
  //     children: [
  //       Expanded(
  //         flex: 1,
  //         child: ButtonWid(
  //           isLoading: isAddToCartLoading,
  //           onTap: () {
  //             context
  //                 .read<UserOrdersBloc>()
  //                 .add(UserOrdersEvent.addToCartMyPreviousOrder(orderModel!));
  //           },
  //           fontColor: Colors.black,
  //           color: Kolors.greyWhite,
  //           text: "Add to Cart",
  //         ),
  //       ),
  //       const SizedBox(
  //         width: 30,
  //       ),
  //       Expanded(
  //         flex: 1,
  //         child: ButtonWid(
  //           isLoading: isRepeatOrderLoading,
  //           onTap: () {
  //             context
  //                 .read<UserOrdersBloc>()
  //                 .add(UserOrdersEvent.repeatMyPreviousOrder(orderModel!));
  //           },
  //           fontColor: Colors.white,
  //           color: Kolors.secondaryColor2,
  //           text: "REPEAT",
  //         ),
  //       ),
  //     ],
  //   );
  // }

  Widget orderPendingStatus() {
    return orderStatus('Order Placed', 'Yet to be accepted');
  }

  Widget orderPreparingStatus() {
    return orderStatus('Order Accepted', 'Food preparing!');
  }

  Widget orderPreparedStatus(bool isDelivery) {
    return orderStatus(
        'Order Prepared',
        isDelivery
            ? 'Yet to be sent for delivery'
            : 'Pick up your order from the canteen now!');
  }

  Widget orderDeliveringStatus() {
    return orderStatus('Order on the way', 'Yet to be delivered');
  }

  Widget orderDeliveredStatus() {
    return orderStatus('Order Completed', 'Hope you liked the food!');
  }

  Widget orderCancelledStatus() {
    return orderStatus('Order Cancelled', 'Canteen has cancelled your order!');
  }

  Widget orderStatus(String title, String subtitle) {
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
