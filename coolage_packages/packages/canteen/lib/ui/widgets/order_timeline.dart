part of canteen;

class OrderTimelineWidget extends StatelessWidget {
  final OrderModel? orderModel;
  const OrderTimelineWidget({
    Key? key,
    @required this.orderModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          timelineStep(
            status: orderModel!.orderAcceptedAtTimestamp != null
                ? "Order approved"
                : "Yet to be approved",
            timestamp: orderModel!.orderAcceptedAtTimestamp,
            isCompleted: orderModel!.orderAcceptedAtTimestamp != null,
            isOngoing: false,
            icon: 'approved',
          ),
          timelineStep(
            status: orderModel!.orderPreparedAtTimestamp != null
                ? "Order prepared"
                : checkIfOngoing(OrderStatus.preparing)
                    ? "Preparing food"
                    : "Yet to be prepared",
            timestamp: orderModel!.orderAcceptedAtTimestamp,
            isCompleted: orderModel!.orderPreparedAtTimestamp != null,
            isOngoing: checkIfOngoing(OrderStatus.preparing),
            icon: 'food_prepared',
          ),
          timelineStep(
              status: orderModel!.orderDeliveredAtTimestamp != null
                  ? "Order delivered"
                  : checkIfOngoing(OrderStatus.delivering)
                      ? "Order on the way"
                      : "Yet to be dispatched",
              timestamp: orderModel!.orderDeliveredAtTimestamp,
              isCompleted: orderModel!.orderDeliveredAtTimestamp != null,
              isOngoing: checkIfOngoing(OrderStatus.delivering),
              icon: 'delivery',
              isLast: true),
        ],
      ),
    );
  }

  bool checkIfOngoing(OrderStatus orderStatus) {
    if (orderStatus == orderModel!.orderStatus) {
      return true;
    }
    return false;
  }

  Widget timelineStep({
    @required String? status,
    @required Timestamp? timestamp,
    @required bool? isCompleted,
    @required bool? isOngoing, // if not ongoing then incompleted step
    bool? isLast = false,
    @required String? icon,
  }) {
    return Row(
      children: [
        if (isCompleted! || isOngoing!)
          completedStep(
            isLast: isLast,
            icon: icon,
            isOngoing: isOngoing,
          )
        else
          incompleteStep(
            isLast: isLast,
            icon: icon,
          ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            children: [
              Row(
                children: [
                  CustomText(
                    text: status,
                    fontSize: 16,
                    color: isCompleted || isOngoing!
                        ? Kolors.black
                        : Kolors.greyLightBlue,
                    fontFamily: Fonts.CONTENT_FONT,
                    fontWeight: FontWeight.w600,
                  ),
                  const Spacer(),
                  CustomText(
                    text: isCompleted
                        ? Functions.getDateAndTime(timestamp!)
                        : "Pending",
                    color: isCompleted || isOngoing!
                        ? Kolors.black
                        : Kolors.greyLightBlue,
                    fontFamily: Fonts.CONTENT_FONT,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  )
                ],
              ),
              if (!isLast!)
                const SizedBox(
                  height: 40,
                ),
            ],
          ),
        ),
      ],
    );
  }

  Widget completedStep(
      {bool? isLast = false,
      @required String? icon,
      @required bool? isOngoing}) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isOngoing! ? Kolors.secondaryColor2 : Kolors.greenColor,
          ),
          child: Center(
            child: Image.asset(
              'assets/icons/$icon.png',
              height: 24,
              width: 24,
            ),
          ),
        ),
        if (!isLast!)
          Container(
            height: 40,
            width: 1,
            color: Kolors.secondaryColor1,
          )
      ],
    );
  }

  Widget incompleteStep({
    bool? isLast = false,
    @required String? icon,
  }) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Kolors.greyWhite,
          ),
          alignment: Alignment.center,
          child: Center(
            child: Image.asset(
              'assets/icons/$icon.png',
              height: 24,
              width: 24,
              color: Kolors.greyBlue,
            ),
          ),
        ),
        if (!isLast!)
          Container(
            height: 40,
            width: 1,
            color: Kolors.secondaryColor1,
          )
      ],
    );
  }
}
