import 'package:college/application/college/college_bloc.dart';
import 'package:coolage_admin/presentation/base/home/home.dart';
import 'package:coolage_admin/presentation/base/publish/publish_approval.dart';
import 'package:coolage_admin/presentation/core/functions/app_start_function.dart';
import 'package:core/core.dart';
import 'package:feed/feed.dart';
import 'package:feed/ui/add_feed/pages/add_feed_item.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:user/application/auth/authentication_bloc.dart';

class BasePage extends StatefulWidget {
  const BasePage({
    Key? key,
  }) : super(key: key);

  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  PersistentTabController? _controller;
  final bool _hideNavBar = false;
  int? pageIndex = 0;

  @override
  void initState() {
    super.initState();
    AppStartFunction.startingBlocEvents(context);
    _controller = PersistentTabController(initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
      return BlocBuilder<CollegeBloc, CollegeState>(
        builder: (context, state) {
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
                  : implementPageView(),
              floatingActionButton:
                  _controller!.index == 0 && FeedCoreFunctionality.isAdmin
                      ? Container(
                          margin: const EdgeInsets.only(bottom: 50),
                          child: FloatingActionButton(
                            onPressed: () {
                              Navigator.of(context, rootNavigator: true)
                                  .push(MaterialPageRoute(
                                builder: (context) => const AddFeedItemPage(
                                  isOpenedFromApproved: true,
                                ),
                              ));
                            },
                            backgroundColor: Kolors.secondaryColor1,
                            child: const Icon(Icons.add),
                          ),
                        )
                      : null,
            ),
          );
        },
      );
    });
  }

  Widget implementPageView() {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: const [
        HomePage(),
        PublishApprovalPage(),
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
          colorBehindNavBar: Colors.indigo,
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
          'assets/icons/home.png',
          height: 25,
          width: 25,
          color: Kolors.greyBlue,
        ),
        activeColorPrimary: Kolors.primaryColor1,
        onPressed: (context) {
          _controller!.jumpToTab(0);
          setState(() {});
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
          'assets/icons/canteen.png',
          height: 25,
          width: 25,
          color: Kolors.greyBlue,
        ),
        activeColorPrimary: Kolors.primaryColor1,
        onPressed: (context) {
          _controller!.jumpToTab(1);
          setState(() {});
        },
      ),
    ];
  }
}
