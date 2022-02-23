import 'package:blogs/blogs.dart';

mixin BlogsFunctions {
  static String getFeedShareMessage(String link, BlogsModel blogsModel) {
    String s = "";
    s += "Hey There!\n\n";
    s +=
        "Check out this new blog post on Coolage App about ${blogsModel.title}\n\n";
    s += "Link : $link";
    return s;
  }
}
