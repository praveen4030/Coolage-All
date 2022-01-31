part of college;

class MyCollegePage extends StatefulWidget {
  const MyCollegePage({Key? key}) : super(key: key);

  @override
  State<MyCollegePage> createState() => _MyCollegePageState();
}

class _MyCollegePageState extends State<MyCollegePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3)
      ..addListener(() {
        setState(() {
          currentIndex = _tabController!.index;
        });
        // callFunction();
      });
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: CoolageAppBar(
            isCenter: true,
            backgroundColor: Kolors.greyWhite,
            actions: [],
            text: 'MY COLLEGE',
          ),
        ),
        body: Container(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 60),
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    AboutPage(),
                    DepartmentsPage(),
                    CollegeGroupsPage(),
                  ],
                ),
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 4),
                      blurRadius: 4,
                      color: Kolors.greyBlue.withOpacity(0.2),
                    ),
                  ],
                ),
                child: tabsWidget(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget tabsWidget(BuildContext context) {
    return TabBar(
      controller: _tabController,
      indicator: const TabIndicator(
        indicatorSize: TabIndicatorSize.tiny,
        indicatorHeight: 6,
        indicatorColor: Kolors.primaryColor1,
      ),
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorColor: Kolors.primaryColor1,
      labelColor: Kolors.greyBlack,
      labelStyle: const TextStyle(
        fontSize: 16,
        fontFamily: Fonts.HEADING_FONT,
        color: Kolors.greyBlack,
        fontWeight: FontWeight.w400,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 16,
        fontFamily: Fonts.HEADING_FONT,
        color: Kolors.greyBlue,
        fontWeight: FontWeight.w400,
      ),
      unselectedLabelColor: Kolors.greyBlue,
      tabs: const [
        Tab(
          text: "About",
        ),
        Tab(
          text: "Departments",
        ),
        Tab(
          text: "Groups",
        ),
      ],
    );
  }
}
