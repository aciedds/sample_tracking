// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_record_local_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SessionRecordLocalModelAdapter
    extends TypeAdapter<SessionRecordLocalModel> {
  @override
  final int typeId = 2;

  @override
  SessionRecordLocalModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SessionRecordLocalModel(
      id: fields[0] as String,
      userId: fields[1] as String,
      dayLabel: fields[2] as String,
      date: fields[3] as DateTime,
      durationSeconds: fields[4] as int,
      completedSets: fields[5] as int,
      totalSets: fields[6] as int,
      estimatedCalories: fields[7] as double,
      performanceScore: fields[8] as double,
    );
  }

  @override
  void write(BinaryWriter writer, SessionRecordLocalModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.userId)
      ..writeByte(2)
      ..write(obj.dayLabel)
      ..writeByte(3)
      ..write(obj.date)
      ..writeByte(4)
      ..write(obj.durationSeconds)
      ..writeByte(5)
      ..write(obj.completedSets)
      ..writeByte(6)
      ..write(obj.totalSets)
      ..writeByte(7)
      ..write(obj.estimatedCalories)
      ..writeByte(8)
      ..write(obj.performanceScore);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SessionRecordLocalModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
