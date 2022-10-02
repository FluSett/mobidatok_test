import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../feature/home/widget/home_page.dart';
import '../feature/not_found/widget/not_found_page.dart';
import '../feature/sign_in/widget/sign_in_bloc_page.dart';
import '../feature/sign_in/widget/sign_in_provider_page.dart';
import '../feature/sign_in/widget/sign_in_riverpod_page.dart';
import '../feature/sign_up/widget/sign_up_bloc_page.dart';
import '../feature/sign_up/widget/sign_up_provider_page.dart';
import '../feature/sign_up/widget/sign_up_riverpod_page.dart';
import '../feature/welcome/widget/welcome_page.dart';
import 'app_service.dart';

const String routeInitial = '/';
const String routeWelcome = '/welcome';

//Welcome examplesW
const String exampleName = 'exampleName';
const String routeExample = 'example/:$exampleName';
const String routeSignInBloc = 'sign-in-bloc';
const String routeSignUpBloc = 'sign-up-bloc';
const String routeSignInProvider = 'sign-in-provider';
const String routeSignUpProvider = 'sign-up-provider';
const String routeSignInRiverpod = 'sign-in-riverpod';
const String routeSignUpRiverpod = 'sign-up-riverpod';

Widget getExamplePage(String? name) {
  switch (name) {
    case routeSignInBloc:
      return const SignInBlocPage();
    case routeSignUpBloc:
      return const SignUpBlocPage();
    case routeSignInProvider:
      return const SignInProviderPage();
    case routeSignUpProvider:
      return const SignUpProviderPage();
    case routeSignInRiverpod:
      return const SignInRiverpodPage();
    case routeSignUpRiverpod:
      return const SignUpRiverpodPage();
    default:
      return const NotFoundPage();
  }
}

class AppRouter {
  final AppService appService;

  GoRouter get router => _router;

  AppRouter(this.appService);

  late final _router = GoRouter(
    refreshListenable: appService,
    debugLogDiagnostics: debugDisableShadows,
    routes: <GoRoute>[
      GoRoute(
        path: routeInitial,
        name: routeInitial,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: routeWelcome,
        name: routeWelcome,
        builder: (context, state) => const WelcomePage(),
        routes: <GoRoute>[
          GoRoute(
            path: routeExample,
            name: routeExample,
            builder: (context, state) {
              final exampleName = state.params['exampleName'];

              return getExamplePage(exampleName);
            },
          ),
        ],
      ),
    ],
    errorPageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: const NotFoundPage(),
    ),
    redirect: (context, state) {
      final isSignedIn = appService.authState;

      return isSignedIn
          ? !state.location.contains(routeWelcome)
              ? null
              : routeInitial
          : state.location.contains(routeWelcome)
              ? null
              : !state.location.contains(routeWelcome)
                  ? routeWelcome
                  : null;
    },
  );
}
