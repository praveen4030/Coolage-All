import 'package:blogs/blogs.dart';
import 'package:college/college.dart';
import 'package:coolage_admin/presentation/base/home/header.dart';
import 'package:core/core.dart';
import 'package:feed/application/feed/feed_bloc.dart';
import 'package:feed/feed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_services/mini_services.dart';
import 'package:user/user.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(() {
      final maxScroll = _scrollController.position.maxScrollExtent;
      final currentScroll = _scrollController.position.pixels;
      final delta = MediaQuery.of(context).size.height * 0.20;
      if (maxScroll - currentScroll <= delta) {
        context.read<FeedBloc>().add(FeedEvent.getMoreApprovedPosts(
            userCollege: Getters.getCurrentUserCollege(context)));
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeedBloc, FeedState>(
      builder: (context, state) {
        return RefreshIndicator(
          onRefresh: () async {
            context.read<FeedBloc>().add(FeedEvent.getApprovedPosts(
                userCollege: Getters.getCurrentUserCollege(context)));
          },
          child: SingleChildScrollView(
            controller: _scrollController,
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            child: Column(
              children: [
                const HomeHeader(),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: HomeGradientButton(
                          onTap: () {
                            Navigator.of(context, rootNavigator: true)
                                .push(MaterialPageRoute(builder: (context) {
                              return const BlogsPage();
                            }));
                            // AutoRouter.of(context).push(const BlogsPageRoute());
                          },
                          text: "Blogs",
                          icon: 'blogs',
                          startingColor: Kolors.orangeGradientColor,
                          endingColor: Kolors.pinkGradientColor,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: HomeGradientButton(
                          onTap: () {
                            Navigator.of(context, rootNavigator: true).push(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const MyCollegePage()));
                            // AutoRouter.of(context).push(const AboutPageRoute());
                          },
                          text: "About",
                          icon: 'about',
                          startingColor: Kolors.blueStartingColor,
                          endingColor: Kolors.blueEndingColor,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: HomeGradientButton(
                            onTap: () {
                              Navigator.of(context, rootNavigator: true).push(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const MiniServicesPage()));
                            },
                            text: "Services",
                            icon: 'services',
                            startingColor: Kolors.greenStartningColor,
                            endingColor: Kolors.greenEndingColor),
                      ),
                    ),
                  ],
                ),
                const FeedPage(),
              ],
            ),
          ),
        );
      },
    );
  }
}
