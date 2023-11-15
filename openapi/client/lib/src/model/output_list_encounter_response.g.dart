// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'output_list_encounter_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OutputListEncounterResponse extends OutputListEncounterResponse {
  @override
  final String? createdAt;
  @override
  final String? encounterId;
  @override
  final String? encoutedUserId;
  @override
  final String? userId;

  factory _$OutputListEncounterResponse(
          [void Function(OutputListEncounterResponseBuilder)? updates]) =>
      (new OutputListEncounterResponseBuilder()..update(updates))._build();

  _$OutputListEncounterResponse._(
      {this.createdAt, this.encounterId, this.encoutedUserId, this.userId})
      : super._();

  @override
  OutputListEncounterResponse rebuild(
          void Function(OutputListEncounterResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OutputListEncounterResponseBuilder toBuilder() =>
      new OutputListEncounterResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OutputListEncounterResponse &&
        createdAt == other.createdAt &&
        encounterId == other.encounterId &&
        encoutedUserId == other.encoutedUserId &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, encounterId.hashCode);
    _$hash = $jc(_$hash, encoutedUserId.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OutputListEncounterResponse')
          ..add('createdAt', createdAt)
          ..add('encounterId', encounterId)
          ..add('encoutedUserId', encoutedUserId)
          ..add('userId', userId))
        .toString();
  }
}

class OutputListEncounterResponseBuilder
    implements
        Builder<OutputListEncounterResponse,
            OutputListEncounterResponseBuilder> {
  _$OutputListEncounterResponse? _$v;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _encounterId;
  String? get encounterId => _$this._encounterId;
  set encounterId(String? encounterId) => _$this._encounterId = encounterId;

  String? _encoutedUserId;
  String? get encoutedUserId => _$this._encoutedUserId;
  set encoutedUserId(String? encoutedUserId) =>
      _$this._encoutedUserId = encoutedUserId;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  OutputListEncounterResponseBuilder() {
    OutputListEncounterResponse._defaults(this);
  }

  OutputListEncounterResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdAt = $v.createdAt;
      _encounterId = $v.encounterId;
      _encoutedUserId = $v.encoutedUserId;
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OutputListEncounterResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OutputListEncounterResponse;
  }

  @override
  void update(void Function(OutputListEncounterResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OutputListEncounterResponse build() => _build();

  _$OutputListEncounterResponse _build() {
    final _$result = _$v ??
        new _$OutputListEncounterResponse._(
            createdAt: createdAt,
            encounterId: encounterId,
            encoutedUserId: encoutedUserId,
            userId: userId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
