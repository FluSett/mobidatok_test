import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/app_service.dart';
import '../../../core/routes.dart';
import '../../../core/service_locator.dart';
import '../../../core/widget/default_scaffold.dart';
import '../../../core/widget/title.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      children: [
        const AppTitle(text: 'Welcome'),
        const SizedBox(height: 20),
        OutlinedButton(
          onPressed: () => context.pushNamed(
            routeAuthExample,
            params: {exampleName: routeSignInBloc},
          ),
          child: const Text('Sign in with bloc'),
        ),
        const SizedBox(height: 20),
        OutlinedButton(
          onPressed: () => context.pushNamed(
            routeAuthExample,
            params: {exampleName: routeSignUpBloc},
          ),
          child: const Text('Sign up with bloc'),
        ),
        const Divider(),
        OutlinedButton(
          onPressed: () => context.pushNamed(
            routeAuthExample,
            params: {exampleName: routeSignInProvider},
          ),
          child: const Text('Sign in with provider'),
        ),
        const SizedBox(height: 20),
        OutlinedButton(
          onPressed: () => context.pushNamed(
            routeAuthExample,
            params: {exampleName: routeSignUpProvider},
          ),
          child: const Text('Sign up with provider'),
        ),
        const Divider(),
        OutlinedButton(
          onPressed: () => context.pushNamed(
            routeAuthExample,
            params: {exampleName: routeSignInRiverpod},
          ),
          child: const Text('Sign in with riverpod'),
        ),
        const SizedBox(height: 20),
        OutlinedButton(
          onPressed: () => context.pushNamed(
            routeAuthExample,
            params: {exampleName: routeSignUpRiverpod},
          ),
          child: const Text('Sign up with riverpod'),
        ),
        const SizedBox(height: 40),
        TextButton(
          onPressed: () => getIt<AppService>().authState = true,
          child: const Text('Auto auth'),
        ),
      ],
    );
  }
}
