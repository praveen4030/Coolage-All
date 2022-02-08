part of canteen;

class CanteenCartItemTile extends StatelessWidget {
  final CartModel? canteenCart;
  const CanteenCartItemTile({
    Key? key,
    @required this.canteenCart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 4,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Kolors.greyWhite,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: canteenCart!.canteenBasicDetailsModel!.name,
                      ),
                      Row(
                        children: [
                          const CustomText(
                            text: "Total",
                            fontWeight: FontWeight.w600,
                            fontFamily: Fonts.CONTENT_FONT,
                            fontSize: 12,
                            color: Kolors.greyBlue,
                          ),
                          const SizedBox(width: 8),
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Kolors.secondaryColor2,
                            ),
                            child: CustomText(
                              text: '${canteenCart!.qty!.toInt()}',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: Fonts.CONTENT_FONT,
                              color: Colors.white,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  color: Kolors.greyBlue,
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: getLocationAndTimeString(context),
                      fontFamily: Fonts.CONTENT_FONT,
                      fontSize: 12,
                      color: Kolors.greyBlue,
                      fontWeight: FontWeight.w600,
                    ),
                    Row(
                      children: [
                        const CustomText(
                          text: '₹',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Kolors.greyBlue,
                        ),
                        const SizedBox(width: 8),
                        CustomText(
                          text: '${canteenCart!.totalPrice!.toInt()}',
                          fontFamily: Fonts.CONTENT_FONT,
                          fontSize: 24,
                          color: Kolors.greyBlue,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 7,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 8,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: canteenCart!.cartItemsMap!.length,
                      itemBuilder: (context, index) {
                        final menuItem = getMenuItemsList()[index];
                        if ((menuItem.qty ?? 0) <= 0) {
                          return Container();
                        }
                        return CartItem(
                          itemModel: menuItem,
                          isLast:
                              canteenCart!.cartItemsMap!.length - 1 == index,
                          onAdd: (int qty, bool isIncreasing) {
                            onAdd(qty, isIncreasing, context, menuItem);
                          },
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () async {
              if (kIsWeb) {
                Fluttertoast.showToast(
                    msg: "Download the app now to place your order!");
              } else {
                if (canteenCart!.canteenBasicDetailsModel!.isClosed()) {
                  Fluttertoast.showToast(msg: "Canteen is closed currently!");
                } else {
                  placeOrder(context);
                }
              }
            },
            child: Container(
              height: 50,
              constraints: const BoxConstraints(maxWidth: 180),
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: canteenCart!.canteenBasicDetailsModel!.isClosed()
                    ? Kolors.greyBlue
                    : Kolors.secondaryColor2,
                borderRadius: BorderRadius.circular(50),
              ),
              child: const CustomText(
                text: "Place Order",
                fontSize: 26,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }

  String getLocationAndTimeString(BuildContext context) {
    String s = canteenCart!.canteenBasicDetailsModel!.location!;
    if (canteenCart!.canteenBasicDetailsModel!.closeAtTimeOfDay != null) {
      s = '$s | Open Till ${canteenCart!.canteenBasicDetailsModel!.closeAtTimeOfDay!.format(context)}';
    }

    return s;
  }

  Future<void> placeOrder(BuildContext context) async {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return PickdeliveryOptionDialog(
            cartModel: canteenCart,
          );
        });
  }

  String getPaymentDesc() {
    String menu = '';
    final list = canteenCart!.cartItemsMap!.values.toList();
    for (int i = 0; i < list.length; i++) {
      final m = list[i];

      menu = '$menu${m.itemName!}';
      if (i != list.length - 1) {
        menu = '$menu , ';
      }
    }
    return menu;
  }

  List<ItemModel> getMenuItemsList() {
    final menuItems = canteenCart!.cartItemsMap!.values.toList();
    CanteenItemsHelper.sortCategoryItemsByPrice(menuItems);
    return menuItems;
  }

  void onAdd(int qty, bool isIncreasing, BuildContext context,
      ItemModel itemModel) async {
    //as we are using the same function which is taking canteenbasic detailsmodel so generate this by taking details which are only necessary in map
    if (context.read<CanteenDetailsBloc>().state.isModifyingCartItems!) {
      return;
    }
    if (itemModel.categoryPrices!.isEmpty) {
      itemModel.qty = qty;
      CanteenFunctions.addItemToCart(
          menuItemModel: itemModel,
          canteenBasicDetailsModel: canteenCart!.canteenBasicDetailsModel);
      // context.read<CanteenDetailsBloc>().add(CanteenDetailsEvent.addToCart(
      //       isIncreased: isIncreasing,
      //       menuItemModel: itemModel,
      //       canteenBasicDetailsModel: canteenCart!.canteenBasicDetailsModel,
      //     ));
    } else {
      await showDialog(
          context: context,
          builder: (context) {
            return AddMenuItemCategoryDialog(
              itemModel: itemModel,
              canteenBasicDetailsModel: canteenCart!.canteenBasicDetailsModel,
            );
          });
    }
  }
}
