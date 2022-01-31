import 'package:coolage_merchant/domain/base/canteen/item_model.dart';
import 'package:coolage_merchant/domain/base/canteen/order_model.dart';
import 'package:coolage_merchant/presentation/base/order/widgets/billing_tile.dart';
import 'package:coolage_merchant/presentation/base/order/widgets/discount_deliverycharges_tile.dart';
import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/theme/fonts.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_text.dart';
import 'package:coolage_merchant/presentation/core/widgets/price_widget.dart';
import 'package:flutter/material.dart';

class OrderDetailsBillingWidget extends StatelessWidget {
  final OrderModel? orderModel;
  const OrderDetailsBillingWidget({
    Key? key,
    @required this.orderModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return itemsList();
  }

  Widget itemsList() {
    final totalPrices = orderModel!.getItemsTotalPrice();
    final totalQty = orderModel!.getItemsTotalQty();
    final list = orderModel!.itemsMap!.values.toList();

    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Kolors.white,
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 21,
            horizontal: 15,
          ),
          child: Column(
            children: [
              ListView.builder(
                itemCount: list.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return itemTile(list[index], index == list.length - 1);
                },
              ),
              totalOfItems(totalQty.toInt(), totalPrices.toInt()),
              const SizedBox(
                height: 20,
              ),
              DiscountDeliveryChargesTile(
                deliverableZonesModel: orderModel!.deliverableZonesModel,
                totalPrices: totalPrices,
                isDelivery: orderModel!.isDelivery!,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: totalPayable(),
        ),
      ],
    );
  }

  Widget itemTile(ItemModel model, bool isLast) {
    if (model.categoryPrices!.isEmpty) {
      return BillingTile(
        isLast: isLast,
        name: model.itemName,
        price: model.getPrice().toInt().toString(),
        qty: model.getQty().toString(),
      );
    } else {
      List<Widget> billingTiles = [];
      for (final categoryModel in model.categoryPrices!) {
        if (categoryModel.qty == 0) {
          continue;
        }
        billingTiles.add(BillingTile(
          isLast: isLast,
          name: '${model.itemName} (${categoryModel.category})',
          price: categoryModel.price!.toInt().toString(),
          qty: categoryModel.qty.toString(),
        ));
      }
      return Column(
        children: [
          ...billingTiles,
        ],
      );
    }
  }

  Widget totalOfItems(int totalQty, int totalPrice) {
    return Column(
      children: [
        const Divider(
          color: Kolors.greyLightBlue,
          thickness: 1,
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            const Expanded(
              flex: 2,
              child: CustomText(
                text: "TOTAL",
                fontWeight: FontWeight.w600,
                fontFamily: Fonts.CONTENT_FONT,
                fontSize: 14,
              ),
            ),
            Expanded(
              flex: 1,
              child: CustomText(
                text: 'x $totalQty',
                textAlign: TextAlign.center,
                fontWeight: FontWeight.w600,
                fontFamily: Fonts.CONTENT_FONT,
                fontSize: 14,
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: CustomText(
                  text: '₹ $totalPrice',
                  fontWeight: FontWeight.w600,
                  fontFamily: Fonts.CONTENT_FONT,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget totalPayable() {
    final totalItemsPayable = orderModel!.getTotalPayable();
    return Row(
      children: [
        const Expanded(
          flex: 2,
          child: CustomText(
            text: "TOTAL AMOUNT PAID",
            fontWeight: FontWeight.w600,
            fontFamily: Fonts.CONTENT_FONT,
            fontSize: 14,
            color: Kolors.fontColor,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(),
        ),
        Expanded(
          flex: 1,
          child: Center(
            child: CustomText(
              text: '₹ ${orderModel!.getTotalPayable().toInt()}',
              fontWeight: FontWeight.w600,
              fontFamily: Fonts.CONTENT_FONT,
              fontSize: 16,
              color: Kolors.fontColor,
            ),
          ),
        ),
      ],
    );
  }
}
