import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_go_mobile/domain/oauth_credential.dart';
import 'package:github_go_mobile/hooks/use_web_view.dart';
import 'package:github_go_mobile/styles/theme.dart';
import 'package:github_go_mobile/widgets/web_view_stack.dart';

class WebViewPage extends HookWidget {
  const WebViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: 環境変数に置き換えたい

    // HACK: 意図しないJSONパラメーターが来るとアプリが落ちる
    OAuthCredential parseCredential(message) {
      Map<String, dynamic> json = jsonDecode(message);
      try {
        return OAuthCredential.fromJson(json);
      } catch (e) {
        throw Exception('Failed to parse credential');
      }
    }

    const webViewUrl = 'http://localhost:3000';
    final javascriptChannel = JavaScriptChannel(
      name: 'webViewChannel',
      onMessage: (message) {
        final credential = parseCredential(message);
      },
    );

    final webview = useWebView(
        url: webViewUrl,
        enableJavascript: true,
        javascriptChannels: [javascriptChannel]);

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
