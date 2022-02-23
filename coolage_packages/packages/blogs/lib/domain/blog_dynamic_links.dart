part of blogs;

class BlogDynamicLinks {
  static Future<void> redirectToBlogsPage(String blogId) async {
    try {
      if (blogId.isEmpty) {
        Fluttertoast.showToast(msg: "Couldn't find this blog post!");
        return;
      }
      final doc =
          await FirebaseFirestore.instance.blogsCollection.doc(blogId).get();
      if (!doc.exists) {
        Fluttertoast.showToast(msg: "Couldn't find this blog post!");
        return;
      }
      final model = BlogsModel.fromMap(doc.data() as Map<String, dynamic>);
      Navigator.of(CoreGetters.getContext).push(MaterialPageRoute(
          builder: (context) => SingleBlogPostPage(blogsModel: model)));
    } catch (e) {
      Fluttertoast.showToast(msg: "Couldn't find this blog post!");
      return;
    }
  }

  static Future<String?> getBlogShareLink(BlogsModel blogsModel) async {
    try {
      if (blogsModel.shareDynamicLink.isNotEmpty) {
        return blogsModel.shareDynamicLink;
      }
      final generatedLink = await createBlogDynamicLink(blogsModel.docId!);
      if (generatedLink?.isEmpty ?? true) {
        FlushbarHelper.createError(message: "Something went wrong!")
            .show(CoreGetters.getContext);
        return null;
      }
      blogsModel.shareDynamicLink = generatedLink!;
      await FirebaseFirestore.instance.blogsCollection
          .doc(blogsModel.docId)
          .update({
        'shareDynamicLink': generatedLink,
      });
      return generatedLink;
    } catch (e) {
      FlushbarHelper.createError(message: "Something went wrong!")
          .show(CoreGetters.getContext);
    }
  }

  static Future<String?> createBlogDynamicLink(String blogId) async {
    try {
      if (kIsWeb) {
        return '';
      }
      final DynamicLinkParameters parameters = DynamicLinkParameters(
        uriPrefix: 'https://kraigs.page.link',
        link: Uri.parse('https://kraigs.page.link/blog/$blogId'),
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
