// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_day_local_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ScheduleDayLocalModelAdapter extends TypeAdapter<ScheduleDayLocalModel> {
  @override
  final int typeId = 4;

  @override
  ScheduleDayLocalModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ScheduleDayLocalModel(
      id: fields[0] as String,
      userId: fields[1] as String,
      date: fields[2] as DateTime,
      dayOfWeek: fields[3] as int,
      status: fields[4] as String,
      workoutPlanDayLabel: fields[5] as String?,
      sessionId: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ScheduleDayLocalModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.userId)
      ..writeByte(2)
      ..write(obj.date)
      ..writeByte(3)
      ..write(obj.dayOfWeek)
      ..writeByte(4)
      ..write(obj.status)
      ..writeByte(5)
      ..write(obj.workoutPlanDayLabel)
      ..writeByte(6)
      ..write(obj.sessionId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ScheduleDayLocalModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
