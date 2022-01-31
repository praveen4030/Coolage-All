// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_price_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CategoryPriceModelAdapter extends TypeAdapter<CategoryPriceModel> {
  @override
  final int typeId = 6;

  @override
  CategoryPriceModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CategoryPriceModel(
      category: fields[0] as String?,
      price: fields[2] as double?,
      qty: fields[1] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, CategoryPriceModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.category)
      ..writeByte(1)
      ..write(obj.qty)
      ..writeByte(2)
      ..write(obj.price);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoryPriceModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
