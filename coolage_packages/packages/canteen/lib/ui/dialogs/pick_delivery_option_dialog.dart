part of canteen;

class PickdeliveryOptionDialog extends StatefulWidget {
  final CartModel? cartModel;
  const PickdeliveryOptionDialog({
    Key? key,
    @required this.cartModel,
  }) : super(key: key);

  @override
  State<PickdeliveryOptionDialog> createState() =>
      _PickdeliveryOptionDialogState();
}

class _PickdeliveryOptionDialogState extends State<PickdeliveryOptionDialog> {
  int selectedValue = 0;
  int zoneIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(
                  text: "Select Delivery Mode",
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
                const SizedBox(
                  height: 20,
                ),
                if (widget.cartModel!.canteenBasicDetailsModel!.isDelivery ??
                    false)
                  radioTile(
                    value: 1,
                    grpNo: selectedValue,
                    text: "Get delivered",
                    onChange: (val) {
                      setState(() {
                        selectedValue = 1;
                      });
                    },
                  ),
                radioTile(
                  value: 2,
                  grpNo: selectedValue,
                  text: "Dine In (On Table)",
                  onChange: (val) async {
                    setState(() {
                      selectedValue = 2;
                    });
                    await Future.delayed(Duration(milliseconds: 200));
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => PlaceOrderPage(
                              cartModel: widget.cartModel,
                              zoneSelectedModel: widget
                                  .cartModel!
                                  .canteenBasicDetailsModel!
                                  .deliveryZonesList![zoneIndex],
                              isDelivery: false,
                              isTakeAway: false,
                            )));
                  },
                ),
                radioTile(
                  value: 3,
                  grpNo: selectedValue,
                  text: "Take Away (Parcel)",
                  onChange: (val) async {
                    setState(() {
                      selectedValue = 3;
                    });
                    await Future.delayed(Duration(milliseconds: 200));
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => PlaceOrderPage(
                              cartModel: widget.cartModel,
                              zoneSelectedModel: widget
                                  .cartModel!
                                  .canteenBasicDetailsModel!
                                  .deliveryZonesList![zoneIndex],
                              isDelivery: false,
                              isTakeAway: true,
                            )));
                  },
                ),
              ],
            ),
          ),
          if (selectedValue == 1) getDeliveredZonesList(),
        ],
      ),
    );
  }

  Widget radioTile({
    int? value,
    int? grpNo,
    String? text,
    Function? onChange,
  }) {
    return RadioListTile(
      contentPadding: EdgeInsets.zero,
      value: value!,
      groupValue: grpNo,
      activeColor: Kolors.secondaryColor2,
      title: CustomText(
        text: text,
        color: grpNo == value ? Kolors.greyBlack : Kolors.greyBlue,
        fontWeight: FontWeight.w600,
        fontFamily: Fonts.CONTENT_FONT,
        fontSize: 18,
      ),
      onChanged: (int? val) {
        onChange!(val);
      },
    );
  }

  Widget getDeliveredZonesList() {
    return Container(
      color: Kolors.greyWhite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(
                  text: "Select Delivery Zone",
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
                const SizedBox(
                  height: 20,
                ),
                DeliveryZonesWidget(
                  cartModel: widget.cartModel,
                  zoneSelectedIndex: zoneIndex,
                  onZoneChange: (index) {
                    setState(() {
                      zoneIndex = index as int;
                    });
                  },
                  zonesList: widget.cartModel!.canteenBasicDetailsModel!
                      .getDelioveryZonesName(),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          BottomButtonWidget(
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PlaceOrderPage(
                        cartModel: widget.cartModel,
                        zoneSelectedModel: widget
                            .cartModel!
                            .canteenBasicDetailsModel!
                            .deliveryZonesList![zoneIndex],
                        isDelivery: selectedValue == 1,
                        isTakeAway: selectedValue == 3,
                      )));
            },
            text: "PROCEED",
          ),
        ],
      ),
    );
  }
}
