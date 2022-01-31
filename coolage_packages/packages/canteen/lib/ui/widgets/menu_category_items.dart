part of canteen;

class MenuCategoryItemsWidget extends StatefulWidget {
  final List<ItemModel>? itemsList;
  final String? category;
  final CanteenBasicDetailsModel? canteenBasicDetailsModel;
  const MenuCategoryItemsWidget({
    Key? key,
    @required this.category,
    @required this.itemsList,
    @required this.canteenBasicDetailsModel,
  }) : super(key: key);

  @override
  _MenuCategoryItemsWidgetState createState() =>
      _MenuCategoryItemsWidgetState();
}

class _MenuCategoryItemsWidgetState extends State<MenuCategoryItemsWidget> {
  bool isExpanded = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(
            left: 32,
            top: 20,
            bottom: 8,
          ),
          child: GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Row(
              children: [
                CustomText(
                  text: widget.category,
                  color: Kolors.greyBlue,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                const Spacer(),
                Icon(
                  isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  color: Kolors.greyBlue,
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
        ),
        if (isExpanded)
          FutureBuilder(
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return snapshot.data as Widget;
              }
              return Container();
            },
            future: buildHeavyWidget(widget.itemsList!),
          )
      ],
    );
  }

  Future<Widget> buildHeavyWidget(List<ItemModel> itemsList) async {
    // build and return heavy widget
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 20),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: widget.itemsList!.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return MenuItemTile(
            menuItem: widget.itemsList![index],
            canteenBasicDetailsModel: widget.canteenBasicDetailsModel,
            isLast: index == widget.itemsList!.length - 1,
          );
        },
      ),
    );
  }
}
