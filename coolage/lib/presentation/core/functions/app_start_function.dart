import 'dart:async';

import 'package:canteen/canteen.dart';
import 'package:college/application/college/college_bloc.dart';
import 'package:core/application/coolage_details/coolage_details_bloc.dart';
import 'package:feed/application/feed/feed_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_links/uni_links.dart';
import 'package:user/domain/auth/fetch_user_details.dart';
import 'package:user/ui/profile/user_profile.dart';
import 'package:user/user.dart';

mixin AppStartFunction {
  static void startingBlocEvents(BuildContext context) {
    context.read<CollegeBloc>().add(CollegeEvent.getCollegeDetails(
          userCollege: Getters.getCurrentUserCollege(context),
        ));
    context.read<CoolageDetailsBloc>().add(const CoolageDetailsEvent.started());
    CanteenCoreFunctionality.initializeBloc(context);
    // context.read<FeedBloc>().add(FeedEvent.getApprovedPosts(
    //     userCollege: Getters.getCurrentUserCollege(context)));
  }

  static bool isUniLinkInitiallyCalled = false;

  static Future<void> getUniLinkData(BuildContext context) async {
    if (!isUniLinkInitiallyCalled) {
      isUniLinkInitiallyCalled = true;
      try {
        final uri = await getInitialUri();
        openUserProfile(context, uri);
      } on PlatformException catch (e) {
        debugPrint(e.message.toString());
      } on FormatException catch (err) {
        debugPrint(err.message.toString());
      }
    }
  }

  /// Handle incoming links - the ones that the app will recieve from the OS
  /// while already started.
  static void handleIncomingUniLinks(BuildContext context) {
    if (!kIsWeb) {
      // It will handle app links while the app is already started - be it in
      // the foreground or in the background.
      uriLinkStream.listen((Uri? uri) {
        openUserProfile(context, uri);
      }, onError: (Object err) {
        debugPrint(err.toString());
      });
    }
  }

  static Future<void> openUserProfile(BuildContext context, Uri? uri) async {
    if (uri != null && uri.data != null) {
      final link = uri.data!.toString();
      if (link.isNotEmpty) {
        if (link.contains('userprofile/')) {
          final uid = link.split("/").last;
          final user = await FetchUserDetails.getUserFromUid(uid);
          if (user != null) {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => UserProfilePage(
                      coolUser: user,
                    )));
          }
        }
      }
    } else {
      debugPrint('No uni link found');
    }
  }
}
