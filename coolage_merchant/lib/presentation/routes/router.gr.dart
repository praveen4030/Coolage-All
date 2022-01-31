// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:firebase_auth/firebase_auth.dart' as _i13;
import 'package:flutter/material.dart' as _i2;

import '../../domain/base/canteen/item_model.dart' as _i14;
import '../../domain/base/canteen/order_model.dart' as _i15;
import '../auth/login.dart' as _i4;
import '../auth/user_details.dart' as _i10;
import '../auth/verify.dart' as _i5;
import '../base/base.dart' as _i6;
import '../base/menu/pages/add_menu_item.dart' as _i8;
import '../base/order/pages/order_details.dart' as _i9;
import '../core/pages/splash_page.dart' as _i3;
import '../notifications/notifications.dart' as _i7;
import '../profile/canteen_profile.dart' as _i11;
import '../profile/sales/sales_stats_page.dart' as _i12;

class Router extends _i1.RootStackRouter {
  Router([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.SplashPage();
        }),
    LoginPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.LoginPage();
        }),
    VerifyLoginPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<VerifyLoginPageRouteArgs>(
              orElse: () => const VerifyLoginPageRouteArgs());
          return _i5.VerifyLoginPage(
              key: args.key,
              verificationId: args.verificationId,
              resentToken: args.resentToken,
              result: args.result,
              mobileNo: args.mobileNo);
        }),
    BasePageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.BasePage();
        }),
    NotificationsPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.NotificationsPage();
        }),
    AddMenuItemPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<AddMenuItemPageRouteArgs>(
              orElse: () => const AddMenuItemPageRouteArgs());
          return _i8.AddMenuItemPage(
              key: args.key, itemModel: args.itemModel, index: args.index);
        }),
    OrderDetailsPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<OrderDetailsPageRouteArgs>(
              orElse: () => const OrderDetailsPageRouteArgs());
          return _i9.OrderDetailsPage(
              key: args.key, orderModel: args.orderModel);
        }),
    UserDetailsPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i10.UserDetailsPage();
        }),
    ProfilePageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i11.ProfilePage();
        }),
    SalesStatsPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i12.SalesStatsPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashPageRoute.name, path: '/'),
        _i1.RouteConfig(LoginPageRoute.name, path: '/login-page'),
        _i1.RouteConfig(VerifyLoginPageRoute.name, path: '/verify-login-page'),
        _i1.RouteConfig(BasePageRoute.name, path: '/base-page'),
        _i1.RouteConfig(NotificationsPageRoute.name,
            path: '/notifications-page'),
        _i1.RouteConfig(AddMenuItemPageRoute.name, path: '/add-menu-item-page'),
        _i1.RouteConfig(OrderDetailsPageRoute.name,
            path: '/order-details-page'),
        _i1.RouteConfig(UserDetailsPageRoute.name, path: '/user-details-page'),
        _i1.RouteConfig(ProfilePageRoute.name, path: '/profile-page'),
        _i1.RouteConfig(SalesStatsPageRoute.name, path: '/sales-stats-page')
      ];
}

class SplashPageRoute extends _i1.PageRouteInfo {
  const SplashPageRoute() : super(name, path: '/');

  static const String name = 'SplashPageRoute';
}

class LoginPageRoute extends _i1.PageRouteInfo {
  const LoginPageRoute() : super(name, path: '/login-page');

  static const String name = 'LoginPageRoute';
}

class VerifyLoginPageRoute extends _i1.PageRouteInfo<VerifyLoginPageRouteArgs> {
  VerifyLoginPageRoute(
      {_i2.Key? key,
      String? verificationId,
      int? resentToken,
      _i13.ConfirmationResult? result,
      String? mobileNo})
      : super(name,
            path: '/verify-login-page',
            args: VerifyLoginPageRouteArgs(
                key: key,
                verificationId: verificationId,
                resentToken: resentToken,
                result: result,
                mobileNo: mobileNo));

  static const String name = 'VerifyLoginPageRoute';
}

class VerifyLoginPageRouteArgs {
  const VerifyLoginPageRouteArgs(
      {this.key,
      this.verificationId,
      this.resentToken,
      this.result,
      this.mobileNo});

  final _i2.Key? key;

  final String? verificationId;

  final int? resentToken;

  final _i13.ConfirmationResult? result;

  final String? mobileNo;
}

class BasePageRoute extends _i1.PageRouteInfo {
  const BasePageRoute() : super(name, path: '/base-page');

  static const String name = 'BasePageRoute';
}

class NotificationsPageRoute extends _i1.PageRouteInfo {
  const NotificationsPageRoute() : super(name, path: '/notifications-page');

  static const String name = 'NotificationsPageRoute';
}

class AddMenuItemPageRoute extends _i1.PageRouteInfo<AddMenuItemPageRouteArgs> {
  AddMenuItemPageRoute({_i2.Key? key, _i14.ItemModel? itemModel, int? index})
      : super(name,
            path: '/add-menu-item-page',
            args: AddMenuItemPageRouteArgs(
                key: key, itemModel: itemModel, index: index));

  static const String name = 'AddMenuItemPageRoute';
}

class AddMenuItemPageRouteArgs {
  const AddMenuItemPageRouteArgs({this.key, this.itemModel, this.index});

  final _i2.Key? key;

  final _i14.ItemModel? itemModel;

  final int? index;
}

class OrderDetailsPageRoute
    extends _i1.PageRouteInfo<OrderDetailsPageRouteArgs> {
  OrderDetailsPageRoute({_i2.Key? key, _i15.OrderModel? orderModel})
      : super(name,
            path: '/order-details-page',
            args: OrderDetailsPageRouteArgs(key: key, orderModel: orderModel));

  static const String name = 'OrderDetailsPageRoute';
}

class OrderDetailsPageRouteArgs {
  const OrderDetailsPageRouteArgs({this.key, this.orderModel});

  final _i2.Key? key;

  final _i15.OrderModel? orderModel;
}

class UserDetailsPageRoute extends _i1.PageRouteInfo {
  const UserDetailsPageRoute() : super(name, path: '/user-details-page');

  static const String name = 'UserDetailsPageRoute';
}

class ProfilePageRoute extends _i1.PageRouteInfo {
  const ProfilePageRoute() : super(name, path: '/profile-page');

  static const String name = 'ProfilePageRoute';
}

class SalesStatsPageRoute extends _i1.PageRouteInfo {
  const SalesStatsPageRoute() : super(name, path: '/sales-stats-page');

  static const String name = 'SalesStatsPageRoute';
}
