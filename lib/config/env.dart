import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  static String githubClientId = dotenv.get('GITHUB_CLIENT_ID');
  static String authRedirectUrl = dotenv.get('AUTH_REDIRECT_URL');
  static String callbackScheme = dotenv.get('CALLBACK_SCHEME');
}
