import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:github_go_mobile/firebase_options_prod.dart';
import 'package:github_go_mobile/libs/firebase.dart';
import 'package:github_go_mobile/pages/sign_in_page.dart';
import 'package:github_go_mobile/pages/web_view_page.dart';
import 'package:github_go_mobile/styles/theme.dart';

void main() async {
  initFirebase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        // home: const WebViewPage());
        home: const SignInPage());
  }
}
