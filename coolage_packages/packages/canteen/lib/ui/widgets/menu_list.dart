part of canteen;

class MenuList extends StatefulWidget {
  final CanteenBasicDetailsModel? canteenBasicDetailsModel;
  final AutoScrollController? autoScrollController;
  const MenuList({
    Key? key,
    @required this.canteenBasicDetailsModel,
    @required this.autoScrollController,
  }) : super(key: key);

  @override
  _MenuListState createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CanteenDetailsBloc, CanteenDetailsState>(
      builder: (context, state) {
        return Container(
            decoration: BoxDecoration(
              color: Kolors.greyWhite,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.symmetric(
              // horizontal: 20,
              vertical: 25,
            ),
            child: categoriesItemsList(
              state.menuCategoryWiseItemsMap!,
              state.menuCategoriesList!,
            ));
      },
    );
  }

  Widget categoriesItemsList(
      Map<String, List<ItemModel>> map, List<MenuCategoryModel> list) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: list.length,
      itemBuilder: (context, index) {
        final model = list[index];
        if (map[model.category] == null) return Container();
        return widget.autoScrollController != null
            ? AutoScrollTag(
                key: ValueKey(index + 1),
                controller: widget.autoScrollController!,
                index: index + 1,
                child: MenuCategoryItemsWidget(
                  category: model.category,
                  itemsList: map[model.category],
                  canteenBasicDetailsModel: widget.canteenBasicDetailsModel,
                ),
              )
            : MenuCategoryItemsWidget(
                category: model.category,
                itemsList: map[model.category],
                canteenBasicDetailsModel: widget.canteenBasicDetailsModel,
              );
      },
    );
  }
}
