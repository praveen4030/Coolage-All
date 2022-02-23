part of feed;

class FeedDynamicLinks {
  static Future<void> redirectToFeedPage(String college, String feedId) async {
    try {
      if (college.isEmpty || feedId.isEmpty) {
        Fluttertoast.showToast(msg: "Couldn't find this feed post!");
        return;
      }
      final doc = await FirebaseFirestore.instance.collegesCollection
          .doc(college)
          .feedCollection
          .doc(feedId)
          .get();
      if (!doc.exists) {
        Fluttertoast.showToast(msg: "Couldn't find this feed post!");
        return;
      }
      final model = FeedModel.fromMap(doc.data() as Map<String, dynamic>);
      Navigator.of(CoreGetters.getContext).push(MaterialPageRoute(
          builder: (context) => SingleFeedPostPage(feedModel: model)));
    } catch (e) {
      Fluttertoast.showToast(msg: "Couldn't find this feed post!");
      return;
    }
  }

  static Future<String?> getFeedShareLink(
      String college, FeedModel feedModel) async {
    try {
      if (feedModel.shareDynamicLink.isNotEmpty) {
        return feedModel.shareDynamicLink;
      }
      final generatedLink =
          await createFeedDynamicLink(college, feedModel.docId!);
      if (generatedLink?.isEmpty ?? true) {
        FlushbarHelper.createError(message: "Something went wrong!")
            .show(CoreGetters.getContext);
        return null;
      }
      feedModel.shareDynamicLink = generatedLink!;
      await FirebaseFirestore.instance.collegesCollection
          .doc(college)
          .feedCollection
          .doc(feedModel.docId!)
          .update({
        'shareDynamicLink': generatedLink,
      });
      return generatedLink;
    } catch (e) {
      FlushbarHelper.createError(message: "Something went wrong!")
          .show(CoreGetters.getContext);
    }
  }

  static Future<String?> createFeedDynamicLink(
      String college, String feedId) async {
    try {
      if (kIsWeb) {
        return '';
      }
      final DynamicLinkParameters parameters = DynamicLinkParameters(
        uriPrefix: 'https://kraigs.page.link',
        link: Uri.parse('https://kraigs.page.link/feed/$college/$feedId'),
        androidParameters: const AndroidParameters(
          packageName: 'com.kraigs.coolage',
        ),
      );

      var dynamicUrl =
          await FirebaseDynamicLinks.instance.buildShortLink(parameters);
      final url = dynamicUrl.shortUrl;
      debugPrint(url.toString());
      return url.toString();
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
