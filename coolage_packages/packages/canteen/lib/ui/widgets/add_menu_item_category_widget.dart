part of canteen;

class AddMenuItemCategoryDialog extends StatefulWidget {
  final ItemModel? itemModel;
  final CanteenBasicDetailsModel? canteenBasicDetailsModel;
  const AddMenuItemCategoryDialog({
    Key? key,
    @required this.itemModel,
    @required this.canteenBasicDetailsModel,
  }) : super(key: key);

  @override
  _AddMenuItemCategoryDialogState createState() =>
      _AddMenuItemCategoryDialogState();
}

class _AddMenuItemCategoryDialogState extends State<AddMenuItemCategoryDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          child: ListView.builder(
            itemCount: widget.itemModel!.categoryPrices!.length,
            itemBuilder: (context, index) {
              return categoryWidget(widget.itemModel!.categoryPrices![index],
                  index == widget.itemModel!.categoryPrices!.length - 1);
            },
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
          )),
    );
  }

  Widget categoryWidget(CategoryPriceModel model, bool isLast) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Column(
              children: [
                CustomText(
                  text: model.category,
                  color: Kolors.fontColor,
                  fontFamily: Fonts.CONTENT_FONT,
                ),
                const SizedBox(
                  height: 6,
                ),
                PriceWidget(
                  price: CustomText(
                    text: model.price!.toInt().toString(),
                    color: Kolors.greyBlue,
                    fontSize: 14,
                  ),
                  size: 12,
                ),
              ],
            ),
            const Spacer(),
            AddButton(
              onAdd: (int quantity, bool isIncreased) async {
                if (context
                    .read<CanteenDetailsBloc>()
                    .state
                    .isModifyingCartItems!) {
                  return;
                }
                model.qty = quantity;
                widget.itemModel!.qty = widget.itemModel!.getQty();
                CanteenFunctions.addItemToCart(
                    menuItemModel: widget.itemModel,
                    canteenBasicDetailsModel: widget.canteenBasicDetailsModel);
                // context
                //     .read<CanteenDetailsBloc>()
                //     .add(CanteenDetailsEvent.addToCart(
                //       isIncreased: isIncreased,
                //       menuItemModel: widget.itemModel,
                //       canteenBasicDetailsModel: widget.canteenBasicDetailsModel,
                //     ));
                setState(() {});
              },
              quantity: model.qty,
            ),
          ],
        ),
        const SizedBox(
          height: 9,
        ),
        if (!isLast)
          const Divider(
            color: Kolors.greyBlue,
            height: 1,
          ),
      ],
    );
  }
}
