part of canteen;

class MenuItemTile extends StatelessWidget {
  final CanteenBasicDetailsModel? canteenBasicDetailsModel;
  final bool? isLast;
  final ItemModel? menuItem;
  const MenuItemTile({
    Key? key,
    @required this.menuItem,
    @required this.canteenBasicDetailsModel,
    @required this.isLast,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 32, bottom: 20, right: 32),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      VegNonvegWidget(
                        isVeg: menuItem!.isVeg,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomText(
                        text: menuItem!.itemName,
                        color: Colors.black,
                        fontFamily: Fonts.CONTENT_FONT,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomText(
                        text: getPrice(),
                        color: Kolors.greyBlue,
                        fontSize: 24,
                      ),
                      if (menuItem!.desc?.isNotEmpty ?? false)
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          child: ExpandableText(
                            menuItem!.desc!,
                            trimLines: 3,
                            textStyle: const TextStyle(
                              color: Kolors.greyBlue,
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              fontFamily: Fonts.CONTENT_FONT,
                            ),
                            readFontStyle: const TextStyle(
                              color: Kolors.greyBlack,
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              fontFamily: Fonts.CONTENT_FONT,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                if (menuItem!.image != null && menuItem!.image!.isNotEmpty)
                  Container(
                    margin: EdgeInsets.only(left: 71),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 30),
                          child: PhotoViewTap(
                            imageUrl: menuItem!.image,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: CachedNetworkImage(
                                imageUrl: menuItem!.image!,
                                height: 80,
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        MenuCartAddButton(
                          canteenBasicDetailsModel: canteenBasicDetailsModel!,
                          menuItemModel: menuItem!,
                        ),
                      ],
                    ),
                  )
                else
                  Container(
                    margin: const EdgeInsets.only(left: 71),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: MenuCartAddButton(
                        canteenBasicDetailsModel: canteenBasicDetailsModel!,
                        menuItemModel: menuItem!,
                      ),
                    ),
                  ),
              ],
            ),
            if (!isLast!)
              Column(
                children: const [
                  SizedBox(
                    height: 30,
                  ),
                  Divider(
                    color: Kolors.greyBlue,
                    height: 1,
                  ),
                ],
              )
          ],
        ),
      ),
    );
  }

  String getPrice() {
    if (menuItem!.categoryPrices?.isEmpty ?? true) {
      return '₹ ${menuItem!.price!.toInt()}';
    } else {
      menuItem!.categoryPrices!
          .sort((a, b) => ((a.price ?? 0) - (b.price ?? 0)).toInt());
      final lowest = menuItem!.categoryPrices![0].price;
      return '₹ ${lowest!.toInt()}';
    }
  }
}
