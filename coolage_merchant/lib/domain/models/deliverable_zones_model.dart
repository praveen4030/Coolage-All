import 'dart:convert';

class DeliverableZonesModel {
  String? zone;
  int? deliveryCharge;
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
