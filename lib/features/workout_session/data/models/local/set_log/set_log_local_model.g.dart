// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_log_local_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SetLogLocalModelAdapter extends TypeAdapter<SetLogLocalModel> {
  @override
  final int typeId = 8;

  @override
  SetLogLocalModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SetLogLocalModel(
      id: fields[0] as String,
      exerciseId: fields[1] as String,
      exerciseName: fields[2] as String,
      setNumber: fields[3] as int,
      targetReps: fields[4] as int,
      completedReps: fields[5] as int?,
      weightKg: fields[6] as double?,
      durationSeconds: fields[7] as int?,
      isCompleted: fields[8] as bool,
      isSkipped: fields[9] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, SetLogLocalModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.exerciseId)
      ..writeByte(2)
      ..write(obj.exerciseName)
      ..writeByte(3)
      ..write(obj.setNumber)
      ..writeByte(4)
      ..write(obj.targetReps)
      ..writeByte(5)
      ..write(obj.completedReps)
      ..writeByte(6)
      ..write(obj.weightKg)
      ..writeByte(7)
      ..write(obj.durationSeconds)
      ..writeByte(8)
      ..write(obj.isCompleted)
      ..writeByte(9)
      ..write(obj.isSkipped);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SetLogLocalModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
