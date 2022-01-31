import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:coolage_merchant/application/auth/authentication_bloc.dart';
import 'package:coolage_merchant/application/home/drawer/drawer_bloc.dart';
import 'package:coolage_merchant/domain/core/helpers/getter.dart';
import 'package:coolage_merchant/infrastructure/base/canteen/canteen_order_voice_trigger.dart';
import 'package:coolage_merchant/infrastructure/base/canteen/trigger_voice_for_web.dart';
import 'package:coolage_merchant/presentation/base/drawer/custom_drawer.dart';
import 'package:coolage_merchant/presentation/base/home/home.dart';
import 'package:coolage_merchant/presentation/base/menu/menu.dart';
import 'package:coolage_merchant/presentation/base/messages/messages.dart';
import 'package:coolage_merchant/presentation/base/order/order.dart';
import 'package:coolage_merchant/presentation/core/functions/app_start_function.dart';
import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/theme/fonts.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_layout.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class BasePage extends StatefulWidget {
  const BasePage({Key? key}) : super(key: key);

  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  final PageController _pagecontroller = PageController();

  int pageIndex = 0;
  var internetSubscription;
  bool isActiveConnection = true;
  @override
  void initState() {
    super.initState();
    AppStartFunction.startingBlocEvents(context);
    if (kIsWeb) {
      TriggerVoiceForWeb.triggerVoiceForService();
    }
    internetSubscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      // Got a new connectivity status!
      if (result == ConnectivityResult.mobile ||
          result == ConnectivityResult.wifi) {
        // I am connected to a mobile network.
        setState(() {
          isActiveConnection = true;
        });
      } else {
        setState(() {
          isActiveConnection = false;
        });
      }
    });
  }

  @override
  void dispose() {
    // CanteenOrderVoiceTrigger.timer?.cancel();
    internetSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        bool isCanteenNotAvailable =
            state.canteenBasicDetailsModel?.canteenId?.isEmpty ?? true;
        return CustomLayout(
          child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 0,
            ),
            body: isCanteenNotAvailable
                ? Center(child: CircularProgressIndicator())
                : Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (context.read<DrawerBloc>().state.isDrawerOpen!) {
                            context
                                .read<DrawerBloc>()
                                .add(const DrawerEvent.openCloseDrawer());
                          }
                        },
                        child: PageView(
                          controller: _pagecontroller,
                          onPageChanged: onPageChanged,
                          physics: const NeverScrollableScrollPhysics(),
                          children: const [
                            HomePage(),
                            OrdersPage(),
                            MenuPage(),
                            // MessagesPage(),
                          ],
                        ),
                      ),
                    ],
                  ),
            bottomSheet: isActiveConnection
                ? Container(
                    height: 0,
                  )
                : Container(
                    height: 50,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    width: MediaQuery.of(context).size.width,
                    child: const Center(
                      child: CustomText(
                        text: 'No Active Internet connection!!',
                        fontSize: 16,
                        fontFamily: Fonts.CONTENT_FONT,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: pageIndex,
              onTap: onTap,
              items: [
                BottomNavigationBarItem(
                  activeIcon: Image.asset(
                    'assets/icons/home.png',
                    height: 25,
                    width: 25,
                    color: Kolors.primaryColor1,
                  ),
                  tooltip: "Home",
                  icon: Image.asset(
                    'assets/icons/home.png',
                    height: 25,
                    width: 25,
                    color: Kolors.greyBlue,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Image.asset(
                      'assets/icons/orders.png',
                      height: 25,
                      width: 25,
                      color: Kolors.primaryColor1,
                    ),
                  ),
                  tooltip: "Orders",
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Image.asset(
                      'assets/icons/orders.png',
                      height: 25,
                      width: 25,
                      color: Kolors.greyBlue,
                    ),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  activeIcon: Image.asset(
                    'assets/icons/menu.png',
                    height: 25,
                    width: 25,
                    color: Kolors.primaryColor1,
                  ),
                  tooltip: "Menu",
                  icon: Image.asset(
                    'assets/icons/menu.png',
                    height: 25,
                    width: 25,
                    color: Kolors.greyBlue,
                  ),
                  label: '',
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void onTap(int pageIndex) {
    _pagecontroller.animateToPage(pageIndex,
        duration: const Duration(microseconds: 200), curve: Curves.linear);
  }

  void onPageChanged(int pageIndex) {
    setState(() {
      this.pageIndex = pageIndex;
    });
  }
}
