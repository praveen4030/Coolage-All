import 'package:core/core.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:share/share.dart';
import 'package:user/user.dart';

mixin ShareProfileFunction {
  static Future<void> shareMessage(CoolUser coolUser) async {
    final link = await UserDynamicLinkFunctions.getUserShareLink(coolUser);
    if (link?.isEmpty ?? true) {
      FlushbarHelper.createError(message: "Something went wrong!")
          .show(CoreGetters.getContext);
      return;
    }
    final message = ShareProfileFunction.getMessage(coolUser, link!);
    Share.share(message);
  }

  static String getMessage(CoolUser coolUser, String link) {
    String msg = "";
    if (coolUser.uid == Getters.getCurrentUserUid()) {
      msg += "Hi, I am ${coolUser.name ?? ''}";
      if (coolUser.userType == Constants.USER_TYPE_FACULTY) {
        msg +=
            ', ${coolUser.designation ?? ''} in ${coolUser.branch ?? ''} @ ${coolUser.college ?? ''}';
      } else if (coolUser.userType == Constants.USER_TYPE_STUDENT) {
        final year = coolUser.year?.isNotEmpty ?? false
            ? Functions.getWithSuffix(int.parse(coolUser.year!))
            : '';
        msg +=
            '$year ${coolUser.degree ?? ''} student of ${coolUser.branch ?? ''} @ ${coolUser.college ?? ''}';
      } else {
        final type =
            coolUser.userType == Constants.USER_TYPE_GUEST ? 'guest' : 'staff';
        msg += ' $type @ ${coolUser.college ?? ''}';
      }
    } else {
      msg += "${coolUser.name ?? ''},";
      String type = "";
      if (coolUser.userType == Constants.USER_TYPE_GUEST) {
        type = "guest";
      } else if (coolUser.userType == Constants.USER_TYPE_STAFF) {
        type = "staff";
      } else if (coolUser.userType == Constants.USER_TYPE_STUDENT) {
        type = "student";
      } else if (coolUser.userType == Constants.USER_TYPE_FACULTY) {
        type = "faculty";
      }
      msg += '\n$type @ ${coolUser.college ?? ''}';
    }

    msg += "\n\n$link";
    return msg;
  }
}
