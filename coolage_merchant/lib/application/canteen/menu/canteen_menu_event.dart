part of 'canteen_menu_bloc.dart';

@freezed
class CanteenMenuEvent with _$CanteenMenuEvent {
  const factory CanteenMenuEvent.getMenu(String canteenId) = _GetMenu;
  const factory CanteenMenuEvent.updateMenuItem(
    String canteenId,
    ItemModel itemModel,
    int index, {
    File? file,
  }) = _UpdateMenuItem;
  const factory CanteenMenuEvent.addMenuItem(
      String canteenId, ItemModel itemModel,
      {File? file}) = _AddMenuItem;
  const factory CanteenMenuEvent.deleteMenuItem(
      String canteenId, ItemModel itemModel, int index) = _DeleteMenuItem;
  const factory CanteenMenuEvent.addMenuCategory(
     String canteenId,String category) = _AddMenuCategory;
}
