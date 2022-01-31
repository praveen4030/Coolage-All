part of canteen;

class CartIconButton extends StatelessWidget {
  const CartIconButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return BlocBuilder<CanteenDetailsBloc, CanteenDetailsState>(
    //   builder: (context, state) {
    final cartBox = Hive.box<CartModel>(HiveConstants.cartBoxName);
    return ValueListenableBuilder(
      valueListenable: cartBox.listenable(),
      builder: (context, box, widget) {
        final qty = getTotalItemsQty(cartBox.toMap());
        return Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              padding: EdgeInsets.all(4),
              child: IconWithWhiteBackground(
                iconName: 'cart',
                onTap: () {
                  Navigator.of(context, rootNavigator: true).push(
                      MaterialPageRoute(
                          builder: (context) => const CanteenCartPage()));
                },
              ),
            ),
            if (qty > 0)
              Container(
                height: 24,
                width: 24,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Kolors.secondaryColor1,
                  shape: BoxShape.circle,
                ),
                child: CustomText(
                  text: qty.toString(),
                  fontSize: 12,
                  color: Colors.white,
                ),
              )
          ],
        );
      },
    );
  }

  int getTotalItemsQty(Map<dynamic, CartModel> cartMap) {
    int qty = 0;
    cartMap.forEach((key, value) {
      qty += value.getItemsTotalQty();
    });
    return qty;
  }
}
