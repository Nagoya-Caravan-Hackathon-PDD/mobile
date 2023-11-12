import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_go_mobile/hooks/helper/use_web_view.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewStack extends HookWidget {
  final String url;
  const WebViewStack({
    super.key,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    const maxLoadingPercentage = 100;

    final webview = useWebView(url);

    return Stack(
      children: [
        WebViewWidget(
          controller: webview.controller,
        ),
        if (webview.loadingPercentage < maxLoadingPercentage)
          LinearProgressIndicator(
              value: webview.loadingPercentage / maxLoadingPercentage),
      ],
    );
  }
}
