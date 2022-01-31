import 'package:auto_route/auto_route.dart';
import 'package:coolage_merchant/application/canteen/orders_delivered/orders_delivering_bloc.dart';
import 'package:coolage_merchant/application/canteen/orders_pending/orders_pending_bloc.dart';
import 'package:coolage_merchant/application/canteen/orders_prepared/orders_prepared_bloc.dart';
import 'package:coolage_merchant/application/canteen/orders_preparing/orders_preparing_bloc.dart';
import 'package:coolage_merchant/domain/base/canteen/item_model.dart';
import 'package:coolage_merchant/domain/base/canteen/order_model.dart';
import 'package:coolage_merchant/domain/core/helpers/enum.dart';
import 'package:coolage_merchant/presentation/base/order/pages/order_details_billing.dart';
import 'package:coolage_merchant/presentation/base/order/pages/order_details_bottom.dart';
import 'package:coolage_merchant/presentation/base/order/pages/order_status.dart';
import 'package:coolage_merchant/presentation/base/order/widgets/customer_tile.dart';
import 'package:coolage_merchant/presentation/base/order/widgets/order_comments.dart';
import 'package:coolage_merchant/presentation/base/order/widgets/order_delivery_details.dart';
import 'package:coolage_merchant/presentation/base/order/widgets/order_timeline.dart';
import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/theme/fonts.dart';
import 'package:coolage_merchant/presentation/core/widgets/border_button.dart';
import 'package:coolage_merchant/presentation/core/widgets/button.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_layout.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_text.dart';
import 'package:coolage_merchant/presentation/core/widgets/price_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderDetailsPage extends StatefulWidget {
  final OrderModel? orderModel;
  const OrderDetailsPage({
    Key? key,
    @required this.orderModel,
  }) : super(key: key);

  @override
  _OrderDetailsPageState createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return CustomLayout(
      child: Scaffold(
        backgroundColor: Kolors.greyWhite,
        appBar: AppBar(
          backgroundColor: Kolors.greyWhite,
          toolbarHeight: 100,
          title: CustomText(
            text: 'Order ID : ${widget.orderModel!.orderId ?? ''}',
            overflow: TextOverflow.ellipsis,
            fontSize: 18,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(
                  text: "Customer : ",
                  color: Kolors.fontColor,
                  fontFamily: Fonts.CONTENT_FONT,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomerTile(
                  contactNo: widget.orderModel!.orderPlacedByContactNo,
                  image: widget.orderModel!.orderPlacedByImage,
                  name: widget.orderModel!.orderPlaceByName,
                  messageUid: widget.orderModel!.orderPlaceByUid,
                ),
                const SizedBox(
                  height: 32,
                ),
                const CustomText(
                  text: "Order : ",
                  color: Kolors.fontColor,
                  fontFamily: Fonts.CONTENT_FONT,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
                const SizedBox(
                  height: 10,
                ),
                OrderDetailsBillingWidget(orderModel: widget.orderModel),
                const SizedBox(
                  height: 32,
                ),
                const CustomText(
                  text: "Delivery : ",
                  color: Kolors.fontColor,
                  fontFamily: Fonts.CONTENT_FONT,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
                const SizedBox(
                  height: 10,
                ),
                OrderDeliveryDetailsWidget(
                  orderModel: widget.orderModel,
                ),
                if (widget.orderModel!.orderComments?.isNotEmpty ?? false)
                  OrderCommentsWidget(
                    orderComments: widget.orderModel!.orderComments,
                  ),
                const SizedBox(
                  height: 32,
                ),
                const CustomText(
                  text: "Timeline : ",
                  color: Kolors.fontColor,
                  fontFamily: Fonts.CONTENT_FONT,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
                const SizedBox(
                  height: 10,
                ),
                FutureBuilder(
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return snapshot.data as Widget;
                    } else {
                      return Container();
                    }
                  },
                  future: buildTimeline(),
                ),
                // OrderStatusWidget(
                //   orderStatus: widget.orderModel!.orderStatus,
                //   isDelivery: widget.orderModel!.isDelivery,
                // ),
                const SizedBox(
                  height: 80,
                ),
              ],
            ),
          ),
        ),
        bottomSheet: OrderDetailsBottomWidget(
          orderModel: widget.orderModel,
          onChange: () {
            setState(() {});
          },
        ),
      ),
    );
  }

  Future<Widget> buildTimeline() async {
    // build and return heavy widget
    return OrderTimelineWidget(orderModel: widget.orderModel);
  }
}
