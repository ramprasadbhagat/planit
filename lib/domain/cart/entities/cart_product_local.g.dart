// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_product_local.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CartAdapter extends TypeAdapter<_$CartProductLocalImpl> {
  @override
  final int typeId = 2;

  @override
  _$CartProductLocalImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$CartProductLocalImpl(
      productId: fields[0] as String,
      name: fields[1] as String,
      productImages: (fields[2] as List).cast<String>(),
      skuPrice: fields[3] as double,
      startingPrice: fields[4] as int,
      attributeItem: fields[5] as String,
      attributeItemProductId: fields[6] as String,
      price: fields[7] as String,
      quantity: fields[8] as int,
      attributeItemId: fields[9] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$CartProductLocalImpl obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.productId)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.skuPrice)
      ..writeByte(4)
      ..write(obj.startingPrice)
      ..writeByte(5)
      ..write(obj.attributeItem)
      ..writeByte(6)
      ..write(obj.attributeItemProductId)
      ..writeByte(7)
      ..write(obj.price)
      ..writeByte(8)
      ..write(obj.quantity)
      ..writeByte(9)
      ..write(obj.attributeItemId)
      ..writeByte(2)
      ..write(obj.productImages);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CartAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
