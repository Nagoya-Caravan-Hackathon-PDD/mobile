import 'dart:convert';

class AuthUser {
  final String uid;
  final String token;
  final String? userName;
  final String? userIcon;

  AuthUser({
    required this.uid,
    required this.token,
    required this.userName,
    required this.userIcon,
  });

  String toJson() {
    return jsonEncode({
      'uid': uid,
      'token': token,
      'userName': userName,
      'userIcon': userIcon,
    });
  }

  factory AuthUser.fromJson(Map<String, dynamic> json) {
    return AuthUser(
      uid: json['uid'],
      token: json['token'],
      userName: json['userName'],
      userIcon: json['userIcon'],
    );
  }
}
