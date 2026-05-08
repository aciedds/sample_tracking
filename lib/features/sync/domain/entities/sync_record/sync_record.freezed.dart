// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sync_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SyncRecord {
  String get id => throw _privateConstructorUsedError;
  String get featureName => throw _privateConstructorUsedError;
  String get recordId => throw _privateConstructorUsedError;
  SyncOperation get operation => throw _privateConstructorUsedError;
  SyncStatus get status => throw _privateConstructorUsedError;
  Map<String, dynamic> get payload => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get syncedAt => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of SyncRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SyncRecordCopyWith<SyncRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SyncRecordCopyWith<$Res> {
  factory $SyncRecordCopyWith(
          SyncRecord value, $Res Function(SyncRecord) then) =
      _$SyncRecordCopyWithImpl<$Res, SyncRecord>;
  @useResult
  $Res call(
      {String id,
      String featureName,
      String recordId,
      SyncOperation operation,
      SyncStatus status,
      Map<String, dynamic> payload,
      DateTime createdAt,
      DateTime? syncedAt,
      String? errorMessage});
}

/// @nodoc
class _$SyncRecordCopyWithImpl<$Res, $Val extends SyncRecord>
    implements $SyncRecordCopyWith<$Res> {
  _$SyncRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SyncRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? featureName = null,
    Object? recordId = null,
    Object? operation = null,
    Object? status = null,
    Object? payload = null,
    Object? createdAt = null,
    Object? syncedAt = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      featureName: null == featureName
          ? _value.featureName
          : featureName // ignore: cast_nullable_to_non_nullable
              as String,
      recordId: null == recordId
          ? _value.recordId
          : recordId // ignore: cast_nullable_to_non_nullable
              as String,
      operation: null == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as SyncOperation,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SyncStatus,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      syncedAt: freezed == syncedAt
          ? _value.syncedAt
          : syncedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SyncRecordImplCopyWith<$Res>
    implements $SyncRecordCopyWith<$Res> {
  factory _$$SyncRecordImplCopyWith(
          _$SyncRecordImpl value, $Res Function(_$SyncRecordImpl) then) =
      __$$SyncRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String featureName,
      String recordId,
      SyncOperation operation,
      SyncStatus status,
      Map<String, dynamic> payload,
      DateTime createdAt,
      DateTime? syncedAt,
      String? errorMessage});
}

/// @nodoc
class __$$SyncRecordImplCopyWithImpl<$Res>
    extends _$SyncRecordCopyWithImpl<$Res, _$SyncRecordImpl>
    implements _$$SyncRecordImplCopyWith<$Res> {
  __$$SyncRecordImplCopyWithImpl(
      _$SyncRecordImpl _value, $Res Function(_$SyncRecordImpl) _then)
      : super(_value, _then);

  /// Create a copy of SyncRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? featureName = null,
    Object? recordId = null,
    Object? operation = null,
    Object? status = null,
    Object? payload = null,
    Object? createdAt = null,
    Object? syncedAt = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$SyncRecordImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      featureName: null == featureName
          ? _value.featureName
          : featureName // ignore: cast_nullable_to_non_nullable
              as String,
      recordId: null == recordId
          ? _value.recordId
          : recordId // ignore: cast_nullable_to_non_nullable
              as String,
      operation: null == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as SyncOperation,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SyncStatus,
      payload: null == payload
          ? _value._payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      syncedAt: freezed == syncedAt
          ? _value.syncedAt
          : syncedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SyncRecordImpl implements _SyncRecord {
  const _$SyncRecordImpl(
      {required this.id,
      required this.featureName,
      required this.recordId,
      required this.operation,
      required this.status,
      required final Map<String, dynamic> payload,
      required this.createdAt,
      this.syncedAt,
      this.errorMessage})
      : _payload = payload;

  @override
  final String id;
  @override
  final String featureName;
  @override
  final String recordId;
  @override
  final SyncOperation operation;
  @override
  final SyncStatus status;
  final Map<String, dynamic> _payload;
  @override
  Map<String, dynamic> get payload {
    if (_payload is EqualUnmodifiableMapView) return _payload;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_payload);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime? syncedAt;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'SyncRecord(id: $id, featureName: $featureName, recordId: $recordId, operation: $operation, status: $status, payload: $payload, createdAt: $createdAt, syncedAt: $syncedAt, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SyncRecordImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.featureName, featureName) ||
                other.featureName == featureName) &&
            (identical(other.recordId, recordId) ||
                other.recordId == recordId) &&
            (identical(other.operation, operation) ||
                other.operation == operation) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._payload, _payload) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.syncedAt, syncedAt) ||
                other.syncedAt == syncedAt) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      featureName,
      recordId,
      operation,
      status,
      const DeepCollectionEquality().hash(_payload),
      createdAt,
      syncedAt,
      errorMessage);

  /// Create a copy of SyncRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SyncRecordImplCopyWith<_$SyncRecordImpl> get copyWith =>
      __$$SyncRecordImplCopyWithImpl<_$SyncRecordImpl>(this, _$identity);
}

abstract class _SyncRecord implements SyncRecord {
  const factory _SyncRecord(
      {required final String id,
      required final String featureName,
      required final String recordId,
      required final SyncOperation operation,
      required final SyncStatus status,
      required final Map<String, dynamic> payload,
      required final DateTime createdAt,
      final DateTime? syncedAt,
      final String? errorMessage}) = _$SyncRecordImpl;

  @override
  String get id;
  @override
  String get featureName;
  @override
  String get recordId;
  @override
  SyncOperation get operation;
  @override
  SyncStatus get status;
  @override
  Map<String, dynamic> get payload;
  @override
  DateTime get createdAt;
  @override
  DateTime? get syncedAt;
  @override
  String? get errorMessage;

  /// Create a copy of SyncRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SyncRecordImplCopyWith<_$SyncRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
