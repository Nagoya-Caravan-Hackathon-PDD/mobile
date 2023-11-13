import 'dart:convert';

class OAuthCredential {
  final String accessToken;
  final String userId;

  OAuthCredential({
    required this.accessToken,
    required this.userId,
  });

  factory OAuthCredential.fromJson(Map<String, dynamic> json) {
    return OAuthCredential(
      accessToken: json['accessToken'],
      userId: json['userId'],
    );
  }

  String toJson() {
    return jsonEncode({
      'accessToken': accessToken,
      'userId': userId,
    });
  }
}
