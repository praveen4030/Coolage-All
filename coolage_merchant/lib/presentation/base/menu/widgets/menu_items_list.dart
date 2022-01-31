import 'package:coolage_merchant/domain/base/canteen/canteen_basic_details_model.dart';
import 'package:coolage_merchant/domain/base/canteen/canteen_items_helper.dart';
import 'package:coolage_merchant/domain/base/canteen/item_model.dart';
import 'package:coolage_merchant/presentation/base/menu/widgets/menu_category_items.dart';
import 'package:coolage_merchant/presentation/base/menu/widgets/menu_item_tile.dart';
import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class MenuList extends StatefulWidget {
  final List<ItemModel>? menuItemsList;
  final AutoScrollController? autoScrollController;
  const MenuList({
    Key? key,
    @required this.menuItemsList,
    @required this.autoScrollController,
  }) : super(key: key);

  @override
  _MenuListState createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Kolors.greyWhite,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        controller: widget.autoScrollController,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: categoriesItemsList(),
        ),
      ),
    );
  }

  Widget categoriesItemsList() {
    final map = CanteenItemsHelper.getItemsInMap(widget.menuItemsList);
    final menuCategoriesList = CanteenItemsHelper.getMenuCategoriesList(
      widget.menuItemsList,
    );

    return ListView.builder(
      itemCount: menuCategoriesList.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final model = menuCategoriesList[index];
        return AutoScrollTag(
          key: ValueKey(index),
          controller: widget.autoScrollController!,
          index: index,
          child: MenuCategoryItemsWidget(
            category: model.category,
            itemsList: map[model.category],
          ),
        );
      },
    );
  }
}
