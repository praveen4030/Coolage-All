import 'package:cached_network_image/cached_network_image.dart';
import 'package:coolage/domain/models/item_model.dart';
import 'package:core/core.dart';

import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final ItemModel? itemModel;
  final Function? onAdd;
  final bool? isLast;
  const CartItem({
    Key? key,
    @required this.itemModel,
    @required this.onAdd,
    @required this.isLast,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 12, bottom: 20, right: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: itemModel!.itemName,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    CustomText(
                      text: '₹ ${getCartItemPrice()}',
                      color: Kolors.greyBlue,
                    ),
                  ],
                ),
              ),
              if (itemModel!.image != null && itemModel!.image!.isNotEmpty)
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: PhotoViewTap(
                        imageUrl: itemModel!.image,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: CachedNetworkImage(
                            imageUrl: itemModel!.image!,
                            height: 80,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    QuantityWidget(
                      qty: itemModel!.qty!.toInt(),
                      onDecrement: () {
                        onAdd!(itemModel!.qty! - 1, false);
                      },
                      onIncrement: () {
                        onAdd!(itemModel!.qty! + 1, true);
                      },
                    ),
                  ],
                )
              else
                QuantityWidget(
                  qty: itemModel!.qty!.toInt(),
                  onDecrement: () {
                    onAdd!(itemModel!.qty! - 1, false);
                  },
                  onIncrement: () {
                    onAdd!(itemModel!.qty! + 1, true);
                  },
                ),
            ],
          ),
          if (!isLast!)
            Column(
              children: const [
                SizedBox(
                  height: 30,
                ),
                Divider(
                  color: Kolors.greyBlue,
                  height: 1,
                ),
              ],
            )
        ],
      ),
    );
  }

  String getCartItemPrice() {
    if (itemModel!.categoryPrices!.isEmpty) {
      return '${itemModel!.price!.toInt()}';
    } else {
      double price = 0;
      for (final model in itemModel!.categoryPrices!) {
        price += model.qty! * model.price!;
      }
      return '${price.toInt()}';
    }
  }
}
