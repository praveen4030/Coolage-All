import 'package:coolage_merchant/application/canteen/orders_finished/orders_finished_bloc.dart';
import 'package:coolage_merchant/domain/base/canteen/order_model.dart';
import 'package:coolage_merchant/domain/core/helpers/getter.dart';
import 'package:coolage_merchant/presentation/base/order/widgets/date_widget.dart';
import 'package:coolage_merchant/presentation/base/order/widgets/order_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeliveredOrdersList extends StatefulWidget {
  const DeliveredOrdersList({Key? key}) : super(key: key);

  @override
  _DeliveredOrdersListState createState() => _DeliveredOrdersListState();
}

class _DeliveredOrdersListState extends State<DeliveredOrdersList> {
  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      final maxScroll = _scrollController.position.maxScrollExtent;
      final currentScroll = _scrollController.position.pixels;
      final delta = MediaQuery.of(context).size.height * 0.20;
      if (maxScroll - currentScroll <= delta) {
        context.read<OrdersFinishedBloc>().add(
            OrdersFinishedEvent.getMoreCompletedOrders(
                Getters.getCurrentCanteenId(context)));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OrdersFinishedBloc, OrdersFinishedState>(
        listener: (context, state) {},
        builder: (context, state) {
          return RefreshIndicator(
            onRefresh: () async {
              context.read<OrdersFinishedBloc>().add(
                  OrdersFinishedEvent.getCompletedOrders(
                      Getters.getCurrentCanteenId(context)));
            },
            child: SingleChildScrollView(
              controller: _scrollController,
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    if (state.isOrdersLoading!)
                      const Center(
                        child: CircularProgressIndicator(),
                      )
                    else
                      ListView.builder(
                        itemCount: state.completedOrdersList!.length,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              if (index == 0)
                                getTodaysWidget(
                                  state.completedOrdersList![index],
                                ),
                              OrderTile(
                                orderModel: state.completedOrdersList![index],
                              ),
                              if (index < state.completedOrdersList!.length - 1)
                                getWidget(state.completedOrdersList![index],
                                    state.completedOrdersList![index + 1]),
                            ],
                          );
                        },
                      ),
                    if (state.isAddingMoreLoading!)
                      const Center(child: CircularProgressIndicator()),
                  ],
                ),
              ),
            ),
          );
        });
  }

  Widget getTodaysWidget(
    OrderModel currentOrderModel,
  ) {
    DateTime date = currentOrderModel.timestamp!.toDate();
    return DateWidget(dateTime: date);
  }

  Widget getWidget(OrderModel currentOrderModel, OrderModel nextOrderModel) {
    DateTime date = currentOrderModel.timestamp!.toDate();
    DateTime nextDate = nextOrderModel.timestamp!.toDate();
    if (date.day != nextDate.day) {
      return DateWidget(dateTime: nextDate);
    }
    return Container();
  }
}
