// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'output_read_user_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OutputReadUserResponse extends OutputReadUserResponse {
  @override
  final String? githubId;
  @override
  final String? userId;

  factory _$OutputReadUserResponse(
          [void Function(OutputReadUserResponseBuilder)? updates]) =>
      (new OutputReadUserResponseBuilder()..update(updates))._build();

  _$OutputReadUserResponse._({this.githubId, this.userId}) : super._();

  @override
  OutputReadUserResponse rebuild(
          void Function(OutputReadUserResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OutputReadUserResponseBuilder toBuilder() =>
      new OutputReadUserResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OutputReadUserResponse &&
        githubId == other.githubId &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, githubId.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OutputReadUserResponse')
          ..add('githubId', githubId)
          ..add('userId', userId))
        .toString();
  }
}

class OutputReadUserResponseBuilder
    implements Builder<OutputReadUserResponse, OutputReadUserResponseBuilder> {
  _$OutputReadUserResponse? _$v;

  String? _githubId;
  String? get githubId => _$this._githubId;
  set githubId(String? githubId) => _$this._githubId = githubId;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  OutputReadUserResponseBuilder() {
    OutputReadUserResponse._defaults(this);
  }

  OutputReadUserResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _githubId = $v.githubId;
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OutputReadUserResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OutputReadUserResponse;
  }

  @override
  void update(void Function(OutputReadUserResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OutputReadUserResponse build() => _build();

  _$OutputReadUserResponse _build() {
    final _$result = _$v ??
        new _$OutputReadUserResponse._(githubId: githubId, userId: userId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
