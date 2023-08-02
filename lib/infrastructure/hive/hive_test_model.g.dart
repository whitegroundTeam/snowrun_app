// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_test_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveTestModelAdapter extends TypeAdapter<HiveTestModel> {
  @override
  final int typeId = 0;

  @override
  HiveTestModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveTestModel(
      fields[0] as String,
      fields[1] as String,
      (fields[2] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, HiveTestModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.contents);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveTestModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
