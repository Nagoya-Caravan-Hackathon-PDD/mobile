// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_create_encounter_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InputCreateEncounterRequest extends InputCreateEncounterRequest {
  @override
  final String? encountedUserId;
  @override
  final String? userId;

  factory _$InputCreateEncounterRequest(
          [void Function(InputCreateEncounterRequestBuilder)? updates]) =>
      (new InputCreateEncounterRequestBuilder()..update(updates))._build();

  _$InputCreateEncounterRequest._({this.encountedUserId, this.userId})
      : super._();

  @override
  InputCreateEncounterRequest rebuild(
          void Function(InputCreateEncounterRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InputCreateEncounterRequestBuilder toBuilder() =>
      new InputCreateEncounterRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InputCreateEncounterRequest &&
        encountedUserId == other.encountedUserId &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, encountedUserId.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InputCreateEncounterRequest')
          ..add('encountedUserId', encountedUserId)
          ..add('userId', userId))
        .toString();
  }
}

class InputCreateEncounterRequestBuilder
    implements
        Builder<InputCreateEncounterRequest,
            InputCreateEncounterRequestBuilder> {
  _$InputCreateEncounterRequest? _$v;

  String? _encountedUserId;
  String? get encountedUserId => _$this._encountedUserId;
  set encountedUserId(String? encountedUserId) =>
      _$this._encountedUserId = encountedUserId;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  InputCreateEncounterRequestBuilder() {
    InputCreateEncounterRequest._defaults(this);
  }

  InputCreateEncounterRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _encountedUserId = $v.encountedUserId;
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InputCreateEncounterRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InputCreateEncounterRequest;
  }

  @override
  void update(void Function(InputCreateEncounterRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InputCreateEncounterRequest build() => _build();

  _$InputCreateEncounterRequest _build() {
    final _$result = _$v ??
        new _$InputCreateEncounterRequest._(
            encountedUserId: encountedUserId, userId: userId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
