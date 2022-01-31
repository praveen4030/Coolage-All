import 'package:coolage_merchant/application/auth/authentication_bloc.dart';
import 'package:coolage_merchant/domain/base/canteen/canteen_basic_details_model.dart';
import 'package:coolage_merchant/domain/core/helpers/enum.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:coolage_merchant/domain/user/cool_user.dart';
import 'package:coolage_merchant/presentation/routes/router.gr.dart' as route;
import 'package:flutter_bloc/flutter_bloc.dart';

mixin Getters {
  static CanteenBasicDetailsModel getCurrentCanteen(BuildContext context) {
    return context.read<AuthenticationBloc>().state.canteenBasicDetailsModel!;
  }

  static String getCurrentCanteenId(BuildContext context) {
    return context
            .read<AuthenticationBloc>()
            .state
            .canteenBasicDetailsModel!
            .canteenId ??
        '';
  }

  static String getCurrentUserUid() {
    return FirebaseAuth.instance.currentUser!.uid;
  }
}
