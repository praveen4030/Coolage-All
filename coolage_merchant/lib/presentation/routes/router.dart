import 'package:auto_route/auto_route.dart';
import 'package:coolage_merchant/presentation/auth/login.dart';
import 'package:coolage_merchant/presentation/auth/user_details.dart';
import 'package:coolage_merchant/presentation/auth/verify.dart';
import 'package:coolage_merchant/presentation/base/base.dart';
import 'package:coolage_merchant/presentation/base/menu/pages/add_menu_item.dart';
import 'package:coolage_merchant/presentation/base/order/pages/order_details.dart';
import 'package:coolage_merchant/presentation/core/pages/splash_page.dart';
import 'package:coolage_merchant/presentation/notifications/notifications.dart';
import 'package:coolage_merchant/presentation/profile/canteen_profile.dart';
import 'package:coolage_merchant/presentation/profile/sales/sales_stats_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(page: SplashPage, initial: true),
  MaterialRoute(page: LoginPage),
  MaterialRoute(page: VerifyLoginPage),
  MaterialRoute(page: BasePage),
  MaterialRoute(page: NotificationsPage),
  MaterialRoute(page: AddMenuItemPage),
  MaterialRoute(page: OrderDetailsPage),
  MaterialRoute(page: UserDetailsPage),
  MaterialRoute(page: ProfilePage),
  MaterialRoute(page: SalesStatsPage),
])
class $Router {}
