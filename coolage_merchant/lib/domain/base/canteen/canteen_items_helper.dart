import 'package:coolage_merchant/domain/base/canteen/item_model.dart';
import 'package:coolage_merchant/domain/base/canteen/menu_category_model.dart';

class CanteenItemsHelper {
  static Map<String, List<ItemModel>> getItemsInMap(
      List<ItemModel>? menuItemsList) {
    final Map<String, List<ItemModel>> map = {};
    if (menuItemsList == null) {
      return {};
    }
    sortCategoryItemsByPrice(menuItemsList);
    for (ItemModel model in menuItemsList) {
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

  static List<MenuCategoryModel> getMenuCategoriesList(
      List<ItemModel>? menuItemsList) {
    final List<MenuCategoryModel> list = [];
    final itemsMap = getItemsInMap(menuItemsList);
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

  static void sortCategoryItemsByPrice(List<ItemModel> itemsList) {
    itemsList.sort((a, b) => ((a.price ?? 0) - (b.price ?? 0)).toInt());
  }
}
