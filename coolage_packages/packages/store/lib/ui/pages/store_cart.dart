import 'package:coolage/application/store/store_cart/store_cart_bloc.dart';
import 'package:coolage/domain/base/canteen/cart_model.dart';
import 'package:coolage/presentation/base/store/widgets/store_cart_item_tile.dart';
import 'package:core/core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StoreCartPage extends StatefulWidget {
  const StoreCartPage({Key? key}) : super(key: key);

  @override
  _StoreCartPageState createState() => _StoreCartPageState();
}

class _StoreCartPageState extends State<StoreCartPage> {
  @override
  void initState() {
    super.initState();
    context.read<StoreCartBloc>().add(const StoreCartEvent.getStoreCartItems());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StoreCartBloc, StoreCartState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.transparent,
            appBar: const PreferredSize(
              preferredSize: Size.fromHeight(80),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: CoolageAppBar(
                  actions: [],
                  text: 'My Cart',
                ),
              ),
            ),
            body: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: storeCartsList(getFilteredCartItems(state.cartItemsMap!)),
            ),
          );
        });
  }

  List<CartModel> getFilteredCartItems(Map<String, CartModel> map) {
    final cartModels = map.values.toList();
    cartModels.sort((a, b) =>
        a.timestamp!.toDate().difference(b.timestamp!.toDate()).inSeconds);
    return cartModels;
  }

  Widget storeCartsList(List<CartModel> list) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return StoreCartItemTile(
          storeCart: list[index],
        );
      },
    );
  }
}
