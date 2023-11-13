import 'package:flutter_hooks/flutter_hooks.dart';
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

  useEffect(() {
    controller.setNavigationDelegate(NavigationDelegate(
      onPageStarted: (url) {
        loadingPercentage.value = minLoadingPercentage;
      },
      onProgress: (progress) {
        loadingPercentage.value = progress;
      },
      onPageFinished: (url) {
        loadingPercentage.value = maxLoadingPercentage;
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
