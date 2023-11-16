import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_go_mobile/firebase_options_prod.dart';
import 'package:github_go_mobile/libs/firebase.dart';
import 'package:github_go_mobile/pages/start_page.dart';
import 'package:github_go_mobile/pages/web_view_page.dart';
import 'package:github_go_mobile/repositories/user_repository.dart';
import 'package:github_go_mobile/routes/router.dart';
import 'package:github_go_mobile/styles/theme.dart';

void main() async {
  initFirebase();
  await dotenv.load(fileName: '.env');
  runApp(MyApp());
}

class MyApp extends HookWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'Github Monster',
        theme: ThemeData(
          colorSchemeSeed: Colors.green,
          useMaterial3: true,
          brightness: Brightness.light,
        ),
        darkTheme: ThemeData(
          colorSchemeSeed: Colors.green,
          useMaterial3: true,
          brightness: Brightness.dark,
        ),
        debugShowCheckedModeBanner: false,
        routerConfig: goRouter);
    // home: const WebViewPage());
    // home: const StartPage());
  }
}
