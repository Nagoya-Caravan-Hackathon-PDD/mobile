// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'output_create_user_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OutputCreateUserResponse extends OutputCreateUserResponse {
  @override
  final String? message;

  factory _$OutputCreateUserResponse(
          [void Function(OutputCreateUserResponseBuilder)? updates]) =>
      (new OutputCreateUserResponseBuilder()..update(updates))._build();

  _$OutputCreateUserResponse._({this.message}) : super._();

  @override
  OutputCreateUserResponse rebuild(
          void Function(OutputCreateUserResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OutputCreateUserResponseBuilder toBuilder() =>
      new OutputCreateUserResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OutputCreateUserResponse && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OutputCreateUserResponse')
          ..add('message', message))
        .toString();
  }
}

class OutputCreateUserResponseBuilder
    implements
        Builder<OutputCreateUserResponse, OutputCreateUserResponseBuilder> {
  _$OutputCreateUserResponse? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  OutputCreateUserResponseBuilder() {
    OutputCreateUserResponse._defaults(this);
  }

  OutputCreateUserResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OutputCreateUserResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OutputCreateUserResponse;
  }

  @override
  void update(void Function(OutputCreateUserResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OutputCreateUserResponse build() => _build();

  _$OutputCreateUserResponse _build() {
    final _$result = _$v ?? new _$OutputCreateUserResponse._(message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
