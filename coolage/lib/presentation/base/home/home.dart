import 'package:blogs/blogs.dart';
import 'package:college/college.dart';
import 'package:coolage/presentation/base/home/widgets/get_email_widget.dart';
import 'package:coolage/presentation/base/home/widgets/header.dart';
import 'package:coolage/presentation/base/home/widgets/verify_email_widget.dart';
import 'package:coolage/presentation/base/home/widgets/welcome_to_college.dart';
import 'package:core/core.dart';
import 'package:feed/application/feed/feed_bloc.dart';
import 'package:feed/feed.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_services/mini_services.dart';
import 'package:placement/placement.dart';
import 'package:user/application/auth/authentication_bloc.dart';
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
            setState(() {});
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
                    // Expanded(
                    //   flex: 1,
                    //   child: Center(
                    //     child: HomeGradientButton(
                    //       onTap: () {
                    //         Navigator.of(context, rootNavigator: true).push(
                    //             MaterialPageRoute(
                    //                 builder: (context) =>
                    //                     const PlacementsPage()));
                    //       },
                    //       text: "Placements",
                    //       icon: 'placements',
                    //       startingColor: Kolors.skyBlueStartingColor,
                    //       endingColor: Kolors.skyBlueEndingColor,
                    //     ),
                    //   ),
                    // ),
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
                          startingColor: Kolors.skyBlueStartingColor,
                          endingColor: Kolors.skyBlueEndingColor,
                          // startingColor: Kolors.greenStartningColor,
                          // endingColor: Kolors.greenEndingColor,
                        ),
                      ),
                    ),
                  ],
                ),
                FutureBuilder(
                  future: getHomeBelowWidget(),
                  builder:
                      (BuildContext context, AsyncSnapshot<Widget> snapshot) {
                    if (snapshot.hasData) {
                      return snapshot.data!;
                    }
                    return Container();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<Widget> getHomeBelowWidget() async {
    final user = context.read<AuthenticationBloc>().state.coolUser!;
    if (user.userType == Constants.USER_TYPE_GUEST ||
        user.userType == Constants.USER_TYPE_STAFF) {
      return const WelcomeToCollegeWidget();
    }
    if (await checkIfNotVerified()) {
      return const VerifyEmailWidget();
    } else if (await checkIfCollegeVerified()) {
      return const FeedPage();
    } else {
      return GetEmailWidget(
        onChange: () {
          setState(() {});
        },
      );
    }
  }

  Future<bool> checkIfNotVerified() async {
    final user = context.read<AuthenticationBloc>().state.coolUser!;

    if (user.emailId?.isNotEmpty ?? false) {
      final providers =
          await FirebaseAuth.instance.fetchSignInMethodsForEmail(user.emailId!);
      if (providers.contains('password')) {
        final cu = FirebaseAuth.instance.currentUser!;
        await cu.reload();
        final bool isEmailVerified =
            FirebaseAuth.instance.currentUser!.emailVerified;
        if (!isEmailVerified) {
          return true;
        }
      }
    }
    return false;
  }

  Future<bool> checkIfCollegeVerified() async {
    final email = FirebaseAuth.instance.currentUser!.email;
    if (email == null) {
      return false;
    }
    final user = context.read<AuthenticationBloc>().state.coolUser!;
    if (await AuthFunctions.checkIfAuthenticatedWithGoogle()) {
      //with google
      //either match with current user email or email save in user model
      // can be different in case login with google and verify with google
      if (user.college != null &&
          (Functions.checkIfDomainMatchesWithCollege(
                  email, context, user.college!) ||
              (user.emailId != null &&
                  Functions.checkIfDomainMatchesWithCollege(
                      user.emailId!, context, user.college!)))) {
        return true;
      }
    }

    if (user.emailId?.isNotEmpty ?? false) {
      final providers =
          await FirebaseAuth.instance.fetchSignInMethodsForEmail(user.emailId!);
      if (providers.contains('password')) {
        final cu = FirebaseAuth.instance.currentUser!;
        await cu.reload();
        final bool isEmailVerified =
            FirebaseAuth.instance.currentUser!.emailVerified;
        if (isEmailVerified) {
          return true;
        }
      }
    }
    return false;
  }
}
