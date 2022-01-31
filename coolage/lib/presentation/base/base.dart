import 'package:canteen/canteen.dart';
import 'package:college/application/college/college_bloc.dart';
import 'package:coolage/presentation/base/canteen_holder_page.dart';
import 'package:coolage/presentation/base/home/home.dart';
import 'package:coolage/presentation/core/dialogs/show_update_dialog.dart';
import 'package:coolage/presentation/core/functions/app_start_function.dart';
import 'package:core/core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:shared_preferences/shared_preferences.dart' as sp;
import 'package:user/application/auth/authentication_bloc.dart';

class BasePage extends StatefulWidget {
  final int? index;
  const BasePage({
    Key? key,
    this.index = 0,
  }) : super(key: key);

  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  PersistentTabController? _controller;
  bool _hideNavBar = false;
  int? pageIndex;

  @override
  void initState() {
    super.initState();
    pageIndex = widget.index;
    _controller = PersistentTabController(initialIndex: widget.index ?? 0);
    CheckForUpdate.showAppUpdate(context);
    AppStartFunction.startingBlocEvents(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        return BlocBuilder<CollegeBloc, CollegeState>(
          builder: (context, state) {
            final featuresList = state.collegeModel!.featuresList!;
            return SafeArea(
              child: Scaffold(
                backgroundColor: Kolors.greyWhite,
                appBar: AppBar(
                  toolbarHeight: 0,
                ),
                body: state.isCollegeLoading!
                    ? const Center(
                        child: LogoLoading(),
                      )
                    : implementBody(featuresList),
              ),
            );
          },
        );
      },
    );
  }

  Widget implementBody(List<String> featuresList) {
    if (featuresList.isEmpty) {
      return Container();
    } else {
      if (featuresList.length == 1) {
        final feature = featuresList[0];
        if (feature == 'canteen') {
          return const CanteenHolderPage();
        } else if (feature == 'home') {
          return const HomePage();
        }
      } else {
        return implementPageView();
      }
    }
    return Container();
  }

  Widget implementPageView() {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: const [
        HomePage(),
        CanteenHolderPage(),
      ],
      items: _navBarsItems(),
      resizeToAvoidBottomInset: true,
      navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0
          ? 0.0
          : kBottomNavigationBarHeight,
      margin: const EdgeInsets.all(0.0),
      bottomScreenMargin: 0.0,
      selectedTabScreenContext: (context) {
        // testContext = context;
      },
      hideNavigationBar: _hideNavBar,
      decoration: NavBarDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 8,
              color: Kolors.greyBlue.withOpacity(0.5),
            ),
          ],
          colorBehindNavBar: Colors.white,
          borderRadius: BorderRadius.circular(20.0)),
      popAllScreensOnTapOfSelectedTab: true,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 400),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
      ),
      navBarStyle: NavBarStyle.style14,
    );
    // return PageView(
    //   controller: _pagecontroller,
    //   onPageChanged: onPageChanged,
    //   physics: const NeverScrollableScrollPhysics(),
    //   children: const [
    //     HomePage(),
    //     CanteenPage(),
    //   ],
    // );
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/icons/home.png',
          height: 25,
          width: 25,
          color: Kolors.primaryColor1,
        ),
        inactiveIcon: Image.asset(
          'assets/icons/home_stroke.png',
          height: 25,
          width: 25,
          color: Kolors.greyBlue,
        ),
        activeColorPrimary: Kolors.primaryColor1,
        activeColorSecondary: Kolors.primaryColor1,
        onPressed: (context) {
          _controller!.jumpToTab(0);
          setBottomIndexToSharedPref(0);
        },
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/icons/canteen.png',
          height: 25,
          width: 25,
          color: Kolors.primaryColor1,
        ),
        inactiveIcon: Image.asset(
          'assets/icons/canteen_stroke.png',
          height: 25,
          width: 25,
          color: Kolors.greyBlue,
        ),
        activeColorPrimary: Kolors.primaryColor1,
        onPressed: (context) {
          _controller!.jumpToTab(1);
          setBottomIndexToSharedPref(1);
        },
      ),
    ];
  }

  Future<void> setBottomIndexToSharedPref(int index) async {
    sp.SharedPreferences prefs = await sp.SharedPreferences.getInstance();
    await prefs.setInt('currentBaseIndex', index);
  }

  Future<int> getBottomIndexToSharedPref() async {
    sp.SharedPreferences prefs = await sp.SharedPreferences.getInstance();
    return prefs.getInt('currentBaseIndex') ?? 0;
  }
}

        // BottomNavigationBarItem(
        //   activeIcon: Image.asset(
        //     'assets/icons/store.png',
        //     height: 25,
        //     width: 25,
        //     color: Kolors.primaryColor1,
        //   ),
        //   icon: Image.asset(
        //     'assets/icons/store.png',
        //     height: 25,
        //     width: 25,
        //     color: Kolors.greyBlue,
        //   ),
        //   label: '',
        // ),
        // BottomNavigationBarItem(
        //   activeIcon: Image.asset(
        //     'assets/icons/messages.png',
        //     height: 25,
        //     width: 25,
        //     color: Kolors.primaryColor1,
        //   ),
        //   icon: Image.asset(
        //     'assets/icons/messages.png',
        //     height: 25,
        //     width: 25,
        //     color: Kolors.greyBlue,
        //   ),
        //   label: '',
        // ),