import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/widget/default_scaffold.dart';
import '../../../core/widget/snackbar.dart';
import '../../../core/widget/title.dart';
import '../../authentication/logic/authentication_provider.dart';
import '../bloc/validation_model.dart';

class SignInRiverpodPage extends HookConsumerWidget {
  const SignInRiverpodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    final emailError = ref.watch(
      validationProvider.select((value) => value.emailError),
    );
    final passwordError = ref.watch(
      validationProvider.select((value) => value.passwordError),
    );

    final validationStatus = ref.watch(
      validationProvider.select(
        (value) => value.validateSignIn(
          emailController.text,
          passwordController.text,
        ),
      ),
    );

    final authentication = ref.watch(authenticationProvider);

    ref.listen(
      authenticationProvider,
      ((previous, next) => next.mapOrNull(
            error: (errorState) =>
                showErrorSnackBar(context, errorState.message),
          )),
    );

    return DefaultScaffold(
      children: [
        const AppTitle(text: 'Sign in with riverpod'),
        const SizedBox(height: 20),
        TextField(
          controller: emailController,
          decoration: InputDecoration(
            labelText: 'Email',
            errorText: emailError,
          ),
          onChanged: (emailValue) =>
              ref.read(validationProvider).updateEmail(emailController.text),
        ),
        TextField(
          controller: passwordController,
          decoration: InputDecoration(
            labelText: 'Password',
            errorText: passwordError,
          ),
          onChanged: (passwordValue) => ref
              .read(validationProvider)
              .updatePassword(passwordController.text, null),
        ),
        const SizedBox(height: 20),
        authentication.maybeWhen(
          orElse: () => FilledButton(
            onPressed: validationStatus
                ? () => ref
                    .read(authenticationProvider.notifier)
                    .signInWithEmailAndPassword(
                      emailController.text,
                      passwordController.text,
                    )
                : null,
            child: const Text('Sign in'),
          ),
          progress: () => const SizedBox(
            height: 50,
            child: LinearProgressIndicator(),
          ),
        ),
      ],
    );
  }
}
