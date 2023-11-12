import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_go_mobile/hooks/use_web_view.dart';
import 'package:github_go_mobile/styles/theme.dart';
import 'package:github_go_mobile/widgets/web_view_stack.dart';

class WebViewPage extends HookWidget {
  const WebViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: 環境変数に置き換えたい
    const webViewUrl = 'https://flutter.dev';
    final webview = useWebView(webViewUrl);

    return Scaffold(
        body: Container(
      color: ThemeColor.primary,
      child: SafeArea(
        child: WebViewStack(
          controller: webview.controller,
          loadingPercentage: webview.loadingPercentage,
        ),
      ),
    ));
  }
}
