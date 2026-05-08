import 'package:freezed_annotation/freezed_annotation.dart';

part 'sync_record.freezed.dart';

enum SyncStatus { pending, syncing, synced, failed }
enum SyncOperation { create, update, delete }

@freezed
class SyncRecord with _$SyncRecord {
  const factory SyncRecord({
    required String id,
    required String featureName,
    required String recordId,
    required SyncOperation operation,
    required SyncStatus status,
    required Map<String, dynamic> payload,
    required DateTime createdAt,
    DateTime? syncedAt,
    String? errorMessage,
  }) = _SyncRecord;
}
