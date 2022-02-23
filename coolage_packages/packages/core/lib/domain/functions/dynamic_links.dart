part of core;

mixin DynamicLinkFunctions {
  static Future handleDynamicLinks() async {
    if (kIsWeb) return;
    final PendingDynamicLinkData? data =
        await FirebaseDynamicLinks.instance.getInitialLink();
    _handleDeepLink(
      data,
    );

    FirebaseDynamicLinks.instance.onLink.listen((dynamicLink) {
      _handleDeepLink(
        dynamicLink,
      );
    }).onError((error) {
      debugPrint(error.message.toString());
    });
  }

  static Future<void> _handleDeepLink(
    PendingDynamicLinkData? data,
  ) async {
    if (data != null) {
      final Uri deepLink = data.link;
      final segments = deepLink.pathSegments;

      if (segments.length == 2 && segments.first == "userprofile") {
        final uid = segments[1];
        return UserDynamicLinkFunctions.redirectToUserProfile(uid);
      } else if (segments.length == 3 && segments.first == 'feed') {
        final college = segments[1];
        final feedId = segments[2];
        return FeedDynamicLinks.redirectToFeedPage(college, feedId);
      } else if (segments.length == 2 && segments.first == 'blog') {
        final blogId = segments[1];
        return BlogDynamicLinks.redirectToBlogsPage(blogId);
      }
      Fluttertoast.showToast(msg: "We are sorry but we couldn't find this url");
      return;
    }
  }
}
