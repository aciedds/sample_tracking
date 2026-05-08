import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_day.freezed.dart';

enum ScheduleDayStatus { workout, rest, skipped, completed }

@freezed
class ScheduleDay with _$ScheduleDay {
  const factory ScheduleDay({
    required String id,
    required String userId,
    required DateTime date,
    required int dayOfWeek,
    required ScheduleDayStatus status,
    String? workoutPlanDayLabel,
    String? sessionId,
  }) = _ScheduleDay;
}
