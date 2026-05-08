// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_weight_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BodyWeightEntry {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  double get weightKg => throw _privateConstructorUsedError;
  double get bmi => throw _privateConstructorUsedError;
  DateTime get recordedAt => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  /// Create a copy of BodyWeightEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BodyWeightEntryCopyWith<BodyWeightEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyWeightEntryCopyWith<$Res> {
  factory $BodyWeightEntryCopyWith(
          BodyWeightEntry value, $Res Function(BodyWeightEntry) then) =
      _$BodyWeightEntryCopyWithImpl<$Res, BodyWeightEntry>;
  @useResult
  $Res call(
      {String id,
      String userId,
      double weightKg,
      double bmi,
      DateTime recordedAt,
      String? note});
}

/// @nodoc
class _$BodyWeightEntryCopyWithImpl<$Res, $Val extends BodyWeightEntry>
    implements $BodyWeightEntryCopyWith<$Res> {
  _$BodyWeightEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BodyWeightEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? weightKg = null,
    Object? bmi = null,
    Object? recordedAt = null,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      weightKg: null == weightKg
          ? _value.weightKg
          : weightKg // ignore: cast_nullable_to_non_nullable
              as double,
      bmi: null == bmi
          ? _value.bmi
          : bmi // ignore: cast_nullable_to_non_nullable
              as double,
      recordedAt: null == recordedAt
          ? _value.recordedAt
          : recordedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BodyWeightEntryImplCopyWith<$Res>
    implements $BodyWeightEntryCopyWith<$Res> {
  factory _$$BodyWeightEntryImplCopyWith(_$BodyWeightEntryImpl value,
          $Res Function(_$BodyWeightEntryImpl) then) =
      __$$BodyWeightEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      double weightKg,
      double bmi,
      DateTime recordedAt,
      String? note});
}

/// @nodoc
class __$$BodyWeightEntryImplCopyWithImpl<$Res>
    extends _$BodyWeightEntryCopyWithImpl<$Res, _$BodyWeightEntryImpl>
    implements _$$BodyWeightEntryImplCopyWith<$Res> {
  __$$BodyWeightEntryImplCopyWithImpl(
      _$BodyWeightEntryImpl _value, $Res Function(_$BodyWeightEntryImpl) _then)
      : super(_value, _then);

  /// Create a copy of BodyWeightEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? weightKg = null,
    Object? bmi = null,
    Object? recordedAt = null,
    Object? note = freezed,
  }) {
    return _then(_$BodyWeightEntryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      weightKg: null == weightKg
          ? _value.weightKg
          : weightKg // ignore: cast_nullable_to_non_nullable
              as double,
      bmi: null == bmi
          ? _value.bmi
          : bmi // ignore: cast_nullable_to_non_nullable
              as double,
      recordedAt: null == recordedAt
          ? _value.recordedAt
          : recordedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BodyWeightEntryImpl implements _BodyWeightEntry {
  const _$BodyWeightEntryImpl(
      {required this.id,
      required this.userId,
      required this.weightKg,
      required this.bmi,
      required this.recordedAt,
      this.note});

  @override
  final String id;
  @override
  final String userId;
  @override
  final double weightKg;
  @override
  final double bmi;
  @override
  final DateTime recordedAt;
  @override
  final String? note;

  @override
  String toString() {
    return 'BodyWeightEntry(id: $id, userId: $userId, weightKg: $weightKg, bmi: $bmi, recordedAt: $recordedAt, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyWeightEntryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.weightKg, weightKg) ||
                other.weightKg == weightKg) &&
            (identical(other.bmi, bmi) || other.bmi == bmi) &&
            (identical(other.recordedAt, recordedAt) ||
                other.recordedAt == recordedAt) &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, weightKg, bmi, recordedAt, note);

  /// Create a copy of BodyWeightEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyWeightEntryImplCopyWith<_$BodyWeightEntryImpl> get copyWith =>
      __$$BodyWeightEntryImplCopyWithImpl<_$BodyWeightEntryImpl>(
          this, _$identity);
}

abstract class _BodyWeightEntry implements BodyWeightEntry {
  const factory _BodyWeightEntry(
      {required final String id,
      required final String userId,
      required final double weightKg,
      required final double bmi,
      required final DateTime recordedAt,
      final String? note}) = _$BodyWeightEntryImpl;

  @override
  String get id;
  @override
  String get userId;
  @override
  double get weightKg;
  @override
  double get bmi;
  @override
  DateTime get recordedAt;
  @override
  String? get note;

  /// Create a copy of BodyWeightEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BodyWeightEntryImplCopyWith<_$BodyWeightEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
