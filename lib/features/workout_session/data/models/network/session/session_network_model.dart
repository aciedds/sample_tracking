import 'package:freezed_annotation/freezed_annotation.dart';

import '../set_log/set_log_network_model.dart';

part 'session_network_model.freezed.dart';
part 'session_network_model.g.dart';

@freezed
class SessionNetworkModel with _$SessionNetworkModel {
  const factory SessionNetworkModel({
    required String id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'workout_plan_id') required String workoutPlanId,
    @JsonKey(name: 'day_label') required String dayLabel,
    @JsonKey(name: 'started_at') required DateTime startedAt,
    @JsonKey(name: 'finished_at') DateTime? finishedAt,
    required List<SetLogNetworkModel> sets,
    @Default('idle') String status,
  }) = _SessionNetworkModel;

  factory SessionNetworkModel.fromJson(Map<String, dynamic> json) =>
      _$SessionNetworkModelFromJson(json);
}
