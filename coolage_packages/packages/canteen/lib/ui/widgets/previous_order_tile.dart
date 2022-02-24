part of canteen;

class PreviousOrderTile extends StatelessWidget {
  final OrderModel? model;
  const PreviousOrderTile({
    Key? key,
    @required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (model!.orderStatus == OrderStatus.delivered) {
          await showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                child: PrevioudOrderDialog(model: model),
              );
            },
          );
        } else {
          Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(
              builder: (context) => OrderTrackingPage(orderModel: model)));
        }
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Kolors.greyWhite,
        ),
        margin: const EdgeInsets.symmetric(
          vertical: 6,
        ),
        child: Column(
          children: [
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(
                vertical: 18,
                horizontal: 8,
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        const Icon(
                          Icons.lock_clock,
                          size: 25,
                          color: Kolors.greyBlue,
                        ),
                        CustomText(
                          text: timeago.format(model!.timestamp!.toDate()),
                          fontFamily: Fonts.CONTENT_FONT,
                          fontSize: 12,
                          textAlign: TextAlign.center,
                          color: Kolors.greyBlue,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: getOrderTitle(),
                            fontFamily: Fonts.CONTENT_FONT,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          CustomText(
                            text: model!.canteenName,
                            fontFamily: Fonts.CONTENT_FONT,
                            fontSize: 14,
                            color: Kolors.greyBlue,
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Row(
                      children: [
                        SizedBox(
                          height: 45,
                          width: 1,
                          child: Container(
                            color: Kolors.greyBlue,
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        CustomText(
                          text: '₹ ${model!.totalPrice!.toInt().toString()}',
                          fontFamily: Fonts.CONTENT_FONT,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            getBottomWidget(),
          ],
        ),
      ),
    );
  }

  Widget getBottomWidget() {
    if (model!.orderStatus == OrderStatus.pending) {
      return ongoingOrderTile("Order Pending");
    } else if (model!.orderStatus == OrderStatus.preparing) {
      return ongoingOrderTile("Preparing");
    } else if (model!.orderStatus == OrderStatus.prepared) {
      return ongoingOrderTile("Food ready");
    } else if (model!.orderStatus == OrderStatus.delivering) {
      return ongoingOrderTile("On the way");
    } else if (model!.orderStatus == OrderStatus.paymentPending) {
      return ongoingOrderTile("Payment Pending");
    } else if (model!.orderStatus == OrderStatus.paymentFailed) {
      return ongoingOrderTile("Payment Failed");
    }
    return completedOrderTile();
  }

  bool ifOrderCompleted() {
    return model!.orderStatus == OrderStatus.canceled ||
        model!.orderStatus == OrderStatus.delivered;
  }

  Widget ongoingOrderTile(String text) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Column(
          children: [
            Container(
              color: Colors.white,
              height: 6,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 6),
              decoration: const BoxDecoration(
                color: Kolors.secondaryColor2,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
              ),
              height: 8,
            ),
          ],
        ),
        Container(
          height: 20,
          // constraints: const BoxConstraints(
          //   maxWidth: 200,
          // ),
          // alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Kolors.greyBlue,
          ),
          child: CustomText(
            text: text,
            fontSize: 12,
            color: Colors.white,
          ),
        )
      ],
    );
  }

  Widget completedOrderTile() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
      ),
      height: 8,
    );
  }

  String getOrderTitle() {
    String menu = '';
    final list = model!.itemsMap!.values.toList();
    for (int i = 0; i < list.length; i++) {
      final m = list[i];

      menu = '$menu${m.itemName!.trim()}';
      if (i != list.length - 1) {
        menu = '$menu , ';
      }
    }
    return menu;
  }
}
