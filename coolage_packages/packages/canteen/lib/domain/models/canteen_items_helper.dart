part of canteen;

mixin CanteenItemsHelper {
  //if null then give all items
  static Map<String, List<ItemModel>> getItemsInMap(
    List<ItemModel>? menuItemsList, {
    @required bool? isOnlyVeg,
    @required bool? isOnlyNonVeg,
  }) {
    final Map<String, List<ItemModel>> map = {};
    if (menuItemsList == null) {
      return {};
    }
    for (ItemModel model in menuItemsList) {
      if (!(isOnlyVeg ?? false) && (isOnlyNonVeg ?? false)) {
        //only non veg then ignore veg
        if (model.isVeg!) {
          continue;
        }
      }
      if ((isOnlyVeg ?? false) && !(isOnlyNonVeg ?? false)) {
        //only  veg then ignore non veg
        if (!model.isVeg!) {
          continue;
        }
      }
      if (map.containsKey(model.category)) {
        map.update(model.category!, (value) {
          value.add(model);
          return value;
        });
      } else {
        final list = [model];
        map.putIfAbsent(model.category!, () => list);
      }
    }
    return map;
  }

  static List<MenuCategoryModel> getMenuCategoriesListForVegNonveg(
    List<ItemModel>? menuItemsList, {
    @required bool? isOnlyVeg,
    @required bool? isOnlyNonVeg,
  }) {
    final List<MenuCategoryModel> list = [];
    final itemsMap = getItemsInMap(menuItemsList,
        isOnlyNonVeg: isOnlyNonVeg, isOnlyVeg: isOnlyVeg);
    itemsMap.forEach((key, value) {
      list.add(MenuCategoryModel(
        category: key,
        count: value.length,
      ));
      return;
    });
    list.sort((a, b) => a.category!.compareTo(b.category!));
    return list;
  }

  // static List<MenuCategoryModel> getMenuCategoriesList(
  //     List<ItemModel>? menuItemsList) {
  //   final List<MenuCategoryModel> list = [];
  //   final itemsMap = getItemsInMap(menuItemsList);
  //   itemsMap.forEach((key, value) {
  //     list.add(MenuCategoryModel(
  //       category: key,
  //       count: value.length,
  //     ));
  //     return;
  //   });
  //   list.sort((a, b) => a.category!.compareTo(b.category!));
  //   return list;
  // }

  static void sortCategoryItemsByPrice(List<ItemModel> itemsList) {
    itemsList.sort((a, b) => ((a.price ?? 0) - (b.price ?? 0)).toInt());
  }
}
