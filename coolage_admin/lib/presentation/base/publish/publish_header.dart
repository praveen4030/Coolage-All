import 'package:coolage_admin/presentation/base/publish/publish_header_flexible.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

class PublishApprovalHeader extends StatefulWidget {
  final TabController? controller;
  final int? currentIndex;
  const PublishApprovalHeader({
    Key? key,
    @required this.controller,
    @required this.currentIndex,
  }) : super(key: key);

  @override
  State<PublishApprovalHeader> createState() => _PublishApprovalHeaderState();
}

class _PublishApprovalHeaderState extends State<PublishApprovalHeader> {
  bool isListFunctionCalled = false;
  bool isCountFunctionCalled = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 170,
      toolbarHeight: 0,
      pinned: true,
      floating: true,
      backgroundColor: Kolors.greyWhite,
      flexibleSpace: const FlexibleSpaceBar(
        collapseMode: CollapseMode.none,
        background: PublishHeaderFlexibleWidget(),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: SizedBox(
          height: 100,
          child: tabsWidget(context),
        ),
      ),
    );
  }

  Widget tabsWidget(BuildContext context) {
    return TabBar(
      controller: widget.controller,
      indicator: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Kolors.primaryColor1,
          ),
        ),
      ),
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorColor: Kolors.primaryColor1,
      labelColor: Kolors.fontColor,
      labelStyle: const TextStyle(
        fontSize: 12,
        fontFamily: Fonts.CONTENT_FONT,
        color: Kolors.fontColor,
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 12,
        fontFamily: Fonts.CONTENT_FONT,
        color: Kolors.fontColor,
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelColor: Colors.grey[400],
      tabs: [
        SizedBox(
          height: 95,
          child: Tab(
              text: "FEED",
              icon: GetTabIconWidget(
                icon: 'home',
                isCurrent: widget.currentIndex! == 0,
                number: 0,
              )),
        ),
        SizedBox(
          height: 95,
          child: Tab(
              text: "BLOG POSTS",
              icon: GetTabIconWidget(
                icon: 'blog_icon',
                isCurrent: widget.currentIndex! == 1,
                number: 0,
              )),
        ),
      ],
    );
  }
}
