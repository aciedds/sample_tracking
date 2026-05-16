// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_local_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SessionLocalModelAdapter extends TypeAdapter<SessionLocalModel> {
  @override
  final int typeId = 9;

  @override
  SessionLocalModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SessionLocalModel(
      id: fields[0] as String,
      userId: fields[1] as String,
      workoutPlanId: fields[2] as String,
      dayLabel: fields[3] as String,
      startedAt: fields[4] as DateTime,
      finishedAt: fields[5] as DateTime?,
      sets: (fields[6] as List).cast<SetLogLocalModel>(),
      status: fields[7] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SessionLocalModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.userId)
      ..writeByte(2)
      ..write(obj.workoutPlanId)
      ..writeByte(3)
      ..write(obj.dayLabel)
      ..writeByte(4)
      ..write(obj.startedAt)
      ..writeByte(5)
      ..write(obj.finishedAt)
      ..writeByte(6)
      ..write(obj.sets)
      ..writeByte(7)
      ..write(obj.status);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SessionLocalModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
