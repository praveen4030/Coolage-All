import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolage_merchant/domain/core/helpers/getter.dart';
import 'package:coolage_merchant/domain/models/orders_list_count_model.dart';
import 'package:coolage_merchant/infrastructure/base/canteen/canteen_orders_count_handler.dart';
import 'package:coolage_merchant/presentation/base/home/widgets/home_header_flexible.dart';
import 'package:coolage_merchant/presentation/base/home/widgets/home_tabbar.dart';
import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:coolage_merchant/infrastructure/core/firebase_helpers.dart';

class HomeHeader extends StatefulWidget {
  final TabController? controller;
  final int? currentIndex;
  const HomeHeader({
    Key? key,
    @required this.controller,
    @required this.currentIndex,
  }) : super(key: key);

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  OrdersListCountModel model = OrdersListCountModel.empty();
  bool isListFunctionCalled = false;
  bool isCountFunctionCalled = false;

  @override
  void initState() {
    super.initState();
    CanteenOrdersCountHandler.getCountWithList(context,
        (OrdersListCountModel newModel) {
      setState(() {
        model = newModel;
        isListFunctionCalled = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 330,
      toolbarHeight: 0,
      pinned: true,
      floating: true,
      backgroundColor: Kolors.greyWhite,
      flexibleSpace: const FlexibleSpaceBar(
        collapseMode: CollapseMode.none,
        background: HomeHeaderFlexibleWidget(),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: SizedBox(
          height: 100,
          child: tabsWidget(context),
        ),
      ),
    );
  }

  Widget tabsWidget(BuildContext context) {
    if (!isCountFunctionCalled && isListFunctionCalled) {
      CanteenOrdersCountHandler.getCountWithModel(context,
          (OrdersListCountModel newModel) {
        setState(() {
          model = newModel;
          isCountFunctionCalled = true;
        });
      }, model);
    }
    return Container(
      child: StreamBuilder(
        stream: FirebaseFirestore.instance.canteenBasicDetailsCollection
            .doc(Getters.getCurrentCanteenId(context))
            .canteenDocsCollection
            .ordersListDocument
            .snapshots(),
        builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (snapshot.hasData) {
            final model = OrdersListCountModel.fromMap(
                snapshot.data!.data()! as Map<String, dynamic>);
            return HomeTabbarWidget(
              controller: widget.controller,
              currentIndex: widget.currentIndex,
              ordersListCountModel: model,
            );
          } else {
            return HomeTabbarWidget(
              controller: widget.controller,
              currentIndex: widget.currentIndex,
              ordersListCountModel: OrdersListCountModel.empty(),
            );
          }
        },
      ),
    );
  }
}
