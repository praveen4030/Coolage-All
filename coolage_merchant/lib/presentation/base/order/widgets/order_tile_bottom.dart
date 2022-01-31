import 'package:auto_route/auto_route.dart';
import 'package:coolage_merchant/application/canteen/orders_delivered/orders_delivering_bloc.dart';
import 'package:coolage_merchant/application/canteen/orders_pending/orders_pending_bloc.dart';
import 'package:coolage_merchant/application/canteen/orders_prepared/orders_prepared_bloc.dart';
import 'package:coolage_merchant/application/canteen/orders_preparing/orders_preparing_bloc.dart';
import 'package:coolage_merchant/domain/base/canteen/order_model.dart';
import 'package:coolage_merchant/domain/core/helpers/enum.dart';
import 'package:coolage_merchant/presentation/base/order/widgets/timer_widget.dart';
import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/widgets/border_button.dart';
import 'package:coolage_merchant/presentation/core/widgets/button.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderTileBottomWidget extends StatelessWidget {
  final OrderModel? orderModel;
  const OrderTileBottomWidget({
    Key? key,
    @required this.orderModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: const EdgeInsets.only(
          left: 8,
          right: 8,
          top: 22,
        ),
        decoration: BoxDecoration(
          color: Kolors.secondaryColor2,
          borderRadius: BorderRadius.circular(8),
        ),
        height: 95,
        child: getWidget(context),
      ),
    );
  }

  Widget getWidget(BuildContext context) {
    if (orderModel!.orderStatus == OrderStatus.pending) {
      return pendingWidget(context);
    } else if (orderModel!.orderStatus == OrderStatus.preparing) {
      return preparingWidget(context);
    } else if (orderModel!.orderStatus == OrderStatus.prepared) {
      return preparedWidget(context);
    } else if (orderModel!.orderStatus == OrderStatus.delivering) {
      return outForDeliveryWidget(context);
    } else if (orderModel!.orderStatus == OrderStatus.canceled) {
      return canceledWidget();
    } else {
      return Container();
    }
  }

  Widget pendingWidget(BuildContext context) {
    return Row(
      children: [
        // const TimerWidget(time: "4:48"),
        const Spacer(),
        BorderButton(
          color: Colors.white,
          onTap: () async {
            await showDialog(
                context: context,
                builder: (context) {
                  return alertDialog(
                      context, "Are you sure you want to accept the order?",
                      () {
                    context
                        .read<OrdersPendingBloc>()
                        .add(OrdersPendingEvent.acceptOrder(orderModel!));
                  });
                });
          },
          text: "ACCEPT",
          maxWidth: 140,
        ),
      ],
    );
  }

  Widget preparingWidget(BuildContext context) {
    return Row(
      children: [
        // const TimerWidget(time: "4:48"),
        const Spacer(),
        BorderButton(
          color: Colors.white,
          onTap: () async {
            await showDialog(
                context: context,
                builder: (context) {
                  return alertDialog(
                      context, "Are you sure you have prepared the order?", () {
                    context
                        .read<OrdersPreparingBloc>()
                        .add(OrdersPreparingEvent.preparedOrder(orderModel!));
                  });
                });
          },
          text: "Food Prepared",
          maxWidth: 180,
        ),
      ],
    );
  }

  Widget preparedWidget(BuildContext context) {
    return Row(
      children: [
        // const TimerWidget(time: "4:48"),
        const Spacer(),
        BorderButton(
          color: Colors.white,
          onTap: () async {
            await showDialog(
                context: context,
                builder: (context) {
                  return alertDialog(
                      context, "Are you sure you want to deliver the order?",
                      () {
                    context
                        .read<OrdersPreparedBloc>()
                        .add(OrdersPreparedEvent.deliveringOrder(orderModel!));
                  });
                });
          },
          text: orderModel!.isDelivery! ? 'OUT FOR DELIVERY' : "DELIVER",
          maxWidth: 200,
        ),
      ],
    );
  }

  Widget outForDeliveryWidget(BuildContext context) {
    return Row(
      children: [
        // const TimerWidget(time: "4:48"),
        const Spacer(),
        BorderButton(
          color: Colors.white,
          onTap: () async {
            await showDialog(
                context: context,
                builder: (context) {
                  return alertDialog(
                      context, "Are you sure you have delivered the order?",
                      () {
                    context
                        .read<OrdersDeliveringBloc>()
                        .add(OrdersDeliveringEvent.deliveredOrder(orderModel!));
                  });
                });
          },
          text: "DELIVER",
          maxWidth: 140,
        ),
      ],
    );
  }

  Widget canceledWidget() {
    return const Center(
      child: CustomText(
        text: "CANCELLED",
        fontSize: 17,
        color: Colors.white,
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
