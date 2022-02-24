part of canteen;

class OrderTrackingPage extends StatelessWidget {
  final OrderModel? orderModel;
  const OrderTrackingPage({
    Key? key,
    @required this.orderModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Kolors.greyWhite,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: CoolageAppBar(
            actions: [],
            text: "Food Tracking",
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          color: Colors.white,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              orderInfoWidget(),
              const SizedBox(
                height: 25,
              ),
              OrderTimelineWidget(
                orderModel: orderModel,
              ),
              const SizedBox(
                height: 25,
              ),
              const Divider(
                color: Kolors.greyBlue,
                height: 1,
              ),
              const SizedBox(
                height: 36,
              ),
              Row(
                children: [
                  const CustomText(
                    text: "You paid for this order : ",
                    fontWeight: FontWeight.w600,
                    fontFamily: Fonts.CONTENT_FONT,
                  ),
                  const Spacer(),
                  CustomText(
                    text: '₹ ${orderModel!.totalPrice!.toInt()}',
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    fontFamily: Fonts.CONTENT_FONT,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  ButtonWid(
                    width: 120,
                    fontSize: 14,
                    height: 35,
                    onTap: () async {
                      await showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            child: PrevioudOrderDialog(model: orderModel),
                          );
                        },
                      );
                    },
                    text: "View Order",
                    color: Kolors.greyBlue,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget orderInfoWidget() {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 14),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          decoration: BoxDecoration(
            color: Kolors.greyWhite,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: orderModel!.canteenName,
                    fontSize: 22,
                  ),
                  CustomText(
                    text: orderModel!.canteenLocation,
                    color: Kolors.greyLightBlue,
                    fontSize: 12,
                    fontFamily: Fonts.CONTENT_FONT,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "Order id :${orderModel!.orderId}",
                          fontFamily: Fonts.CONTENT_FONT,
                          textAlign: TextAlign.end,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: Kolors.greyLightBlue,
                        )
                      ],
                    ),
                  ),
                  getOrderTime(),
                ],
              ),
              SizedBox(
                height:
                    orderModel!.canteenContactNo?.isNotEmpty ?? false ? 30 : 10,
              ),
            ],
          ),
        ),
        if (orderModel!.canteenContactNo?.isNotEmpty ?? false)
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleIcon(
                icon: 'call',
                height: 25,
                width: 25,
                onTap: () {
                  final url = "tel:${orderModel!.canteenContactNo}";
                  Functions.launchURL(url);
                },
                color: Kolors.secondaryColor1,
              ),
              const SizedBox(
                width: 24,
              ),
            ],
          ),
      ],
    );
  }

  Widget getOrderTime() {
    final date = orderModel!.timestamp!.toDate();
    final String s = DateFormat("d MMM y\nh:mm a").format(date);

    return CustomText(
      text: s,
      fontFamily: Fonts.CONTENT_FONT,
      textAlign: TextAlign.end,
      fontWeight: FontWeight.w600,
      fontSize: 12,
      color: Kolors.greyLightBlue,
    );
  }
}
