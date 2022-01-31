library canteen;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:canteen/application/canteen_cards/canteen_cards_bloc.dart';
import 'package:canteen/application/canteen_details/canteen_details_bloc.dart';
import 'package:canteen/application/user_orders/user_orders_bloc.dart';
import 'package:canteen/domain/models/canteen_geopoint.dart';
import 'package:canteen/domain/models/category_price_model.dart';
import 'package:canteen/domain/models/menu_category_model.dart';
import 'package:canteen/domain/order/canteen_basic_details_model.dart';
import 'package:canteen/domain/models/cart_model.dart';
import 'package:canteen/domain/models/deliverable_zones_model.dart';
import 'package:canteen/domain/models/item_model.dart';
import 'package:canteen/injection.dart';
import 'package:cards/cards.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/application/coolage_details/coolage_details_bloc.dart';
import 'package:core/core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:user/application/auth/authentication_bloc.dart';
import 'package:user/ui/dialogs/phone_authentication_dialog.dart';
import 'package:user/user.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:flutter/foundation.dart';
import 'package:geocoder/geocoder.dart' as geo;

part 'domain/helpers/cart_item_functions.dart';
part 'domain/order/order_tnc_model.dart';
part 'domain/models/canteen_items_helper.dart';
part 'domain/models/canteen_model.dart';
part 'domain/models/ongoing_orders_count_model.dart';
part 'domain/models/order_model.dart';
part 'domain/models/previous_order_model.dart';

part 'ui/dialogs/add_address_dialog.dart';
part 'ui/dialogs/categories_dialog.dart';
part 'ui/dialogs/delivery_address_widget.dart';
part 'ui/dialogs/delivery_zones.dart';
part 'ui/dialogs/menu_search_dialog.dart';
part 'ui/dialogs/pick_delivery_option_dialog.dart';
part 'ui/dialogs/previous_order_dailog.dart';
part 'ui/dialogs/select_address_dialog.dart';
part 'ui/dialogs/previous_order_dialog_bottom.dart';

part 'ui/pages/canteen_cart.dart';
part 'ui/pages/canteen_details.dart';
part 'ui/pages/canteens_page.dart';
part 'ui/pages/empty_cart.dart';
part 'ui/pages/order_tracking.dart';
part 'ui/pages/place_order_page.dart';
part 'ui/pages/previous_orders_page.dart';

part 'ui/place_order/order_tnc.dart';
part 'ui/place_order/order_tnc_point_tile.dart';
part 'ui/place_order/pick_up_time.dart';
part 'ui/place_order/place_order_bottom.dart';

part 'ui/widgets/add_button.dart';
part 'ui/widgets/add_menu_item_category_widget.dart';
part 'ui/widgets/billing_tile.dart';
part 'ui/widgets/bottom_button.dart';
part 'ui/widgets/browse_menu_widget.dart';
part 'ui/widgets/canteen_bill.dart';
part 'ui/widgets/canteen_cart_item_tile.dart';
part 'ui/widgets/canteen_info_tile.dart';
part 'ui/widgets/canteen_tile.dart';
part 'ui/widgets/canteens_card.dart';
part 'ui/widgets/cart_button.dart';
part 'ui/widgets/discount_deliverycharges_tile.dart';
part 'ui/widgets/empty_orders.dart';
part 'ui/widgets/menu_cart_add_button.dart';
part 'ui/widgets/menu_category_items.dart';
part 'ui/widgets/menu_item_tile.dart';
part 'ui/widgets/menu_list.dart';
part 'ui/widgets/order_comments_widget.dart';
part 'ui/widgets/order_timeline.dart';
part 'ui/widgets/previous_order_tile.dart';
part 'ui/widgets/previous_orders.dart';
part 'ui/widgets/switch_veg_nonveg.dart';
part 'ui/widgets/veg_nonveg_widget.dart';
part 'ui/widgets/cart_item.dart';

class CanteenCoreFunctionality {
  static Future<void> initialize() async {
    configureInjection(Environment.prod);

    Hive.registerAdapter(CartModelAdapter());
    Hive.registerAdapter(ItemModelAdapter());
    Hive.registerAdapter(CanteenBasicDetailsModelAdapter());
    Hive.registerAdapter(CanteenGeopointModelAdapter());
    Hive.registerAdapter(DeliverableZonesModelAdapter());
    Hive.registerAdapter(CategoryPriceModelAdapter());

    await Hive.openBox<ItemModel>(HiveConstants.itemModelName);
    await Hive.openBox<CartModel>(HiveConstants.cartBoxName);
    await Hive.openBox<CanteenBasicDetailsModel>(
        HiveConstants.canteenBasicDetailsModelName);
    await Hive.openBox<CanteenGeopointModel>(
        HiveConstants.canteenGeopointModelName);
    await Hive.openBox<CategoryPriceModel>(
        HiveConstants.categoryPriceModelName);
    await Hive.openBox<DeliverableZonesModel>(
        HiveConstants.deliverableZonesModelName);
  }

  static void initializeBloc(BuildContext context) {
    context.read<CanteenDetailsBloc>().add(
        CanteenDetailsEvent.getCollegeCanteens(
            userCollege: Getters.getCurrentUserCollege(context)));
    context
        .read<UserOrdersBloc>()
        .add(const UserOrdersEvent.getUserOrdersDetails());
    context.read<CanteenDetailsBloc>().add(
        CanteenDetailsEvent.getCanteensNearby(
            userCollege: Getters.getCurrentUserCollege(context)));
    context
        .read<CanteenCardsBloc>()
        .add(const CanteenCardsEvent.canteenCards());
  }
}
