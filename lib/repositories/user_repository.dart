import 'dart:convert';

import 'package:github_go_mobile/constants/local_storage_keys.dart';
import 'package:github_go_mobile/domain/auth_user.dart';
import 'package:github_go_mobile/domain/oauth_credential.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserRepository {
  final _storageKey = authUserKey;

  void save(AuthUser user) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    final json = user.toJson();
    await preferences.setString(_storageKey, json);
  }

  Future<AuthUser?> get() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    final jsonString = preferences.getString(_storageKey);
    if (jsonString == null) {
      return null;
    }
    return AuthUser.fromJson(jsonDecode(jsonString));
  }

  void delete() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.remove(_storageKey);
  }
}
