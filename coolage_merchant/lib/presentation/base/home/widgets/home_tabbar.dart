import 'package:coolage_merchant/domain/models/ongoing_orders_count_model.dart';
import 'package:coolage_merchant/domain/models/orders_list_count_model.dart';
import 'package:coolage_merchant/presentation/base/home/pages/ongoing_orders_count.dart';
import 'package:coolage_merchant/presentation/base/home/widgets/tab_icon_widget.dart';
import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/theme/fonts.dart';
import 'package:flutter/material.dart';

class HomeTabbarWidget extends StatelessWidget {
  final TabController? controller;
  final int? currentIndex;
  final OrdersListCountModel? ordersListCountModel;
  const HomeTabbarWidget({
    Key? key,
    @required this.controller,
    @required this.currentIndex,
    @required this.ordersListCountModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: controller,
      indicator: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Kolors.primaryColor1,
          ),
        ),
      ),
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorColor: Kolors.primaryColor1,
      labelColor: Kolors.fontColor,
      labelStyle: const TextStyle(
        fontSize: 12,
        fontFamily: Fonts.CONTENT_FONT,
        color: Kolors.fontColor,
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 12,
        fontFamily: Fonts.CONTENT_FONT,
        color: Kolors.fontColor,
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelColor: Colors.grey[400],
      isScrollable: true,
      tabs: [
        SizedBox(
          height: 95,
          child: Tab(
              text: "New",
              icon: GetTabIconWidget(
                icon: 'new_order',
                isShowingOnlyRedDot:
                    (ordersListCountModel!.isNewOrderPresent ?? false) ||
                        (ordersListCountModel!.pending?.isNotEmpty ?? false),
                isCurrent: currentIndex! == 0,
                number: ordersListCountModel!.pending?.length ?? 0,
              )),
        ),
        SizedBox(
          height: 95,
          child: Tab(
              text: "In Kitchen",
              icon: GetTabIconWidget(
                icon: 'preparing',
                isCurrent: currentIndex! == 1,
                number: ordersListCountModel!.preparing?.length ?? 0,
              )),
        ),
        SizedBox(
          height: 95,
          child: Tab(
              text: "Prepared",
              icon: GetTabIconWidget(
                icon: 'prepared',
                isCurrent: currentIndex! == 2,
                number: ordersListCountModel!.prepared?.length ?? 0,
              )),
        ),
        SizedBox(
          height: 95,
          child: Tab(
            text: "Out for Delivery",
            icon: GetTabIconWidget(
              icon: 'delivery',
              isCurrent: currentIndex! == 3,
              number: ordersListCountModel!.delivering?.length ?? 0,
            ),
          ),
        ),
      ],
    );
  }
}
