part of canteen;

class MenuCartAddButton extends StatefulWidget {
  final CanteenBasicDetailsModel? canteenBasicDetailsModel;
  final ItemModel? menuItemModel;
  const MenuCartAddButton({
    Key? key,
    @required this.canteenBasicDetailsModel,
    @required this.menuItemModel,
  }) : super(key: key);

  @override
  _MenuCartAddButtonState createState() => _MenuCartAddButtonState();
}

class _MenuCartAddButtonState extends State<MenuCartAddButton> {
  CanteenDetailsBloc? canteenDetailsBloc;
  CanteenBasicDetailsModel? canteenBasicDetailsModel;
  ItemModel? itemModel;
  @override
  void initState() {
    super.initState();
    itemModel = widget.menuItemModel!;
    canteenBasicDetailsModel = widget.canteenBasicDetailsModel;
    canteenDetailsBloc = context.read<CanteenDetailsBloc>();
  }

  @override
  Widget build(BuildContext context) {
    // return BlocBuilder<CanteenDetailsBloc, CanteenDetailsState>(
    //     builder: (context, state) {
    final cartBox = Hive.box<CartModel>(HiveConstants.cartBoxName);
    return ValueListenableBuilder(
        valueListenable: cartBox.listenable(),
        builder: (context, box, widget) {
          final canteenId = canteenBasicDetailsModel!.canteenId!;
          final canteenCartItem = cartBox.get(canteenId);
          int qty = 0;

          if (canteenCartItem != null && canteenCartItem.cartItemsMap != null) {
            final menuItem = canteenCartItem.cartItemsMap![itemModel!.itemId];
            if (menuItem != null) {
              qty = menuItem.qty!.toInt();
            }
          }
          // final canteenBloc = context.read<CanteenDetailsBloc>();
          return Column(
            children: [
              AddButton(
                onAdd: (int quantity, bool isIncreased) async {
                  if (itemModel!.categoryPrices!.isEmpty) {
                    itemModel!.qty = quantity;
                    CanteenFunctions.addItemToCart(
                        menuItemModel: itemModel,
                        canteenBasicDetailsModel: canteenBasicDetailsModel);
                    // canteenDetailsBloc!.add(CanteenDetailsEvent.addToCart(
                    //   isIncreased: isIncreased,
                    //   menuItemModel: itemModel,
                    //   canteenBasicDetailsModel: canteenBasicDetailsModel,
                    // ));
                  } else {
                    await showDialog(
                        context: context,
                        builder: (context) {
                          return AddMenuItemCategoryDialog(
                            itemModel: itemModel,
                            canteenBasicDetailsModel: canteenBasicDetailsModel,
                          );
                        });
                  }
                  setState(() {});
                },
                quantity: qty,
              ),
              if (itemModel!.categoryPrices!.isNotEmpty)
                Column(
                  children: const [
                    SizedBox(
                      height: 5,
                    ),
                    CustomText(
                      text: 'Customized',
                      fontSize: 10,
                      color: Kolors.greyBlue,
                    ),
                  ],
                ),
            ],
          );
        });
  }
}
