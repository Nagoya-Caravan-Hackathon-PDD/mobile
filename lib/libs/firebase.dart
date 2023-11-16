import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:github_go_mobile/firebase_options_prod.dart';

Future<void> initFirebase() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
