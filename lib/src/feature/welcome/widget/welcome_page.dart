import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobidatok_test/src/core/routes.dart';
import 'package:mobidatok_test/src/core/widget/title.dart';

import '../../../core/widget/default_scaffold.dart';

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
            routeExample,
            params: {exampleName: routeSignInBloc},
          ),
          child: const Text('Sign in with bloc'),
        ),
        const SizedBox(height: 20),
        OutlinedButton(
          onPressed: () => context.pushNamed(
            routeExample,
            params: {exampleName: routeSignUpBloc},
          ),
          child: const Text('Sign up with bloc'),
        ),
        const Divider(),
        OutlinedButton(
          onPressed: () {},
          child: const Text('Sign in with provider'),
        ),
        const SizedBox(height: 20),
        OutlinedButton(
          onPressed: () {},
          child: const Text('Sign up with provider'),
        ),
        const Divider(),
        OutlinedButton(
          onPressed: () {},
          child: const Text('Sign in with riverpod'),
        ),
        const SizedBox(height: 20),
        OutlinedButton(
          onPressed: () {},
          child: const Text('Sign up with riverpod'),
        ),
      ],
    );
  }
}
