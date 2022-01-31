// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'canteen_local_details.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CanteenLocalDetailsAdapter extends TypeAdapter<CanteenLocalDetails> {
  @override
  final int typeId = 1;

  @override
  CanteenLocalDetails read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CanteenLocalDetails(
      isVoiceAlertOn: fields[0] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, CanteenLocalDetails obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.isVoiceAlertOn);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CanteenLocalDetailsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
