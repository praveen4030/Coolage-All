part of canteen;

class PrevioudOrderDialog extends StatelessWidget {
  final OrderModel? model;
  const PrevioudOrderDialog({
    Key? key,
    @required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserOrdersBloc, UserOrdersState>(
      listener: (context, state) {
        state.addToCartFailureOrSuccess!.fold(() => null, (either) {
          either.fold(
            (failure) {
              FlushbarHelper.createError(message: failure.error).show(context);
            },
            (_) {
              Navigator.of(context).pop();
              Fluttertoast.showToast(msg: 'Order added to cart successfully');
            },
          );
        });
        state.repeatOrderFailureOrSucess!.fold(() => null, (either) {
          either.fold(
            (failure) {
              FlushbarHelper.createError(message: failure.error).show(context);
            },
            (_) async {
              Navigator.of(context).pop();
              Fluttertoast.showToast(
                  msg:
                      "Please complete the payment now for you order to be successfully placed.");
            },
          );
        });
      },
      builder: (context, state) {
        return Container(
          // height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 11,
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 13,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: model!.canteenName,
                          fontSize: 22,
                        ),
                        CustomText(
                          text: model!.canteenLocation,
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
                                text: "Order id :${model!.orderId}",
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
                    const SizedBox(
                      height: 7,
                    ),
                  ],
                ),
              ),
              itemsList(),
              const SizedBox(
                height: 20,
              ),
              // PreviousOrderDialogBottomWidget(orderModel: model)
            ],
          ),
        );
      },
    );
  }

  Widget itemsList() {
    final totalPrices = model!.getItemsTotalPrice();
    final totalQty = model!.getItemsTotalQty();
    final list = model!.itemsMap!.values.toList();
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Kolors.greyWhite,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Column(
            children: [
              Container(
                constraints: BoxConstraints(maxHeight: 300),
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(top: 21, bottom: 21),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        return itemTile(list[index], index == list.length - 1);
                      },
                    ),
                  ),
                ),
              ),
              totalOfItems(totalQty.toInt(), totalPrices.toInt()),
              const SizedBox(
                height: 20,
              ),
              DiscountDeliveryChargesTile(
                totalPrices: totalPrices,
                isDelivery: model!.isDelivery,
                deliverableZonesModel: model!.deliverableZonesModel,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: totalPayable(),
        ),
      ],
    );
  }

  Widget totalPayable() {
    double totalItemsPayable = model!.totalPrice!;
    return Row(
      children: [
        const Expanded(
          flex: 2,
          child: CustomText(
            text: "TOTAL AMOUNT PAID",
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
          child: PriceWidget(
            mainAxisAlignment: MainAxisAlignment.center,
            price: CustomText(
              text: '${totalItemsPayable.toInt()}',
              fontWeight: FontWeight.w600,
              fontFamily: Fonts.CONTENT_FONT,
              fontSize: 16,
              color: Kolors.fontColor,
            ),
            size: 12,
          ),
        ),
      ],
    );
  }

  Widget getOrderTime() {
    final date = model!.timestamp!.toDate();
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
                fontSize: 14,
              ),
            ),
            Expanded(
              flex: 1,
              child: PriceWidget(
                mainAxisAlignment: MainAxisAlignment.center,
                price: CustomText(
                  text: '$totalPrice',
                  fontWeight: FontWeight.w600,
                  fontFamily: Fonts.CONTENT_FONT,
                  fontSize: 14,
                ),
                size: 12,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
