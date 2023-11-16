import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_go_mobile/styles/theme.dart';
import 'package:github_go_mobile/widgets/common/vertical_space.dart';

class SignInPage extends HookWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    Future<UserCredential?> signInWithGitHub() async {
      // Create a new provider
      GithubAuthProvider githubProvider = GithubAuthProvider();

      try {
        final UserCredential userCredential =
            await FirebaseAuth.instance.signInWithPopup(githubProvider);
        print(userCredential);
        return userCredential;
      } catch (e) {
        print(e);
        return null;
      }
    }

    return Scaffold(
        backgroundColor: ThemeColor.primary,
        appBar: AppBar(
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.brightness_6,
                ),
                onPressed: () {},
              ),
            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(1),
              child: Divider(height: 1, color: Colors.grey[700]),
            ),
            backgroundColor: ThemeColor.primary),
        // backgroundColor: Colors.grey[900],
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Center(
            child: Column(
              children: <Widget>[
                const VerticalSpace(24),
                const Text(
                  "Github Go",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                const VerticalSpace(24),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.grey[850],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.account_circle,
                        size: 200,
                        color: Colors.grey[700],
                      ),
                      const VerticalSpace(16),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: ThemeColor.secondary,
                            onPrimary: theme.colorScheme.onPrimary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed: signInWithGitHub,
                          child: const Text('GitHubでサインイン',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
