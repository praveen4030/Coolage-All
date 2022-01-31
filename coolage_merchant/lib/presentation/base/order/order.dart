import 'package:coolage_merchant/application/canteen/menu/canteen_menu_bloc.dart';
import 'package:coolage_merchant/application/canteen/orders_canceled/orders_canceled_bloc.dart';
import 'package:coolage_merchant/application/canteen/orders_finished/orders_finished_bloc.dart';
import 'package:coolage_merchant/application/canteen/orders_pending/orders_pending_bloc.dart';
import 'package:coolage_merchant/domain/core/helpers/getter.dart';
import 'package:coolage_merchant/presentation/base/order/pages/cancelled_orders_list.dart';
import 'package:coolage_merchant/presentation/base/order/pages/delivered_orders_list.dart';
import 'package:coolage_merchant/presentation/base/order/widgets/order_header.dart';
import 'package:coolage_merchant/presentation/base/order/widgets/order_tile.dart';
import 'package:coolage_merchant/presentation/core/widgets/gradient_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  bool isCancelledOrders = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OrdersFinishedBloc, OrdersFinishedState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(130),
            child: OrderHeader(
              isCancelledOrders: isCancelledOrders,
              onChange: (bool val) {
                setState(() {
                  isCancelledOrders = !isCancelledOrders;
                });
                if (isCancelledOrders) {
                  context.read<OrdersCanceledBloc>().add(
                      OrdersCanceledEvent.getCanceledOrders(
                          Getters.getCurrentCanteenId(context)));
                } else {
                  context.read<OrdersFinishedBloc>().add(
                      OrdersFinishedEvent.getCompletedOrders(
                          Getters.getCurrentCanteenId(context)));
                }
              },
            ),
          ),
          body: isCancelledOrders
              ? const CancelledOrdersList()
              : const DeliveredOrdersList(),
        );
      },
    );
  }
}
