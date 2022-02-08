// import 'package:core/core.dart';
// import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
// import 'package:flushbar/flushbar_helper.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:user/application/auth/authentication_bloc.dart';
// import 'package:user/domain/auth/fetch_user_details.dart';
// import 'package:user/ui/profile/user_profile.dart';
// import 'package:user/user.dart';

part of user;

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
      if (segments.length != 2) {
        Fluttertoast.showToast(
            msg: "We are sorry but we couldn't find this url");
        return;
      }
      if (segments.first != "userprofile") {
        Fluttertoast.showToast(
            msg: "We are sorry but we couldn't find this url");
        return;
      }
      final uid = segments[1];
      if (uid.isEmpty) {
        Fluttertoast.showToast(msg: "Coundn't find this user");
        return;
      }
      final user = await FetchUserDetails.getUserFromUid(uid);
      if (user != null) {
        Navigator.of(CoreGetters.getContext).push(MaterialPageRoute(
            builder: (context) => UserProfilePage(coolUser: user)));
      } else {
        Fluttertoast.showToast(msg: "Coundn't find this user");
      }
    }
  }

  static Future<String?> getUserShareLink(CoolUser coolUser) async {
    try {
      if (coolUser.profileLink?.isNotEmpty ?? false) {
        return coolUser.profileLink!;
      }
      final generatedLink = await createUserDynamicLink(coolUser.uid!);
      if (generatedLink?.isEmpty ?? true) {
        FlushbarHelper.createError(message: "Something went wrong!")
            .show(CoreGetters.getContext);
        return null;
      }
      coolUser.profileLink = generatedLink;
      if (coolUser.uid == Getters.getCurrentUserUid()) {
        CoreGetters.getContext
            .read<AuthenticationBloc>()
            .add(AuthenticationEvent.updateUserDetails(coolUser: coolUser));
      }
      return generatedLink;
    } catch (e) {
      FlushbarHelper.createError(message: "Something went wrong!")
          .show(CoreGetters.getContext);
    }
  }

  static Future<String?> createUserDynamicLink(String uid) async {
    try {
      if (kIsWeb) {
        return '';
      }
      final DynamicLinkParameters parameters = DynamicLinkParameters(
        uriPrefix: 'https://coolage.co.in/userprofile',
        link: Uri.parse('https://coolage.co.in/userprofile/$uid'),
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
      Fluttertoast.showToast(msg: "Something went wrong!");
    }
  }
}
