// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_weight_local_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BodyWeightLocalModelAdapter extends TypeAdapter<BodyWeightLocalModel> {
  @override
  final int typeId = 3;

  @override
  BodyWeightLocalModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BodyWeightLocalModel(
      id: fields[0] as String,
      userId: fields[1] as String,
      weightKg: fields[2] as double,
      bmi: fields[3] as double,
      recordedAt: fields[4] as DateTime,
      note: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, BodyWeightLocalModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.userId)
      ..writeByte(2)
      ..write(obj.weightKg)
      ..writeByte(3)
      ..write(obj.bmi)
      ..writeByte(4)
      ..write(obj.recordedAt)
      ..writeByte(5)
      ..write(obj.note);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BodyWeightLocalModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
