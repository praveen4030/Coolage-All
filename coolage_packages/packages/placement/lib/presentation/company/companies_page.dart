import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:placement/presentation/company/pages/all_companies_page.dart';
import 'package:placement/presentation/company/pages/open_for_you_companies_page.dart';
import 'package:placement/presentation/company/widgets/companies_filter_dialog.dart';

class CompaniesPage extends StatefulWidget {
  CompaniesPage({Key? key}) : super(key: key);

  @override
  State<CompaniesPage> createState() => _CompaniesPageState();
}

class _CompaniesPageState extends State<CompaniesPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(vsync: this, length: 2)
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
            text: 'APPLY',
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                height: 22,
                decoration: const BoxDecoration(
                  color: Kolors.greyWhite,
                ),
                child: tabsWidget(context),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    AllCompaniesPage(),
                    OpenForYouCompaniesPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: GestureDetector(
          onTap: () async {
            ShowDialogCross.showDialogCross(context, -0.15);
            showModalBottomSheet(
                barrierColor: Colors.transparent,
                context: context,
                builder: (context) {
                  return const CompaniesFilterDialog();
                }).whenComplete(() {
              Navigator.of(context).pop();
            });
          },
          child: Container(
              margin: const EdgeInsets.only(bottom: 60),
              decoration: const BoxDecoration(
                color: Kolors.primaryColor1,
                shape: BoxShape.circle,
              ),
              height: 60,
              width: 60,
              child: const Icon(
                Icons.filter_alt,
                color: Colors.white,
              )),
        ),
      ),
    );
  }

  Widget tabsWidget(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TabBar(
            controller: _tabController,
            indicator: const TabIndicator(
              indicatorSize: TabIndicatorSize.full,
              indicatorHeight: 3,
              indicatorColor: Kolors.primaryColor1,
            ),
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Kolors.primaryColor1,
            labelColor: Kolors.greyBlack,
            labelStyle: const TextStyle(
              fontSize: 14,
              fontFamily: Fonts.HEADING_FONT,
              color: Kolors.greyBlack,
              fontWeight: FontWeight.w500,
            ),
            unselectedLabelStyle: const TextStyle(
              fontSize: 14,
              fontFamily: Fonts.HEADING_FONT,
              color: Kolors.greyBlue,
              fontWeight: FontWeight.w500,
            ),
            unselectedLabelColor: Kolors.greyBlue,
            tabs: const [
              Tab(
                text: "ALL COMPANIES",
              ),
              Tab(
                text: "OPEN FOR YOU",
              ),
            ],
          ),
        ),
        Container(
          height: 1,
          color: Kolors.greyLightBlue,
        )
      ],
    );
  }
}
