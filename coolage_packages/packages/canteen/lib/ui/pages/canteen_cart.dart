part of canteen;

class CanteenCartPage extends StatefulWidget {
  const CanteenCartPage({Key? key}) : super(key: key);

  @override
  _CanteenCartPageState createState() => _CanteenCartPageState();
}

class _CanteenCartPageState extends State<CanteenCartPage> {
  @override
  void initState() {
    super.initState();
    context
        .read<CanteenDetailsBloc>()
        .add(const CanteenDetailsEvent.getCanteenCartItems());
  }

  Future<void> onRefresh(BuildContext context) async {
    context
        .read<CanteenDetailsBloc>()
        .add(const CanteenDetailsEvent.getCanteenCartItems());
  }

  @override
  Widget build(BuildContext context) {
    final cartBox = Hive.box<CartModel>(HiveConstants.cartBoxName);

    return ValueListenableBuilder(
      valueListenable: cartBox.listenable(),
      builder: (context, box, widget) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(80),
              child: Container(
                  color: Kolors.greyWhite,
                  child: const CoolageAppBar(
                    actions: [],
                    text: 'My Cart',
                    backgroundColor: Kolors.greyWhite,
                  )),
            ),
            body: RefreshIndicator(
              onRefresh: () => onRefresh(context),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                child:
                    // state.isCartLoading!
                    //     ? Container(
                    //         height: MediaQuery.of(context).size.height - 120,
                    //         child: const Center(
                    //           child: LogoLoading(),
                    //         ),
                    //       )
                    //     :
                    // state.cartItemsMap!.isEmpty
                    cartBox.isEmpty
                        ? const EmptyCardWidget()
                        : Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                            ),
                            child: canteenCartsList(cartBox.toMap()),
                          ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget canteenCartsList(Map<dynamic, CartModel> cartItemsMap) {
    final cartItemsList = cartItemsMap.values.toList();
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: cartItemsList.length,
      itemBuilder: (context, index) {
        if (cartItemsList[index].getItemsTotalQty() > 0) {
          return CanteenCartItemTile(
            canteenCart: cartItemsList[index],
          );
        }
        return Container();
      },
    );
  }
}
