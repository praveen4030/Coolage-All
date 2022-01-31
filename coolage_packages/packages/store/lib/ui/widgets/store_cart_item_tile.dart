import 'package:auto_route/auto_route.dart';
import 'package:coolage/application/store/store_cart/store_cart_bloc.dart';
import 'package:coolage/domain/base/canteen/cart_model.dart';
import 'package:coolage/domain/models/item_model.dart';
import 'package:coolage/presentation/base/widgets/cart_item.dart';
import 'package:core/core.dart';

import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class StoreCartItemTile extends StatelessWidget {
  final CartModel? storeCart;
  const StoreCartItemTile({
    Key? key,
    @required this.storeCart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 25),
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 4,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Kolors.greyWhite,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // CustomText(
                      //   text: storeCart!.name,
                      // ),
                      Row(
                        children: [
                          const CustomText(
                            text: "Total",
                            fontWeight: FontWeight.w600,
                            fontFamily: Fonts.CONTENT_FONT,
                            fontSize: 12,
                            color: Kolors.greyBlue,
                          ),
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Kolors.secondaryColor1,
                            ),
                            child: CustomText(
                              text: '${storeCart!.qty!.toInt()}',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: Fonts.CONTENT_FONT,
                              color: Colors.white,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  color: Kolors.greyBlue,
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // CustomText(
                    //   text:
                    //       '${storeCart!.location} | Open till ${storeCart!.openTill!.format(context)}',
                    //   fontFamily: Fonts.CONTENT_FONT,
                    //   fontSize: 12,
                    //   color: Kolors.greyBlue,
                    //   fontWeight: FontWeight.w600,
                    // ),
                    Row(
                      children: [
                        CustomText(
                          text: '₹',
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Kolors.greyBlue.withOpacity(0.2),
                        ),
                        CustomText(
                          text: '${storeCart!.totalPrice}',
                          fontFamily: Fonts.CONTENT_FONT,
                          fontSize: 24,
                          color: Kolors.greyBlue,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 7,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 8,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 70),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: getSortedItems().length,
                      itemBuilder: (context, index) {
                        final list = getSortedItems();
                        return CartItem(
                          itemModel: list[index],
                          isLast: getSortedItems().length - 1 == index,
                          onAdd: (int qty, bool isIncrease) {
                            context.read<StoreCartBloc>().add(
                                StoreCartEvent.addToCart(
                                    canteenId: storeCart!.uniqueId,
                                    itemId: list[index].itemId,
                                    isIncreased: isIncrease));
                          },
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () async {
              placeOrder(context);
            },
            child: Container(
              height: 50,
              width: 175,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: Kolors.greyBlue,
                borderRadius: BorderRadius.circular(50),
              ),
              child: const CustomText(
                text: "Place Order",
                fontSize: 26,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }

  Future<void> placeOrder(BuildContext context) async {
    await showDialog(
        context: context,
        builder: (context) {
          return BlocConsumer<StoreCartBloc, StoreCartState>(
            listener: (context, state) {
              state.placeOrderFailureOrSuccess!.fold(() {}, (either) {
                either.fold(
                  (failure) async {
                    await AutoRouter.of(context).pop();
                    FlushbarHelper.createError(message: failure.error)
                        .show(context);
                  },
                  (_) async {
                    await AutoRouter.of(context).pop();
                    Fluttertoast.showToast(msg: "Order Placed successfully");
                  },
                );
              });
            },
            builder: (context, state) {
              return Dialog(
                child: Container(),
                // child: PlaceOrderDialog(
                //   cartModel: storeCart,
                //   isLoading: state.isPlacingOrder,
                //   onSuccess: (String paymentId, bool isDelivery,
                //       String deliveryAddress) {
                //     // widget.onSuccess!(paymentId, isDelivery, deliveryAddress);
                //   },
                //   // onPlaceOrderTap: (bool isDelivery, String deliveryAddress) {
                //   //   context.read<StoreCartBloc>().add(StoreCartEvent.placeOrder(
                //   //         cartModel: storeCart,
                //   //         isDelivery: isDelivery,
                //   //         deliveryAddress: deliveryAddress,
                //   //         coolUser: Getters.getCurrentUser(context: context),
                //   //       ));
                //   //   // setState(() {});
                //   // },
                // ),
              );
            },
          );
        });
  }

  List<ItemModel> getSortedItems() {
    final list = storeCart!.cartItemsMap!.values.toList();
    list.sort((a, b) => a.itemName!.compareTo(b.itemName!));
    return list;
  }
}
