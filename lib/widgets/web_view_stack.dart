import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_go_mobile/hooks/use_web_view.dart';
import 'package:webview_flutter/webview_flutter.dart';

const maxLoadingPercentage = 100;

class WebViewStack extends HookWidget {
  final WebViewController controller;
  final int loadingPercentage;
  const WebViewStack({
    super.key,
    required this.controller,
    required this.loadingPercentage,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WebViewWidget(
          controller: controller,
        ),
        if (loadingPercentage < maxLoadingPercentage)
          LinearProgressIndicator(
              value: loadingPercentage / maxLoadingPercentage),
      ],
    );
  }
}
