import 'package:coolage_merchant/domain/core/helpers/enum.dart';

import 'package:coolage_merchant/presentation/base/home/pages/ongoing_orders_realtime.dart';
import 'package:coolage_merchant/presentation/base/home/widgets/home_header.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4)
      ..addListener(() {
        setState(() {
          currentIndex = _tabController!.index;
        });
        // callFunction();
      });
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  // void callFunction() {
  //   if (currentIndex == 0) {
  //     context.read<OrdersPendingBloc>().add(OrdersPendingEvent.getPendingOrders(
  //         Getters.getCurrentCanteenId(context)));
  //   } else if (currentIndex == 1) {
  //     context.read<OrdersPreparingBloc>().add(
  //         OrdersPreparingEvent.getPreparingOrders(
  //             Getters.getCurrentCanteenId(context)));
  //   } else if (currentIndex == 2) {
  //     context.read<OrdersPreparedBloc>().add(
  //         OrdersPreparedEvent.getPreparedOrders(
  //             Getters.getCurrentCanteenId(context)));
  //   } else if (currentIndex == 3) {
  //     context.read<OrdersDeliveringBloc>().add(
  //         OrdersDeliveringEvent.getDeliveringOrders(
  //             Getters.getCurrentCanteenId(context)));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            HomeHeader(
              controller: _tabController,
              currentIndex: currentIndex,
            ),
          ];
        },
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Column(
            children: [
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    OngoingOrdersRealtime(
                      orderStatus: OrderStatus.pending,
                    ),
                    OngoingOrdersRealtime(
                      orderStatus: OrderStatus.preparing,
                    ),
                    OngoingOrdersRealtime(
                      orderStatus: OrderStatus.prepared,
                    ),
                    OngoingOrdersRealtime(
                      orderStatus: OrderStatus.delivering,
                    ),
                    // OngoingOrders(
                    //   orderStatus: OrderStatus.pending,
                    // ),
                    // OngoingOrders(
                    //   orderStatus: OrderStatus.preparing,
                    // ),
                    // OngoingOrders(
                    //   orderStatus: OrderStatus.prepared,
                    // ),
                    // OngoingOrders(
                    //   orderStatus: OrderStatus.delivering,
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
