// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ItemModelAdapter extends TypeAdapter<ItemModel> {
  @override
  final int typeId = 2;

  @override
  ItemModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ItemModel(
      image: fields[0] as String?,
      itemName: fields[1] as String?,
      price: fields[2] as double?,
      subtitle: fields[3] as String?,
      desc: fields[4] as String?,
      qty: fields[5] as int?,
      itemId: fields[6] as String?,
      category: fields[7] as String?,
      isAvailable: fields[8] as bool?,
      isVeg: fields[9] as bool?,
      categoryPrices: (fields[10] as List?)?.cast<CategoryPriceModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, ItemModel obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.image)
      ..writeByte(1)
      ..write(obj.itemName)
      ..writeByte(2)
      ..write(obj.price)
      ..writeByte(3)
      ..write(obj.subtitle)
      ..writeByte(4)
      ..write(obj.desc)
      ..writeByte(5)
      ..write(obj.qty)
      ..writeByte(6)
      ..write(obj.itemId)
      ..writeByte(7)
      ..write(obj.category)
      ..writeByte(8)
      ..write(obj.isAvailable)
      ..writeByte(9)
      ..write(obj.isVeg)
      ..writeByte(10)
      ..write(obj.categoryPrices);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
