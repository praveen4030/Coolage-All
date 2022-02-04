import 'package:coolage/presentation/auth/authentication.dart';
import 'package:coolage/presentation/auth/pages/user_name_page.dart';
import 'package:coolage/presentation/base/base.dart';
import 'package:core/core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:user/application/auth/authentication_bloc.dart';
import 'package:user/domain/auth/fetch_user_details.dart';
import 'package:user/user.dart';

mixin AuthNavigation {
  static Future<void> redirectUserBasedOnDetails(
    BuildContext context, {
    CoolUser? coolUser,
  }) async {
    final user = coolUser ??
        await FetchUserDetails.getUserFromUid(Getters.getCurrentUserUid());
    if (FirebaseAuth.instance.currentUser == null) {
      Fluttertoast.showToast(msg: "Something went wrong!");
      Navigator.of(CoreGetters.getContext).popUntil((route) => route.isFirst);
      Navigator.of(CoreGetters.getContext).pushReplacement(
          MaterialPageRoute(builder: (context) => const AuthenticationPage()));
      return;
    }

    if (user == null || (!checkIfUsersNeededInformationIsAvailable(user))) {
      Navigator.of(CoreGetters.getContext).popUntil((route) => route.isFirst);
      Navigator.of(CoreGetters.getContext).pushReplacement(
          MaterialPageRoute(builder: (context) => const UserNamePage()));
      return;
    }

    await FirebaseFunctions.updateDeviceToken();

    CoreGetters.getContext
        .read<AuthenticationBloc>()
        .add(AuthenticationEvent.userModified(user: user));
    await Future.delayed(const Duration(milliseconds: 300));

    Navigator.of(CoreGetters.getContext).popUntil((route) => route.isFirst);
    Navigator.of(CoreGetters.getContext).pushReplacement(
        MaterialPageRoute(builder: (context) => const BasePage()));
    return;
  }

  static bool checkIfUsersNeededInformationIsAvailable(CoolUser coolUser) {
    final hasName = coolUser.name?.isNotEmpty ?? false;
    final hasUserType = coolUser.userType?.isNotEmpty ?? false;
    if (hasName && hasUserType) {
      if (coolUser.userType! == Constants.USER_TYPE_STUDENT) {
        final hasDegree = coolUser.degree?.isNotEmpty ?? false;
        final hasBranch = coolUser.branch?.isNotEmpty ?? false;
        final hasYear = coolUser.year?.isNotEmpty ?? false;
        final hasBatchStartFrom = coolUser.batchStart?.isNotEmpty ?? false;
        final hasBatchEnd = coolUser.batchFinish?.isNotEmpty ?? false;
        if (hasDegree &&
            hasBranch &&
            hasBatchStartFrom &&
            (coolUser.degree == Constants.PHD_GROUP ||
                (hasYear && hasBatchEnd))) {
          return true;
        }
      } else if (coolUser.userType! == Constants.USER_TYPE_FACULTY) {
        final hasDesignation = coolUser.designation?.isNotEmpty ?? false;
        final hasDepartment = coolUser.branch?.isNotEmpty ?? false;
        if (hasDesignation && hasDepartment) {
          return true;
        }
      } else if (coolUser.userType! == Constants.USER_TYPE_STAFF ||
          coolUser.userType! == Constants.USER_TYPE_GUEST) {
        return true;
      }
    }
    return false;
  }
}
