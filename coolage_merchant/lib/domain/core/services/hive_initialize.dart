import 'package:coolage_merchant/domain/core/helpers/hive_constants.dart';
import 'package:coolage_merchant/domain/models/local/canteen_local_details.dart';
import 'package:hive_flutter/hive_flutter.dart';

mixin HiveInitialize {
  static Future<void> initialize() async {
    Hive.registerAdapter(CanteenLocalDetailsAdapter());
    await Hive.openBox<CanteenLocalDetails>(
        HiveConstants.CANTEEN_LOCAL_DETAILS_BOX_NAME);
  }
}
