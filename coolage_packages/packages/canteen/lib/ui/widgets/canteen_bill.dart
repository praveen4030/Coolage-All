part of canteen;

class CanteenBillWidget extends StatelessWidget {
  final CartModel? cartModel;
  final bool? isDelivery;
  final DeliverableZonesModel? deliverableZonesModel;
  const CanteenBillWidget({
    Key? key,
    @required this.cartModel,
    @required this.isDelivery,
    @required this.deliverableZonesModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final totalPrices = cartModel!.getItemsTotalPrice();
    final totalQty = cartModel!.getItemsTotalQty();
    final list = cartModel!.cartItemsMap!.values.toList();
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Kolors.greyWhite,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 21,
            horizontal: 15,
          ),
          child: Column(
            children: [
              ListView.builder(
                itemCount: list.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return itemTile(list[index], index == list.length - 1);
                },
              ),
              totalOfItems(totalQty.toInt(), totalPrices.toInt()),
              const SizedBox(
                height: 20,
              ),
              DiscountDeliveryChargesTile(
                deliverableZonesModel: deliverableZonesModel,
                totalPrices: totalPrices,
                isDelivery: isDelivery,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        totalPayable(),
      ],
    );
  }

  Widget totalPayable() {
    final totalItemsPayable = cartModel!
        .getTotalPayableBasedOnDelivery(isDelivery!, deliverableZonesModel!);
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Row(
        children: [
          const Expanded(
            flex: 2,
            child: CustomText(
              text: "To Pay",
              fontWeight: FontWeight.w600,
              fontFamily: Fonts.CONTENT_FONT,
              fontSize: 14,
              color: Kolors.fontColor,
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
                text: '₹ ${totalItemsPayable.toInt()}',
                fontWeight: FontWeight.w600,
                fontFamily: Fonts.CONTENT_FONT,
                fontSize: 16,
                color: Kolors.fontColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget itemTile(ItemModel model, bool isLast) {
    if (model.categoryPrices!.isEmpty) {
      return BillingTile(
        isLast: isLast,
        name: model.itemName,
        price: model.getPrice().toInt().toString(),
        qty: model.getQty().toString(),
      );
    } else {
      List<Widget> billingTiles = [];
      for (final categoryModel in model.categoryPrices!) {
        if (categoryModel.qty == 0) {
          continue;
        }
        billingTiles.add(BillingTile(
          isLast: isLast,
          name: '${model.itemName} (${categoryModel.category})',
          price: categoryModel.price!.toInt().toString(),
          qty: categoryModel.qty.toString(),
        ));
      }
      return Column(
        children: [
          ...billingTiles,
        ],
      );
    }
  }

  Widget totalOfItems(int totalQty, int totalPrice) {
    return Column(
      children: [
        const Divider(
          color: Kolors.greyLightBlue,
          thickness: 1,
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            const Expanded(
              flex: 2,
              child: CustomText(
                text: "TOTAL",
                fontWeight: FontWeight.w600,
                fontFamily: Fonts.CONTENT_FONT,
                fontSize: 14,
              ),
            ),
            Expanded(
              flex: 1,
              child: CustomText(
                text: 'x$totalQty',
                textAlign: TextAlign.center,
                fontWeight: FontWeight.w600,
                fontFamily: Fonts.CONTENT_FONT,
                color: Kolors.greyLightBlue,
                fontSize: 14,
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: CustomText(
                  text: '₹ $totalPrice',
                  fontWeight: FontWeight.w600,
                  fontFamily: Fonts.CONTENT_FONT,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
