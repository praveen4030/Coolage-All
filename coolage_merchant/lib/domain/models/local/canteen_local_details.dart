import 'dart:convert';

import 'package:hive/hive.dart';

import 'package:coolage_merchant/domain/core/helpers/hive_constants.dart';

part 'canteen_local_details.g.dart';

@HiveType(typeId: HiveConstants.CANTEEN_LOCAL_DETAILS_BOX)
class CanteenLocalDetails {
  @HiveField(0)
  bool? isVoiceAlertOn;
  CanteenLocalDetails({
    this.isVoiceAlertOn,
  });

  Map<String, dynamic> toMap() {
    return {
      'isVoiceAlertOn': isVoiceAlertOn,
    };
  }

  factory CanteenLocalDetails.fromMap(Map<String, dynamic> map) {
    return CanteenLocalDetails(
      isVoiceAlertOn: map['isVoiceAlertOn'] as bool,
    );
  }

  @override
  String toString() => 'CanteenLocalDetails(isVoiceAlertOn: $isVoiceAlertOn)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CanteenLocalDetails &&
        other.isVoiceAlertOn == isVoiceAlertOn;
  }

  @override
  int get hashCode => isVoiceAlertOn.hashCode;
}
