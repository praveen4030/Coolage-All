import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolage_merchant/application/auth/authentication_bloc.dart';
import 'package:coolage_merchant/domain/base/canteen/canteen_basic_details_model.dart';
import 'package:coolage_merchant/domain/core/helpers/getter.dart';
import 'package:flutter/cupertino.dart';
import 'package:coolage_merchant/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

mixin CanteenBasicDetailsRealtime {
  static Future<void> makeRealtime(BuildContext context) async {
    FirebaseFirestore.instance.canteenBasicDetailsCollection
        .doc(Getters.getCurrentCanteenId(context))
        .snapshots()
        .listen((DocumentSnapshot snapshot) async {
      if (snapshot.exists) {
        final model = CanteenBasicDetailsModel.fromMap(
            snapshot.data()! as Map<String, dynamic>);
        context.read<AuthenticationBloc>().add(
            AuthenticationEvent.userModified(canteenBasicDetailsModel: model));
      }
    });
  }
}
