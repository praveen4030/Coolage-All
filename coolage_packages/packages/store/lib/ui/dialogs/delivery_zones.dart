import 'package:coolage/domain/base/canteen/cart_model.dart';
import 'package:coolage/domain/models/deliverable_zones_model.dart';
import 'package:core/core.dart';

import 'package:flutter/material.dart';

class DeliveryZonesWidget extends StatelessWidget {
  final int? zoneSelectedIndex;
  final Function? onZoneChange;
  final List<String>? zonesList;
  final CartModel? cartModel;
  const DeliveryZonesWidget({
    Key? key,
    @required this.zoneSelectedIndex,
    @required this.onZoneChange,
    @required this.zonesList,
    @required this.cartModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final zonesModelList =
        cartModel!.canteenBasicDetailsModel!.deliveryZonesList!;
    return Column(
      children: [
        ListView.builder(
          itemCount: zonesModelList.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return zoneTile(zonesModelList[index], context, index);
          },
        ),
      ],
    );
  }

  Widget zoneTile(
      DeliverableZonesModel zoneModel, BuildContext context, int index) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: zoneModel.zone ?? '',
                        fontFamily: Fonts.CONTENT_FONT,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: zoneSelectedIndex == index
                            ? Colors.black
                            : Kolors.greyBlue,
                      ),
                      if (zoneSelectedIndex == index)
                        if (cartModel!.totalPrice! >
                            zoneModel.minimumPriceForFreeDelivery!)
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 4,
                            ),
                            child: deliveryFeeTag("Free Delivery"),
                          )
                        else
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 4,
                            ),
                            child: Row(
                              children: [
                                CustomText(
                                  text:
                                      "Delivery Fee | ₹${zoneModel.deliveryCharge}",
                                  fontFamily: Fonts.CONTENT_FONT,
                                  fontSize: 12,
                                  color: Kolors.greyBlue,
                                ),
                                const SizedBox(width: 4),
                                deliveryFeeTag(
                                    "Free above ₹ ${zoneModel.minimumPriceForFreeDelivery}")
                              ],
                            ),
                          )
                    ],
                  ),
                ),
                Radio(
                    activeColor: Kolors.secondaryColor2,
                    value: zoneSelectedIndex == index ? 0 : 1,
                    groupValue: 0,
                    onChanged: (int? val) {
                      onZoneChange!(index);
                    }),
              ],
            ),
          ),
          if (zoneSelectedIndex == index)
            Container(
              decoration: const BoxDecoration(
                color: Kolors.secondaryColor2,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
              ),
              height: 8,
            ),
        ],
      ),
    );
  }

  Widget deliveryFeeTag(String text) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Kolors.secondaryColor2.withOpacity(0.2),
      ),
      child: CustomText(
        text: text,
        fontFamily: Fonts.CONTENT_FONT,
        fontSize: 12,
        color: Kolors.greyBlue,
      ),
    );
  }
}
