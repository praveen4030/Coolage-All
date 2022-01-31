import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolage/domain/models/app_update_dialog_model.dart';
import 'package:coolage/presentation/core/dialogs/app_update_dialog.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:package_info/package_info.dart';
import 'package:shared_preferences/shared_preferences.dart';

mixin CheckForUpdate {
  static Future<void> showAppUpdate(BuildContext context) async {
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();
    final int buildNumberCurrent = int.parse(packageInfo.buildNumber);
    final doc = await FirebaseFirestore.instance.coolageCollection
        .doc('optionalUpdate')
        .get();
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final data = doc.data()! as Map<String, dynamic>;
    final AppUpdateDialogModel model = AppUpdateDialogModel.fromMap(data);
    if (buildNumberCurrent < model.buildNumber!) {
      //show update available on Play Store
      if (model.isRecurring ?? false) {
        final DateTime dateToday = DateTime.now();
        final String format = DateFormat("yMMMMd").format(dateToday);
        const String key = 'isOptionalAppUpdateShown';
        final String value = '${model.buildNumber} $format';
        final String isOptionalAppUpdateShown = prefs.getString(key) ?? '';
        if (isOptionalAppUpdateShown == value) {
          return;
        } else {
          await prefs.setString(key, value);
          await showDialog(
            context: context,
            builder: (contex) {
              return AppUpdateDialog(
                appUpdateDialogModel: model,
              );
            },
          );
        }
      } else {
        String key = 'isOptionalAppUpdateShown';
        String value = '${model.buildNumber}';
        String isOptionalAppUpdateShown = prefs.getString(key) ?? '';
        if (isOptionalAppUpdateShown == value) return;
        await prefs.setString(key, value);
        await showDialog(
          context: context,
          builder: (contex) {
            return AppUpdateDialog(
              appUpdateDialogModel: model,
            );
          },
        );
      }
    }
  }
}
