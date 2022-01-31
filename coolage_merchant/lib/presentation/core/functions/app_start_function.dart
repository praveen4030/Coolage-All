import 'package:coolage_merchant/application/canteen/menu/canteen_menu_bloc.dart';
import 'package:coolage_merchant/application/canteen/orders_finished/orders_finished_bloc.dart';
import 'package:coolage_merchant/application/canteen/orders_pending/orders_pending_bloc.dart';
import 'package:coolage_merchant/domain/core/helpers/getter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

mixin AppStartFunction {
  static void startingBlocEvents(BuildContext context) {
    context
        .read<CanteenMenuBloc>()
        .add(CanteenMenuEvent.getMenu(Getters.getCurrentCanteenId(context)));
    // context.read<OrdersPendingBloc>().add(OrdersPendingEvent.getPendingOrders(
    //     Getters.getCurrentCanteenId(context)));
    context.read<OrdersFinishedBloc>().add(
        OrdersFinishedEvent.getCompletedOrders(
            Getters.getCurrentCanteenId(context)));
    // context
    //     .read<CanteenDetailsBloc>()
    //     .add(const CanteenDetailsEvent.getPreviousOrder());
    // context.read<FeedBloc>().add(
    //     FeedEvent.initial(userCollege: Getters.getCurrentUserCollege(context)));
    // context.read<StoreDetailsBloc>().add(StoreDetailsEvent.getCollegeStores(
    //     Getters.getCurrentUserCollege(context)));
    // context.read<InboxBloc>().add(
    //       const InboxEvent.fetchChats(),
    //     );
  }
}
