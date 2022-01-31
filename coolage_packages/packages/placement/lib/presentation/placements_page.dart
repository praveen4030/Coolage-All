part of placement;

class PlacementsPage extends StatefulWidget {
  const PlacementsPage({Key? key}) : super(key: key);

  @override
  State<PlacementsPage> createState() => _PlacementsPageState();
}

class _PlacementsPageState extends State<PlacementsPage>
    with SingleTickerProviderStateMixin {
  PersistentTabController? _controller;

  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PersistentTabView(
          context,
          controller: _controller,
          screens: [
            CompaniesPage(),
            const ResultsPage(),
            const PlacementProfilePage(),
          ],
          items: _navBarsItems(),
          resizeToAvoidBottomInset: true,
          navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0
              ? 0.0
              : kBottomNavigationBarHeight,
          margin: const EdgeInsets.all(0.0),
          bottomScreenMargin: 0.0,
          selectedTabScreenContext: (context) {},
          hideNavigationBar: false,
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
        ),
      ),
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/icons/placement/placement.png',
          height: 25,
          width: 25,
          color: Kolors.primaryColor1,
        ),
        inactiveIcon: Image.asset(
          'assets/icons/placement/placement_stroke.png',
          height: 25,
          width: 25,
        ),
        activeColorPrimary: Kolors.primaryColor1,
        activeColorSecondary: Kolors.primaryColor1,
        onPressed: (context) {
          _controller!.jumpToTab(0);
        },
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/icons/placement/results.png',
          height: 25,
          width: 25,
          color: Kolors.primaryColor1,
        ),
        inactiveIcon: Image.asset(
          'assets/icons/placement/results_stroke.png',
          height: 25,
          width: 25,
        ),
        activeColorPrimary: Kolors.primaryColor1,
        onPressed: (context) {
          _controller!.jumpToTab(1);
        },
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/icons/placement/profile.png',
          height: 25,
          width: 25,
          color: Kolors.primaryColor1,
        ),
        inactiveIcon: Image.asset(
          'assets/icons/placement/profile_stroke.png',
          height: 25,
          width: 25,
        ),
        activeColorPrimary: Kolors.primaryColor1,
        onPressed: (context) {
          _controller!.jumpToTab(2);
        },
      ),
    ];
  }
}
