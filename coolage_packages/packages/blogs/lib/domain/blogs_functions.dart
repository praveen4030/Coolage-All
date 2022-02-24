import 'package:blogs/blogs.dart';
import 'package:intl/intl.dart';

mixin BlogsFunctions {
  static String getFeedShareMessage(String link, BlogsModel blogsModel) {
    String s = "";
    s += "Checkout the new feed post:\n";
    s += "${blogsModel.title}\n";
    s += "Published by~\n";

    s += " ${blogsModel.author}\n";
    final date =
        DateFormat('dd-MM-yyyy').format(blogsModel.timestamp!.toDate());
    s += "on $date\n\n";
    s += "Read the full article on Coolage App\n";
    s += link;
    return s;
  }
}
