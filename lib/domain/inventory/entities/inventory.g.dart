// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class InventoryAdapter extends TypeAdapter<_$InventoryImpl> {
  @override
  final int typeId = 4;

  @override
  _$InventoryImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$InventoryImpl(
      itemWeight: fields[0] as String,
      attributeItemId: fields[1] as String,
      listPrice: fields[2] as double,
      finalPrice: fields[3] as double,
      discountPercentage: fields[4] as double,
      quantity: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$InventoryImpl obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.itemWeight)
      ..writeByte(1)
      ..write(obj.attributeItemId)
      ..writeByte(2)
      ..write(obj.listPrice)
      ..writeByte(3)
      ..write(obj.finalPrice)
      ..writeByte(4)
      ..write(obj.discountPercentage)
      ..writeByte(5)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InventoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
