// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'canteen_basic_details_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CanteenBasicDetailsModelAdapter
    extends TypeAdapter<CanteenBasicDetailsModel> {
  @override
  final int typeId = 3;

  @override
  CanteenBasicDetailsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CanteenBasicDetailsModel(
      about: fields[0] as String?,
      preperationTime: fields[1] as String?,
      name: fields[2] as String?,
      location: fields[3] as String?,
      address: fields[4] as String?,
      isOpen: fields[5] as bool?,
      isDelivery: fields[7] as bool?,
      image: fields[8] as String?,
      isLive: fields[6] as bool?,
      canteenId: fields[9] as String?,
      contactNo: fields[10] as String?,
      contactChatUid: fields[11] as String?,
      categoriesList: (fields[12] as List?)?.cast<String>(),
      college: fields[13] as String?,
      canteenAdminContactNo: fields[14] as String?,
      canteenAdminName: fields[15] as String?,
      canteenAdminUid: fields[16] as String?,
      deviceTokensMap: (fields[17] as Map?)?.cast<String, String>(),
      deliveryZonesList: (fields[20] as List?)?.cast<DeliverableZonesModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, CanteenBasicDetailsModel obj) {
    writer
      ..writeByte(19)
      ..writeByte(0)
      ..write(obj.about)
      ..writeByte(1)
      ..write(obj.preperationTime)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.location)
      ..writeByte(4)
      ..write(obj.address)
      ..writeByte(5)
      ..write(obj.isOpen)
      ..writeByte(6)
      ..write(obj.isLive)
      ..writeByte(7)
      ..write(obj.isDelivery)
      ..writeByte(8)
      ..write(obj.image)
      ..writeByte(9)
      ..write(obj.canteenId)
      ..writeByte(10)
      ..write(obj.contactNo)
      ..writeByte(11)
      ..write(obj.contactChatUid)
      ..writeByte(12)
      ..write(obj.categoriesList)
      ..writeByte(13)
      ..write(obj.college)
      ..writeByte(14)
      ..write(obj.canteenAdminContactNo)
      ..writeByte(15)
      ..write(obj.canteenAdminName)
      ..writeByte(16)
      ..write(obj.canteenAdminUid)
      ..writeByte(17)
      ..write(obj.deviceTokensMap)
      ..writeByte(20)
      ..write(obj.deliveryZonesList);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CanteenBasicDetailsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
