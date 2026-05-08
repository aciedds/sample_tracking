// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_local_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserProfileLocalModelAdapter extends TypeAdapter<UserProfileLocalModel> {
  @override
  final int typeId = 5;

  @override
  UserProfileLocalModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserProfileLocalModel(
      userId: fields[0] as String,
      weightKg: fields[1] as double,
      heightCm: fields[2] as double,
      ageYears: fields[3] as int,
      gender: fields[4] as String,
      goalType: fields[5] as String,
      targetWeightKg: fields[6] as double?,
      level: fields[7] as String,
      workoutDaysPerWeek: fields[8] as int,
      bmi: fields[9] as double,
      bmr: fields[10] as double,
    );
  }

  @override
  void write(BinaryWriter writer, UserProfileLocalModel obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.userId)
      ..writeByte(1)
      ..write(obj.weightKg)
      ..writeByte(2)
      ..write(obj.heightCm)
      ..writeByte(3)
      ..write(obj.ageYears)
      ..writeByte(4)
      ..write(obj.gender)
      ..writeByte(5)
      ..write(obj.goalType)
      ..writeByte(6)
      ..write(obj.targetWeightKg)
      ..writeByte(7)
      ..write(obj.level)
      ..writeByte(8)
      ..write(obj.workoutDaysPerWeek)
      ..writeByte(9)
      ..write(obj.bmi)
      ..writeByte(10)
      ..write(obj.bmr);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserProfileLocalModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
