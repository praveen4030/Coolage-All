// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deliverable_zones_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DeliverableZonesModelAdapter extends TypeAdapter<DeliverableZonesModel> {
  @override
  final int typeId = 5;

  @override
  DeliverableZonesModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DeliverableZonesModel(
      zone: fields[0] as String?,
      deliveryCharge: fields[1] as int?,
      minimumPriceForFreeDelivery: fields[2] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, DeliverableZonesModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.zone)
      ..writeByte(1)
      ..write(obj.deliveryCharge)
      ..writeByte(2)
      ..write(obj.minimumPriceForFreeDelivery);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeliverableZonesModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
