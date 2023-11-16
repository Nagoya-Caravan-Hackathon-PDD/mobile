import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:github_go_mobile/config/env.dart';
import 'package:github_go_mobile/constants/local_storage_keys.dart';
import 'package:github_go_mobile/domain/auth_user.dart';
import 'package:github_go_mobile/domain/oauth_credential.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository {
  final _clientId = Env.githubClientId;
  final _redirectUrl = Env.authRedirectUrl;
  final _callbackScheme = Env.callbackScheme;

  Future<AuthUser> signIn() async {
    GithubAuthProvider githubProvider = GithubAuthProvider();

    final credential =
        await FirebaseAuth.instance.signInWithProvider(githubProvider);

    final authUser = _convertAuthUser(credential);

    if (authUser == null) {
      throw Exception('Not found auth user');
    }

    return authUser;
  }

  AuthUser? _convertAuthUser(UserCredential credential) {
    final uid = credential.user?.uid;
    final token = credential.credential?.accessToken;
    if (uid == null || token == null) {
      return null;
    }
    final userName = credential.additionalUserInfo?.username;
    final userIcon = credential.additionalUserInfo?.profile?['avatar_url'];

    return AuthUser(
        uid: uid, token: token, userName: userName, userIcon: userIcon);
  }

  String _getAuthUrl() {
    return 'https://github.com/login/oauth/authorize'
        '?client_id=$_clientId'
        '&scope=read:user user:email'
        '&redirect_uri=$_redirectUrl';
  }

  String? _getCredentialCode(String authResult) {
    return Uri.parse(authResult).queryParameters['code']!;
  }
}
