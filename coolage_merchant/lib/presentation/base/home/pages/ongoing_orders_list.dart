import 'package:coolage_merchant/application/canteen/orders_delivered/orders_delivering_bloc.dart';
import 'package:coolage_merchant/application/canteen/orders_finished/orders_finished_bloc.dart';
import 'package:coolage_merchant/application/canteen/orders_pending/orders_pending_bloc.dart';
import 'package:coolage_merchant/application/canteen/orders_prepared/orders_prepared_bloc.dart';
import 'package:coolage_merchant/application/canteen/orders_preparing/orders_preparing_bloc.dart';
import 'package:coolage_merchant/domain/base/canteen/order_model.dart';
import 'package:coolage_merchant/domain/core/helpers/enum.dart';
import 'package:coolage_merchant/domain/core/helpers/getter.dart';
import 'package:coolage_merchant/presentation/base/order/widgets/order_tile.dart';
import 'package:coolage_merchant/presentation/core/widgets/gradient_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OngoingOrders extends StatefulWidget {
  final OrderStatus? orderStatus;
  const OngoingOrders({
    Key? key,
    @required this.orderStatus,
  }) : super(key: key);

  @override
  _OngoingOrdersState createState() => _OngoingOrdersState();
}

class _OngoingOrdersState extends State<OngoingOrders> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(() {
      final maxScroll = _scrollController.position.maxScrollExtent;
      final currentScroll = _scrollController.position.pixels;
      final delta = MediaQuery.of(context).size.height * 0.20;
      if (maxScroll - currentScroll <= delta) {
        if (widget.orderStatus == OrderStatus.pending) {
          context.read<OrdersPendingBloc>().add(
              OrdersPendingEvent.getPendingOrders(
                  Getters.getCurrentCanteenId(context)));
        } else if (widget.orderStatus == OrderStatus.preparing) {
          context.read<OrdersPreparingBloc>().add(
              OrdersPreparingEvent.getPreparingOrders(
                  Getters.getCurrentCanteenId(context)));
        } else if (widget.orderStatus == OrderStatus.prepared) {
          context.read<OrdersPreparedBloc>().add(
              OrdersPreparedEvent.getPreparedOrders(
                  Getters.getCurrentCanteenId(context)));
        } else {
          context.read<OrdersDeliveringBloc>().add(
              OrdersDeliveringEvent.getDeliveringOrders(
                  Getters.getCurrentCanteenId(context)));
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.orderStatus == OrderStatus.pending) {
      return pendingWidget(context);
    } else if (widget.orderStatus == OrderStatus.preparing) {
      return preparingWidget(context);
    } else if (widget.orderStatus == OrderStatus.prepared) {
      return preparedWidget(context);
    } else {
      return deliveringWidget(context);
    }
  }

  Widget pendingWidget(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<OrdersPendingBloc>().add(
            OrdersPendingEvent.getPendingOrders(
                Getters.getCurrentCanteenId(context)));
      },
      child: BlocConsumer<OrdersPendingBloc, OrdersPendingState>(
        listener: (context, state) {
          state.orderAceeptFailureOrSuccess!.fold(() {}, (either) {
            either.fold(
              (failure) {},
              (_) {},
            );
          });
        },
        builder: (context, state) {
          return ordersList(state.ordersList!, state.isOrdersLoading!,
              state.isAddingMoreLoading!);
        },
      ),
    );
  }

  Widget preparingWidget(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<OrdersPreparingBloc>().add(
            OrdersPreparingEvent.getPreparingOrders(
                Getters.getCurrentCanteenId(context)));
      },
      child: BlocConsumer<OrdersPreparingBloc, OrdersPreparingState>(
        listener: (context, state) {},
        builder: (context, state) {
          return ordersList(state.ordersList!, state.isOrdersLoading!,
              state.isAddingMoreLoading!);
        },
      ),
    );
  }

  Widget preparedWidget(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<OrdersPreparedBloc>().add(
            OrdersPreparedEvent.getPreparedOrders(
                Getters.getCurrentCanteenId(context)));
      },
      child: BlocConsumer<OrdersPreparedBloc, OrdersPreparedState>(
        listener: (context, state) {},
        builder: (context, state) {
          return ordersList(state.ordersList!, state.isOrdersLoading!,
              state.isAddingMoreLoading!);
        },
      ),
    );
  }

  Widget deliveringWidget(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<OrdersDeliveringBloc>().add(
            OrdersDeliveringEvent.getDeliveringOrders(
                Getters.getCurrentCanteenId(context)));
      },
      child: BlocConsumer<OrdersDeliveringBloc, OrdersDeliveringState>(
        listener: (context, state) {},
        builder: (context, state) {
          return ordersList(state.ordersList!, state.isOrdersLoading!,
              state.isAddingMoreLoading!);
        },
      ),
    );
  }

  Widget ordersList(
      List<OrderModel> ordersList, bool isLoading, bool isMoreLoading) {
    return SingleChildScrollView(
      controller: _scrollController,
      physics:
          const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            if (isLoading)
              Center(child: CircularProgressIndicator())
            else
              ListView.builder(
                itemCount: ordersList.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return OrderTile(
                    orderModel: ordersList[index],
                  );
                },
              ),
            if (isMoreLoading) const Center(child: CircularProgressIndicator()),
          ],
        ),
      ),
    );
  }
}
