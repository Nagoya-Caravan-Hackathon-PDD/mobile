// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'output_create_encounter_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OutputCreateEncounterResponse extends OutputCreateEncounterResponse {
  @override
  final String? encounterId;

  factory _$OutputCreateEncounterResponse(
          [void Function(OutputCreateEncounterResponseBuilder)? updates]) =>
      (new OutputCreateEncounterResponseBuilder()..update(updates))._build();

  _$OutputCreateEncounterResponse._({this.encounterId}) : super._();

  @override
  OutputCreateEncounterResponse rebuild(
          void Function(OutputCreateEncounterResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OutputCreateEncounterResponseBuilder toBuilder() =>
      new OutputCreateEncounterResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OutputCreateEncounterResponse &&
        encounterId == other.encounterId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, encounterId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OutputCreateEncounterResponse')
          ..add('encounterId', encounterId))
        .toString();
  }
}

class OutputCreateEncounterResponseBuilder
    implements
        Builder<OutputCreateEncounterResponse,
            OutputCreateEncounterResponseBuilder> {
  _$OutputCreateEncounterResponse? _$v;

  String? _encounterId;
  String? get encounterId => _$this._encounterId;
  set encounterId(String? encounterId) => _$this._encounterId = encounterId;

  OutputCreateEncounterResponseBuilder() {
    OutputCreateEncounterResponse._defaults(this);
  }

  OutputCreateEncounterResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _encounterId = $v.encounterId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OutputCreateEncounterResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OutputCreateEncounterResponse;
  }

  @override
  void update(void Function(OutputCreateEncounterResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OutputCreateEncounterResponse build() => _build();

  _$OutputCreateEncounterResponse _build() {
    final _$result =
        _$v ?? new _$OutputCreateEncounterResponse._(encounterId: encounterId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
