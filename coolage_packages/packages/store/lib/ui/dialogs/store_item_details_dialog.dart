import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:coolage/domain/base/store/store_basic_details.dart';
import 'package:coolage/domain/models/item_model.dart';
import 'package:core/core.dart';

import 'package:flutter/material.dart';

class StoreItemDetailsDialog extends StatelessWidget {
  final ItemModel? storeItemModel;
  final Function? onAddToCart;
  const StoreItemDetailsDialog({
    Key? key,
    @required this.storeItemModel,
    @required this.onAddToCart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Kolors.greyWhite,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          image(context),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: storeItemModel!.itemName,
                  fontFamily: Fonts.CONTENT_FONT,
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomText(
                  text: storeItemModel!.desc,
                  fontFamily: Fonts.CONTENT_FONT,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Kolors.greyLightBlue,
                ),
                const SizedBox(
                  height: 13,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        PriceWidget(
                          price: CustomText(
                            text: '${storeItemModel!.price!.toInt()}',
                            fontFamily: Fonts.CONTENT_FONT,
                            fontWeight: FontWeight.w600,
                            fontSize: 28,
                          ),
                          size: 16,
                        ),
                        const CustomText(
                          text: "Cost / Item",
                          color: Kolors.greyLightBlue,
                          fontFamily: Fonts.CONTENT_FONT,
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                        )
                      ],
                    ),
                    const Spacer(),
                    QuantityWidget(
                      qty: storeItemModel!.qty!.toInt(),
                      onDecrement: () {},
                      onIncrement: () {},
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const CustomText(
                      text: "50 pcs. available",
                      fontFamily: Fonts.CONTENT_FONT,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Kolors.greyLightBlue,
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(),
                        ],
                      ),
                      child: const Icon(
                        Icons.share_outlined,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          bottom(context),
        ],
      ),
    );
  }

  Widget bottom(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onAddToCart!();
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
        color: Colors.white,
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 11,
            ),
            width: 200,
            decoration: BoxDecoration(
              color: Kolors.secondaryColor1,
              borderRadius: BorderRadius.circular(8),
            ),
            alignment: Alignment.center,
            child: CustomText(
              text: storeItemModel!.qty! == 0 ? "Add to Cart" : "Go to Cart",
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }

  Widget image(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(6),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: storeItemModel!.image!,
                height: 200,
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  AutoRouter.of(context).pop();
                },
                child: const Icon(
                  Icons.cancel_rounded,
                  color: Colors.red,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
