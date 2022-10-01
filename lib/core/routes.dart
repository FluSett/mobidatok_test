import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../feature/home/widget/home_page.dart';
import '../feature/not_found/widget/not_found_page.dart';
import '../feature/welcome/widget/welcome_page.dart';

const String routeInitial = '/';
const String routeWelcome = '/welcome';

final router = GoRouter(
  routes: [
    GoRoute(
      path: routeInitial,
      pageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: const HomePage(),
      ),
    ),
    GoRoute(
      path: routeWelcome,
      pageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: const WelcomePage(),
      ),
    ),
  ],
  errorPageBuilder: (context, state) => MaterialPage(
    key: state.pageKey,
    child: const NotFoundPage(),
  ),
);
