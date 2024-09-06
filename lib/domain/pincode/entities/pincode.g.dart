// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pincode.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PinCodeAdapter extends TypeAdapter<_$PinCodeImpl> {
  @override
  final int typeId = 3;

  @override
  _$PinCodeImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$PinCodeImpl(
      pin: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$PinCodeImpl obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.pin);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PinCodeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
