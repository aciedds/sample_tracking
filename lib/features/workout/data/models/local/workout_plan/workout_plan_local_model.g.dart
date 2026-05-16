// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_plan_local_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WorkoutDayLocalModelAdapter extends TypeAdapter<WorkoutDayLocalModel> {
  @override
  final int typeId = 6;

  @override
  WorkoutDayLocalModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WorkoutDayLocalModel(
      dayOfWeek: fields[0] as int,
      label: fields[1] as String,
      exerciseIds: (fields[2] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, WorkoutDayLocalModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.dayOfWeek)
      ..writeByte(1)
      ..write(obj.label)
      ..writeByte(2)
      ..write(obj.exerciseIds);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WorkoutDayLocalModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class WorkoutPlanLocalModelAdapter extends TypeAdapter<WorkoutPlanLocalModel> {
  @override
  final int typeId = 7;

  @override
  WorkoutPlanLocalModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WorkoutPlanLocalModel(
      id: fields[0] as String,
      userId: fields[1] as String,
      name: fields[2] as String,
      days: (fields[3] as List).cast<WorkoutDayLocalModel>(),
      createdAt: fields[4] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, WorkoutPlanLocalModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.userId)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.days)
      ..writeByte(4)
      ..write(obj.createdAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WorkoutPlanLocalModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
