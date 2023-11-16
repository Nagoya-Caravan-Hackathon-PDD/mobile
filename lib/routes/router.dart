import 'package:flutter/material.dart';
import 'package:github_go_mobile/pages/start_page.dart';
import 'package:github_go_mobile/pages/web_view_page.dart';
import 'package:github_go_mobile/repositories/user_repository.dart';
import 'package:github_go_mobile/routes/page_routes.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

final goRouter = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: PageRoutes.start,
    routes: [
      GoRoute(
        path: PageRoutes.start,
        pageBuilder: (context, state) => const MaterialPage(child: StartPage()),
      ),
      GoRoute(
        path: PageRoutes.webView,
        pageBuilder: (context, state) =>
            const MaterialPage(child: WebViewPage()),
      ),
    ],
    redirect: (BuildContext context, GoRouterState state) async {
      final path = state.fullPath;
      final userRepo = UserRepository();
      final user = await userRepo.get();

      if (path == PageRoutes.start) {
        return null;
      }

      if (user == null) {
        return PageRoutes.start;
      }

      return null;
    });
