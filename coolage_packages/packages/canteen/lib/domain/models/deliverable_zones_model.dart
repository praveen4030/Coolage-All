import 'dart:convert';

import 'package:core/core.dart';
import 'package:hive/hive.dart';

part 'deliverable_zones_model.g.dart';

@HiveType(typeId: HiveConstants.deliverableZonesModel)
class DeliverableZonesModel {
  @HiveField(0)
  String? zone;
  @HiveField(1)
  int? deliveryCharge;
  @HiveField(2)
  int? minimumPriceForFreeDelivery;
  DeliverableZonesModel({
    this.zone,
    this.deliveryCharge,
    this.minimumPriceForFreeDelivery,
  });

  Map<String, dynamic> toMap() {
    return {
      'zone': zone,
      'deliveryCharge': deliveryCharge,
      'minimumPriceForFreeDelivery': minimumPriceForFreeDelivery,
    };
  }

  factory DeliverableZonesModel.fromMap(Map<String, dynamic> map) {
    return DeliverableZonesModel(
      zone: map['zone'] as String,
      deliveryCharge: int.tryParse(map['deliveryCharge']?.toString() ?? '0'),
      minimumPriceForFreeDelivery:
          int.tryParse(map['minimumPriceForFreeDelivery']?.toString() ?? '0'),
    );
  }
}
