import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_go_mobile/domain/oauth_credential.dart';
import 'package:github_go_mobile/hooks/domain/encounter/use_create_encounter_mutation.dart';
import 'package:github_go_mobile/hooks/domain/useAuthUser.dart';
import 'package:github_go_mobile/hooks/helper/use_mutation.dart';
import 'package:github_go_mobile/hooks/helper/use_web_view.dart';
import 'package:github_go_mobile/utils/get_view_view_url.dart';
import 'package:github_go_mobile/repositories/auth_repository.dart';
import 'package:github_go_mobile/styles/theme.dart';
import 'package:github_go_mobile/widgets/web_view_stack.dart';

const String encounteredUserId = "uid002";

class WebViewPage extends HookWidget {
  const WebViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mutation = useCreateEncounterMutation();
    final webview = useWebView(
        url: getWebViewUrl(), enableJavascript: true, javascriptChannels: []);

    // NOTE: BEにすれ違ったユーザーのIDを送る。userIdは関数の内部でlocalStorageから取得している。
    // useEffect(() {
    //   mutation.mutate(
    //       params: encounteredUserId,
    //       option: MutationOption(
    //           onSuccess: (result) => print(result),
    //           onError: (result) => print(result)));
    // }, []);

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
