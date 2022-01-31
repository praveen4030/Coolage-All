import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/core.dart';
import 'package:hive/hive.dart';

part 'canteen_geopoint.g.dart';

@HiveType(typeId: HiveConstants.canteenGeopointModel)
class CanteenGeopointModel {
  @HiveField(0)
  String? geohash;
  @HiveField(1)
  GeoPoint? geopoint;
  CanteenGeopointModel({
    this.geohash,
    this.geopoint,
  });

  CanteenGeopointModel copyWith({
    String? geohash,
    GeoPoint? geopoint,
  }) {
    return CanteenGeopointModel(
      geohash: geohash ?? this.geohash,
      geopoint: geopoint ?? this.geopoint,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'geohash': geohash,
      'geopoint': geopoint,
    };
  }

  factory CanteenGeopointModel.fromMap(Map<String, dynamic> map) {
    return CanteenGeopointModel(
      geohash: map['geohash'] as String,
      geopoint: map['geopoint'] as GeoPoint,
    );
  }

  @override
  String toString() =>
      'CanteenGeopointModel(geohash: $geohash, geopoint: $geopoint)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CanteenGeopointModel &&
        other.geohash == geohash &&
        other.geopoint == geopoint;
  }

  @override
  int get hashCode => geohash.hashCode ^ geopoint.hashCode;
}
