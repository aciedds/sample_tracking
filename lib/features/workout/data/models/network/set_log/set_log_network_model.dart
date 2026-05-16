import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_log_network_model.freezed.dart';
part 'set_log_network_model.g.dart';

@freezed
class SetLogNetworkModel with _$SetLogNetworkModel {
  const factory SetLogNetworkModel({
    required String id,
    @JsonKey(name: 'exercise_id') required String exerciseId,
    @JsonKey(name: 'exercise_name') required String exerciseName,
    @JsonKey(name: 'set_number') required int setNumber,
    @JsonKey(name: 'target_reps') required int targetReps,
    @JsonKey(name: 'completed_reps') int? completedReps,
    @JsonKey(name: 'weight_kg') double? weightKg,
    @JsonKey(name: 'duration_seconds') int? durationSeconds,
    @JsonKey(name: 'is_completed') @Default(false) bool isCompleted,
    @JsonKey(name: 'is_skipped') @Default(false) bool isSkipped,
  }) = _SetLogNetworkModel;

  factory SetLogNetworkModel.fromJson(Map<String, dynamic> json) =>
      _$SetLogNetworkModelFromJson(json);
}
