import 'package:flutter/material.dart';
import 'package:github_go_mobile/pages/web_view_page.dart';
import 'package:github_go_mobile/styles/theme.dart';

void main() {
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
        colorScheme: ColorScheme.fromSeed(seedColor: ThemeColor.secondary),
        useMaterial3: true,
      ),
      home: const WebViewPage(),
    );
  }
}
