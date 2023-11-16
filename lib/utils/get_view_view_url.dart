import 'dart:io';

// TODO: このURLは環境変数から取得するようにする
String getWebViewUrl() {
  if (Platform.isAndroid) {
    return 'http://10.0.2.2:3000';
  } else if (Platform.isIOS) {
    return 'http://localhost:3000';
  } else {
    throw Exception('Platform is not supported');
  }
}
