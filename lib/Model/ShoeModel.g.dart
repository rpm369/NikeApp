// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ShoeModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ShoeModelAdapter extends TypeAdapter<ShoeModel> {
  @override
  final int typeId = 0;

  @override
  ShoeModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ShoeModel(
      fields[0] as String,
      fields[1] as String,
      fields[2] as String,
      fields[3] as double,
    );
  }

  @override
  void write(BinaryWriter writer, ShoeModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj._imageUrl)
      ..writeByte(1)
      ..write(obj._name)
      ..writeByte(2)
      ..write(obj._discription)
      ..writeByte(3)
      ..write(obj._prince);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ShoeModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
