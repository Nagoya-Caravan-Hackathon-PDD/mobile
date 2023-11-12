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

WebView useWebView(
  String url,
) {
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
    return () {};
  }, const []);

  return WebView(
    controller: controller,
    loadingPercentage: loadingPercentage.value,
  );
}
