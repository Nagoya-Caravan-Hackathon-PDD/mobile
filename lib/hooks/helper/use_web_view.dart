import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_go_mobile/repositories/user_repository.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebView {
  final WebViewController controller;
  final int loadingPercentage;

  WebView({
    required this.controller,
    required this.loadingPercentage,
  });
}

class JavaScriptChannel {
  final String name;
  final void Function(String) onMessage;

  JavaScriptChannel({
    required this.name,
    required this.onMessage,
  });
}

WebView useWebView(
    {required String url,
    enableJavascript = false,
    List<JavaScriptChannel>? javascriptChannels}) {
  const minLoadingPercentage = 0;
  const maxLoadingPercentage = 100;

  final controller = useMemoized(() => WebViewController());
  final loadingPercentage = useState(0);
  final userRepo = UserRepository();

  Future<void> sendMessageToFront() async {
    final user = await userRepo.get();
    if (user == null) {
      return;
    }
    final json = user.toJson();
    controller.runJavaScript("receiveMessageFromFlutter('$json')");
  }

  useEffect(() {
    controller.setNavigationDelegate(NavigationDelegate(
      onPageStarted: (url) {
        loadingPercentage.value = minLoadingPercentage;
      },
      onProgress: (progress) {
        loadingPercentage.value = progress;
      },
      onPageFinished: (url) async {
        loadingPercentage.value = maxLoadingPercentage;
        // HACK: Reactがレンダリングされるまでwindowオブジェクトがないため、関数が呼べない。
        await Future.delayed(const Duration(seconds: 1));
        await sendMessageToFront();
      },
      onNavigationRequest: (request) {
        if (!request.url.startsWith(url)) {
          return NavigationDecision.prevent;
        }
        return NavigationDecision.navigate;
      },
    ));

    controller.loadRequest(
      Uri.parse(url),
    );

    if (enableJavascript) {
      controller.setJavaScriptMode(JavaScriptMode.unrestricted);
    }

    // NOTE: ChannelのnameがJSから呼び出される。
    // EX: window.channelName.postMessage('message');
    if (javascriptChannels != null) {
      for (final channel in javascriptChannels) {
        controller.addJavaScriptChannel(channel.name,
            onMessageReceived: (message) {
          channel.onMessage(message.message);
        });
      }
    }
    return () {};
  }, const []);

  return WebView(
    controller: controller,
    loadingPercentage: loadingPercentage.value,
  );
}
