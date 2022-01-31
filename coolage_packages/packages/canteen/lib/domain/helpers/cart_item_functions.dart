part of canteen;

mixin CanteenFunctions {
  static Future<void> addItemToCart({
    @required ItemModel? menuItemModel,
    @required CanteenBasicDetailsModel? canteenBasicDetailsModel,
  }) async {
    final cartBox = Hive.box<CartModel>(HiveConstants.cartBoxName);
    final canteenId = canteenBasicDetailsModel!.canteenId!;
    CartModel cart;
    if (cartBox.containsKey(canteenId)) {
      cart = cartBox.get(canteenId)!;
      final itemId = menuItemModel!.itemId;
      final cartItems = cart.cartItemsMap!;
      if (cartItems.containsKey(itemId)) {
        if (menuItemModel.qty == 0) {
          cartItems.remove(itemId);
        } else {
          cartItems.update(itemId!, (value) => menuItemModel);
        }
      } else {
        cartItems.putIfAbsent(itemId!, () => menuItemModel);
      }
      cart.cartItemsMap = cartItems;
      cart.qty = cart.getItemsTotalQty();
      cart.totalPrice = cart.getItemsTotalPrice();
      if (cart.qty == 0) {
        cartBox.delete(cart.uniqueId);
      } else {
        cart.canteenBasicDetailsModel = canteenBasicDetailsModel;
        cartBox.put(cart.uniqueId, cart);
      }
    } else {
      //if cart doent contain this canteen id then directly add this item to cart
      final canteenBasic = canteenBasicDetailsModel;
      cart = CartModel(
        qty: 1,
        totalPrice: menuItemModel!.getPrice(),
        cartItemsMap: {
          menuItemModel.itemId!: menuItemModel,
        },
        uniqueId: canteenBasicDetailsModel.canteenId,
        timestamp: Timestamp.now(),
      );
      cart.canteenBasicDetailsModel = canteenBasicDetailsModel;
      cartBox.put(cart.uniqueId, cart);
    }

    return;
  }

  static Future<void> deleteItems({
    required String canteenId,
  }) async {
    final cartBox = Hive.box<CartModel>(HiveConstants.cartBoxName);
    if (cartBox.containsKey(canteenId)) {
      await cartBox.delete(canteenId);
    }
    return;
  }
}
