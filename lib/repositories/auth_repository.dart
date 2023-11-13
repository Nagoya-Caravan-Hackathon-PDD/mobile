import 'dart:convert';

import 'package:github_go_mobile/constants/local_storage_keys.dart';
import 'package:github_go_mobile/domain/oauth_credential.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository {
  final _storageKey = oauthCredentialKey;

  void saveCredential(OAuthCredential credential) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    final json = credential.toJson();
    await preferences.setString(_storageKey, json);
  }

  Future<OAuthCredential?> getCredential() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    final jsonString = preferences.getString(_storageKey);
    if (jsonString == null) {
      return null;
    }
    return OAuthCredential.fromJson(jsonDecode(jsonString));
  }
}
