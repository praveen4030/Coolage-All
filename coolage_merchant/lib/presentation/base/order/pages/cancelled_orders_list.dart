import 'package:coolage_merchant/application/canteen/orders_canceled/orders_canceled_bloc.dart';
import 'package:coolage_merchant/application/canteen/orders_finished/orders_finished_bloc.dart';
import 'package:coolage_merchant/domain/core/helpers/getter.dart';
import 'package:coolage_merchant/presentation/base/order/widgets/order_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CancelledOrdersList extends StatefulWidget {
  const CancelledOrdersList({Key? key}) : super(key: key);

  @override
  _CancelledOrdersListState createState() => _CancelledOrdersListState();
}

class _CancelledOrdersListState extends State<CancelledOrdersList> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(() {
      final maxScroll = _scrollController.position.maxScrollExtent;
      final currentScroll = _scrollController.position.pixels;
      final delta = MediaQuery.of(context).size.height * 0.20;
      if (maxScroll - currentScroll <= delta) {
        context.read<OrdersCanceledBloc>().add(
            OrdersCanceledEvent.getCanceledOrders(
                Getters.getCurrentCanteenId(context)));
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersCanceledBloc, OrdersCanceledState>(
      builder: (context, state) {
        return RefreshIndicator(
          onRefresh: () async {
            context.read<OrdersCanceledBloc>().add(
                OrdersCanceledEvent.getCanceledOrders(
                    Getters.getCurrentCanteenId(context)));
          },
          child: SingleChildScrollView(
            controller: _scrollController,
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                      itemCount: state.canceledOrdersList!.length,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return OrderTile(
                          orderModel: state.canceledOrdersList![index],
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
      },
    );
  }
}
