part of canteen;

class MenuSearchDialog extends StatefulWidget {
  final CanteenBasicDetailsModel? canteenBasicDetailsModel;
  const MenuSearchDialog({
    Key? key,
    @required this.canteenBasicDetailsModel,
  }) : super(key: key);

  @override
  State<MenuSearchDialog> createState() => _MenuSearchDialogState();
}

class _MenuSearchDialogState extends State<MenuSearchDialog> {
  final searchTEC = TextEditingController();
  String searchQuery = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      padding: const EdgeInsets.only(
        top: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(
                  text: "Search",
                  fontSize: 18,
                ),
                const SizedBox(
                  height: 14,
                ),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    // boxShadow: Styles.boxShadow(),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/icons/search.png',
                          height: 20,
                          width: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 1,
                        height: 26,
                        color: Kolors.greyLightBlue,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: searchTEC,
                          decoration: InputDecoration(
                            hintText: "Search here",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: Fonts.CONTENT_FONT,
                              color: Kolors.greyBlue.withOpacity(0.5),
                              fontSize: 16,
                            ),
                            border: InputBorder.none,
                          ),
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: Fonts.CONTENT_FONT,
                            color: Kolors.greyBlack,
                            fontSize: 16,
                          ),
                          autofocus: true,
                          onChanged: (query) => updateSearchQuery(),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          if (searchQuery.isNotEmpty)
            Expanded(
              child: menuItemsList(),
            ),
        ],
      ),
    );
  }

  void updateSearchQuery() {
    setState(() {
      searchQuery = searchTEC.text;
    });
  }

  Widget menuItemsList() {
    return BlocBuilder<CanteenDetailsBloc, CanteenDetailsState>(
      builder: (context, state) {
        final list = getFilteredList(state.canteenItemsList!);
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onPanDown: (_) {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: MenuItemTile(
                  menuItem: list[index],
                  canteenBasicDetailsModel: widget.canteenBasicDetailsModel,
                  isLast: index == list.length - 1,
                ),
              );
            },
          ),
        );
      },
    );
  }

  List<ItemModel> getFilteredList(List<ItemModel> items) {
    List<ItemModel> filteredItems = [];
    items.forEach((element) {
      if (element.itemName!.toLowerCase().contains(searchQuery.toLowerCase())) {
        filteredItems.add(element);
      }
    });
    return filteredItems;
  }
}
