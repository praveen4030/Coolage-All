// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'canteen_geopoint.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CanteenGeopointModelAdapter extends TypeAdapter<CanteenGeopointModel> {
  @override
  final int typeId = 4;

  @override
  CanteenGeopointModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CanteenGeopointModel(
      geohash: fields[0] as String?,
      geopoint: fields[1] as GeoPoint?,
    );
  }

  @override
  void write(BinaryWriter writer, CanteenGeopointModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.geohash)
      ..writeByte(1)
      ..write(obj.geopoint);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CanteenGeopointModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
