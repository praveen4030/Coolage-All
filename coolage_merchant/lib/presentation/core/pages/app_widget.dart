import 'package:auto_route/auto_route.dart';
import 'package:coolage_merchant/application/auth/authentication_bloc.dart';
import 'package:coolage_merchant/application/canteen/canteen_basic_functions/canteen_basic_functions_bloc.dart';
import 'package:coolage_merchant/application/canteen/menu/canteen_menu_bloc.dart';
import 'package:coolage_merchant/application/canteen/orders_canceled/orders_canceled_bloc.dart';
import 'package:coolage_merchant/application/canteen/orders_delivered/orders_delivering_bloc.dart';
import 'package:coolage_merchant/application/canteen/orders_finished/orders_finished_bloc.dart';
import 'package:coolage_merchant/application/canteen/orders_pending/orders_pending_bloc.dart';
import 'package:coolage_merchant/application/canteen/orders_prepared/orders_prepared_bloc.dart';
import 'package:coolage_merchant/application/canteen/orders_preparing/orders_preparing_bloc.dart';
import 'package:coolage_merchant/application/canteen/sales_statistics/sales_statistics_bloc.dart';
import 'package:coolage_merchant/application/home/drawer/drawer_bloc.dart';
import 'package:coolage_merchant/infrastructure/core/services/push_notificatio_service.dart';
import 'package:coolage_merchant/presentation/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:coolage_merchant/presentation/routes/router.gr.dart' as route;
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injection.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final _rootRouter = route.Router();

  @override
  void initState() {
    super.initState();
    PushNotificationService.initialise(context);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthenticationBloc>()
            ..add(const AuthenticationEvent.authCheckRequested()),
        ),
        BlocProvider(
          create: (context) => getIt<DrawerBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<CanteenMenuBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<OrdersPendingBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<OrdersPreparingBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<OrdersPreparedBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<OrdersDeliveringBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<OrdersFinishedBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<OrdersCanceledBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<CanteenBasicFunctionsBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<SalesStatisticsBloc>(),
        ),
      ],
      child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          return MaterialApp.router(
            title: 'Coolage Merchant',
            debugShowCheckedModeBanner: false,
            routerDelegate: AutoRouterDelegate(
              _rootRouter,
              navigatorObservers: () => [AutoRouteObserver()],
            ),
            routeInformationParser: _rootRouter.defaultRouteParser(),
            theme: appThemeData[AppTheme.light],
          );
        },
      ),
    );
  }
}
