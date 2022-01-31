import 'package:auto_route/auto_route.dart';
import 'package:coolage_merchant/application/canteen/orders_delivered/orders_delivering_bloc.dart';
import 'package:coolage_merchant/application/canteen/orders_pending/orders_pending_bloc.dart';
import 'package:coolage_merchant/application/canteen/orders_prepared/orders_prepared_bloc.dart';
import 'package:coolage_merchant/application/canteen/orders_preparing/orders_preparing_bloc.dart';
import 'package:coolage_merchant/domain/base/canteen/order_model.dart';
import 'package:coolage_merchant/domain/core/helpers/enum.dart';
import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/widgets/border_button.dart';
import 'package:coolage_merchant/presentation/core/widgets/button.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderDetailsBottomWidget extends StatelessWidget {
  final OrderModel? orderModel;
  final Function? onChange;
  const OrderDetailsBottomWidget({
    Key? key,
    @required this.onChange,
    @required this.orderModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 80,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: getBottomWidget(context),
    );
  }

  Widget getBottomWidget(BuildContext context) {
    if (orderModel!.orderStatus == OrderStatus.pending) {
      return pendingBottom(context);
    } else if (orderModel!.orderStatus == OrderStatus.preparing) {
      return preparingWidget(context);
    } else if (orderModel!.orderStatus == OrderStatus.prepared) {
      return preparedWidget(context);
    } else if (orderModel!.orderStatus == OrderStatus.delivering) {
      return outForDeliveryWidget(context);
    } else if (orderModel!.orderStatus == OrderStatus.canceled) {
      return canceledWidget();
    } else if (orderModel!.orderStatus == OrderStatus.delivered) {
      return deliveredBottom();
    }
    return Container();
  }

  Widget pendingBottom(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: BorderButton(
            onTap: () async {
              await showDialog(
                  context: context,
                  builder: (context) {
                    return alertDialog(
                        context, "Are you sure you want to cancel the order?",
                        () {
                      orderModel!.orderStatus = OrderStatus.canceled;
                      onChange!();
                      context
                          .read<OrdersPendingBloc>()
                          .add(OrdersPendingEvent.cancelOrder(orderModel!));
                    });
                  });
            },
            text: "Cancel",
            color: Colors.white,
            textColor: Colors.red,
          ),
        ),
        const SizedBox(width: 30),
        Expanded(
          flex: 1,
          child: ButtonWid(
            onTap: () async {
              await showDialog(
                  context: context,
                  builder: (context) {
                    return alertDialog(
                        context, "Are you sure you want to accept the order?",
                        () {
                      orderModel!.orderStatus = OrderStatus.preparing;
                      onChange!();
                      context
                          .read<OrdersPendingBloc>()
                          .add(OrdersPendingEvent.acceptOrder(orderModel!));
                    });
                  });
            },
            text: "Accept",
            color: Kolors.greenColor,
          ),
        ),
      ],
    );
  }

  Widget preparingWidget(BuildContext context) {
    return ButtonWid(
      onTap: () async {
        await showDialog(
            context: context,
            builder: (context) {
              return alertDialog(
                  context, "Are you sure you have prepared the order?", () {
                orderModel!.orderStatus = OrderStatus.prepared;
                onChange!();
                context
                    .read<OrdersPreparingBloc>()
                    .add(OrdersPreparingEvent.preparedOrder(orderModel!));
              });
            });
      },
      text: "Food Prepared",
      width: 300,
    );
  }

  Widget preparedWidget(BuildContext context) {
    return ButtonWid(
      onTap: () async {
        await showDialog(
            context: context,
            builder: (context) {
              final s = orderModel!.isDelivery!
                  ? "send the order for delivery?"
                  : 'deliver the order now?';
              return alertDialog(context, "Are you sure you want to $s", () {
                if (orderModel!.isDelivery!) {
                  orderModel!.orderStatus = OrderStatus.delivering;
                } else {
                  orderModel!.orderStatus = OrderStatus.delivered;
                }
                onChange!();
                context
                    .read<OrdersPreparedBloc>()
                    .add(OrdersPreparedEvent.deliveringOrder(orderModel!));
              });
            });
      },
      text: orderModel!.isDelivery! ? 'OUT FOR DELIVERY' : "DELIVER",
      width: 300,
    );
  }

  Widget outForDeliveryWidget(BuildContext context) {
    return ButtonWid(
      onTap: () async {
        await showDialog(
            context: context,
            builder: (context) {
              return alertDialog(
                  context, "Are you sure you have delivered the order?", () {
                orderModel!.orderStatus = OrderStatus.delivered;
                onChange!();
                context
                    .read<OrdersDeliveringBloc>()
                    .add(OrdersDeliveringEvent.deliveredOrder(orderModel!));
              });
            });
      },
      text: "DELIVER",
      width: 300,
    );
  }

  Widget canceledWidget() {
    return Center(
      child: ButtonWid(
        color: Colors.red,
        onTap: () {},
        text: "CANCELLED",
        width: 300,
      ),
    );
  }

  Widget deliveredBottom() {
    return Center(
      child: ButtonWid(
        color: Kolors.greenColor,
        onTap: () {},
        text: "DELIVERED",
        width: 300,
      ),
    );
  }

  Widget alertDialog(BuildContext context, String text, Function fn) {
    return AlertDialog(
      title: Text("Confirm"),
      content: Text(text),
      actions: [
        TextButton(
            onPressed: () {
              fn();
              AutoRouter.of(context).pop();
            },
            child: const CustomText(
              text: "Yes",
              color: Kolors.primaryColor1,
            )),
        TextButton(
            onPressed: () {
              AutoRouter.of(context).pop();
            },
            child: const CustomText(
              text: "Cancel",
              color: Kolors.fontColor,
            )),
      ],
    );
  }
}
