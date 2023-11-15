// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'output_delete_user_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OutputDeleteUserResponse extends OutputDeleteUserResponse {
  @override
  final String? message;

  factory _$OutputDeleteUserResponse(
          [void Function(OutputDeleteUserResponseBuilder)? updates]) =>
      (new OutputDeleteUserResponseBuilder()..update(updates))._build();

  _$OutputDeleteUserResponse._({this.message}) : super._();

  @override
  OutputDeleteUserResponse rebuild(
          void Function(OutputDeleteUserResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OutputDeleteUserResponseBuilder toBuilder() =>
      new OutputDeleteUserResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OutputDeleteUserResponse && message == other.message;
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
    return (newBuiltValueToStringHelper(r'OutputDeleteUserResponse')
          ..add('message', message))
        .toString();
  }
}

class OutputDeleteUserResponseBuilder
    implements
        Builder<OutputDeleteUserResponse, OutputDeleteUserResponseBuilder> {
  _$OutputDeleteUserResponse? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  OutputDeleteUserResponseBuilder() {
    OutputDeleteUserResponse._defaults(this);
  }

  OutputDeleteUserResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OutputDeleteUserResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OutputDeleteUserResponse;
  }

  @override
  void update(void Function(OutputDeleteUserResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OutputDeleteUserResponse build() => _build();

  _$OutputDeleteUserResponse _build() {
    final _$result = _$v ?? new _$OutputDeleteUserResponse._(message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
