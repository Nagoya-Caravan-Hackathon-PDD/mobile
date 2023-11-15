// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_create_user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InputCreateUser extends InputCreateUser {
  @override
  final String? githubId;

  factory _$InputCreateUser([void Function(InputCreateUserBuilder)? updates]) =>
      (new InputCreateUserBuilder()..update(updates))._build();

  _$InputCreateUser._({this.githubId}) : super._();

  @override
  InputCreateUser rebuild(void Function(InputCreateUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InputCreateUserBuilder toBuilder() =>
      new InputCreateUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InputCreateUser && githubId == other.githubId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, githubId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InputCreateUser')
          ..add('githubId', githubId))
        .toString();
  }
}

class InputCreateUserBuilder
    implements Builder<InputCreateUser, InputCreateUserBuilder> {
  _$InputCreateUser? _$v;

  String? _githubId;
  String? get githubId => _$this._githubId;
  set githubId(String? githubId) => _$this._githubId = githubId;

  InputCreateUserBuilder() {
    InputCreateUser._defaults(this);
  }

  InputCreateUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _githubId = $v.githubId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InputCreateUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InputCreateUser;
  }

  @override
  void update(void Function(InputCreateUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InputCreateUser build() => _build();

  _$InputCreateUser _build() {
    final _$result = _$v ?? new _$InputCreateUser._(githubId: githubId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
