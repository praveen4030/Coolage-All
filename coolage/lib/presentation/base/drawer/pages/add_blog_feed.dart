import 'package:blogs/blogs.dart';
import 'package:blogs/ui/add_blog/pages/add_blog_page.dart';
import 'package:core/core.dart';
import 'package:feed/feed.dart';
import 'package:feed/ui/add_feed/pages/add_feed_item.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AddBlogFeedPage extends StatefulWidget {
  const AddBlogFeedPage({Key? key}) : super(key: key);

  @override
  _AddBlogFeedPageState createState() => _AddBlogFeedPageState();
}

class _AddBlogFeedPageState extends State<AddBlogFeedPage>
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
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            headerAppBar(),
          ];
        },
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Column(
            children: [
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    UserBlogsPage(),
                    UserPostsFeedPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget headerAppBar() {
    return SliverAppBar(
      expandedHeight: 540,
      toolbarHeight: 0,
      pinned: true,
      floating: true,
      backgroundColor: Kolors.white,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.none,
        background: header(),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: SizedBox(
          height: 50,
          child: tabsWidget(context),
        ),
      ),
    );
  }

  Widget header() {
    return Container(
      child: Column(
        children: [
          Container(
            color: Colors.white,
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          child: Image.asset(
                            'assets/images/onboardingcircle.png',
                            height: 170,
                            color: Kolors.greyWhite,
                          ),
                        ),
                        Image.asset(
                          'assets/icons/add_content.png',
                          height: 72,
                          width: 72,
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: const Icon(
                          Icons.arrow_back,
                          color: Kolors.primaryColor1,
                          size: 32,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 12),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          CustomText(
                            text: "What would you like to publish ?",
                            color: Kolors.greyBlue,
                            fontSize: 14,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 1,
                              height: 1,
                              color: Kolors.greyBlue,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 32),
                      contentCard(
                        icon: 'blog_post.png',
                        text: "Blog Post",
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const AddBlogPage(
                                    isOpenedFromApproved: false,
                                  )));
                        },
                      ),
                      const SizedBox(height: 20),
                      contentCard(
                        icon: 'feed_event.png',
                        text: "Feed Event",
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const AddFeedItemPage(
                                    isOpenedFromApproved: false,
                                  )));
                        },
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            color: Kolors.greyWhite,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.centerLeft,
            child: const CustomText(
              text: "Your Posts",
              fontSize: 14,
              color: Kolors.greyBlue,
            ),
          )
        ],
      ),
    );
  }

  Widget contentCard({
    required String text,
    required String icon,
    required Function onTap,
  }) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: Kolors.greyBlue.withOpacity(0.5),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              height: 32,
              width: 32,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Kolors.greyBlue,
              ),
              child: Center(
                child: IconImagesWid(
                  iconName: icon,
                  height: 24,
                  width: 24,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 26),
            CustomText(
              text: text,
              fontSize: 14,
              fontFamily: Fonts.CONTENT_FONT,
              fontWeight: FontWeight.w600,
            ),
          ],
        ),
      ),
    );
  }

  Widget tabsWidget(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: TabBar(
        controller: _tabController,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorColor: Kolors.secondaryColor1,
        labelColor: Kolors.fontColor,
        labelStyle: const TextStyle(
          fontSize: 18,
          fontFamily: Fonts.HEADING_FONT,
          color: Kolors.fontColor,
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 18,
          fontFamily: Fonts.HEADING_FONT,
          color: Kolors.greyBlue,
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: Kolors.greyBlue,
        isScrollable: true,
        tabs: const [
          Tab(
            text: "Blog Post",
          ),
          Tab(
            text: "Feed Event",
          ),
        ],
      ),
    );
  }
}
