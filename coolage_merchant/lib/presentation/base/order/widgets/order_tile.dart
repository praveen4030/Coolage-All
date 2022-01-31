// import 'package:audioplayers/audioplayers.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolage_merchant/domain/base/canteen/item_model.dart';
import 'package:coolage_merchant/domain/base/canteen/order_model.dart';
import 'package:coolage_merchant/domain/core/helpers/constants.dart';
import 'package:coolage_merchant/domain/core/helpers/enum.dart';
import 'package:coolage_merchant/presentation/base/order/widgets/order_tile_bottom.dart';
import 'package:coolage_merchant/presentation/base/order/widgets/timer_widget.dart';
import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/theme/fonts.dart';
import 'package:coolage_merchant/presentation/core/widgets/border_button.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_text.dart';
import 'package:coolage_merchant/presentation/core/widgets/user_profile_circular.dart';
import 'package:coolage_merchant/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

class OrderTile extends StatelessWidget {
  final OrderModel? orderModel;
  const OrderTile({
    Key? key,
    this.orderModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).push(OrderDetailsPageRoute(
          orderModel: orderModel,
        ));
      },
      child: Container(
        padding: const EdgeInsets.only(
          top: 12,
        ),
        margin: const EdgeInsets.only(top: 12, bottom: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: Kolors.greyBlue.withOpacity(0.5),
            )
          ],
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            if (orderModel!.orderStatus != OrderStatus.delivered)
              OrderTileBottomWidget(orderModel: orderModel),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(
                    bottom: orderModel!.orderStatus != OrderStatus.delivered
                        ? 80
                        : 0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: [
                          profileWithCommentIcon(),
                          const SizedBox(
                            width: 22,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: orderModel!.orderPlaceByName,
                                  color: Kolors.fontColor,
                                  fontSize: 18,
                                ),
                                const SizedBox(
                                  height: 11,
                                ),
                                CustomText(
                                  text:
                                      'Total Price ${orderModel!.totalPrice.toString()}',
                                  color: Kolors.greyBlue,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: Fonts.CONTENT_FONT,
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Kolors.secondaryColor1,
                                ),
                                child: Image.asset(
                                  'assets/icons/arrow.png',
                                  height: 24,
                                  width: 24,
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              CustomText(
                                text: getTime(orderModel!.timestamp!, context),
                                color: Kolors.greyBlue,
                                fontSize: 14,
                                fontFamily: Fonts.CONTENT_FONT,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Kolors.greyBlue,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: getMenuString(
                                orderModel!.itemsMap!.values.toList()),
                            fontFamily: Fonts.CONTENT_FONT,
                            fontSize: 15,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          CustomText(
                            text: 'Order ID : ${orderModel!.orderId}',
                            fontFamily: Fonts.CONTENT_FONT,
                            fontSize: 15,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const CustomText(
                                text: "Delivery : ",
                                fontFamily: Fonts.CONTENT_FONT,
                                fontSize: 15,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: CustomText(
                                  text: getDeliveryString(
                                      orderModel!.isDelivery!,
                                      orderModel!.isTakeAway!,
                                      orderModel!.deliveryAddress!),
                                  fontFamily: Fonts.CONTENT_FONT,
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget profileWithCommentIcon() {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          margin: EdgeInsets.only(right: 6),
          child: UserProfileCircular(
            image: orderModel!.orderPlacedByImage,
            size: 71,
          ),
        ),
        if (orderModel!.orderComments?.isNotEmpty ?? false)
          Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  color: Kolors.greyBlue.withOpacity(0.5),
                )
              ],
            ),
            child: Image.asset(
              'assets/icons/comment.png',
              color: Kolors.greyBlue,
              height: 16,
              width: 17,
            ),
          )
      ],
    );
  }

  String getTime(Timestamp timestamp, BuildContext context) {
    final date = timestamp.toDate();
    final DateTime now = DateTime.now();
    final String s = DateFormat("h:mm a").format(date);

    return s;
  }

  String getDeliveryString(bool isDelivery, bool isTakeAway, String address) {
    String s = "";
    if (isDelivery) {
      s = "$s $address";
    } else if (isTakeAway) {
      s = "$s Take Away";
    } else {
      s = "$s On Table";
    }

    return s;
  }

  String getMenuString(List<ItemModel> itemsList) {
    String s = '';
    for (int i = 0; i < itemsList.length; i++) {
      final item = itemsList[i];
      if (item.categoryPrices!.isEmpty) {
        s = s + item.itemName!;
        s = "$s  (x";
        s = "$s ${item.qty})";
        if (i != itemsList.length - 1) {
          s = "$s | ";
        }
      } else {
        List<Widget> billingTiles = [];
        for (final categoryModel in item.categoryPrices!) {
          if (categoryModel.qty == 0) {
            continue;
          }
          s = s + item.itemName!;
          s = "$s  (${categoryModel.category})  (x";
          s = "$s ${categoryModel.qty})";
          if (i != itemsList.length - 1) {
            s = "$s | ";
          }
        }
      }
    }
    return s;
  }
}
