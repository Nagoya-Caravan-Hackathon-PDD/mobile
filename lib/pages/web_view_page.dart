import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_go_mobile/domain/oauth_credential.dart';
import 'package:github_go_mobile/hooks/domain/use_create_encounter_mutation.dart';
import 'package:github_go_mobile/hooks/helper/use_mutation.dart';
import 'package:github_go_mobile/hooks/helper/use_web_view.dart';
import 'package:github_go_mobile/libs/get_view_view_url.dart';
import 'package:github_go_mobile/repositories/auth_repository.dart';
import 'package:github_go_mobile/styles/theme.dart';
import 'package:github_go_mobile/widgets/web_view_stack.dart';

class WebViewPage extends HookWidget {
  const WebViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mutation = useCreateEncounterMutation();
    const String encounteredUserId = "uid002";
    final authRepository = AuthRepository();

    // NOTE: BEにすれ違ったユーザーのIDを送る。userIdは関数の内部でlocalStorageから取得している。
    // useEffect(() {
    //   mutation.mutate(
    //       params: encounteredUserId,
    //       option: MutationOption(
    //           onSuccess: (result) => print(result),
    //           onError: (result) => print(result)));
    // }, []);

    // HACK: 意図しないJSONパラメーターが来るとアプリが落ちる
    OAuthCredential parseCredential(message) {
      Map<String, dynamic> json = jsonDecode(message);
      try {
        return OAuthCredential.fromJson(json);
      } catch (e) {
        throw Exception('Failed to parse credential');
      }
    }

    final javascriptChannel = JavaScriptChannel(
      name: 'webViewChannel',
      onMessage: (message) async {
        final credential = parseCredential(message);
        // NOTE: localStorageに保存する
        authRepository.saveCredential(credential);
      },
    );

    final webview = useWebView(
        url: getWebViewUrl(),
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
