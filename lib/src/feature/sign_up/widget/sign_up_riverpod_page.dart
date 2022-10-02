import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/widget/default_scaffold.dart';
import '../../../core/widget/snackbar.dart';
import '../../../core/widget/title.dart';
import '../../authentication/logic/authentication_provider.dart';
import '../../sign_in/bloc/validation_model.dart';

class SignUpRiverpodPage extends HookConsumerWidget {
  const SignUpRiverpodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();

    final emailError = ref.watch(
      validationProvider.select((value) => value.emailError),
    );

    final passwordError = ref.watch(
      validationProvider.select((value) => value.passwordError),
    );

    final confirmPasswordError = ref.watch(
      validationProvider.select((value) => value.confirmPasswordError),
    );

    final validationStatus = ref.watch(
      validationProvider.select(
        (value) => value.validateSignUp(
          emailController.text,
          passwordController.text,
          confirmPasswordController.text,
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
        const AppTitle(text: 'Sign up with riverpod'),
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
              .updatePassword(
                  passwordController.text, confirmPasswordController.text),
        ),
        TextField(
          controller: confirmPasswordController,
          decoration: InputDecoration(
            labelText: 'Confirm password',
            errorText: confirmPasswordError,
          ),
          onChanged: (confirmPasswordValue) =>
              ref.read(validationProvider).updateConfirmPassword(
                    confirmPasswordController.text,
                    passwordController.text,
                  ),
        ),
        const SizedBox(height: 20),
        authentication.maybeWhen(
          orElse: () => FilledButton(
            onPressed: validationStatus
                ? () => ref
                    .read(authenticationProvider.notifier)
                    .registerWithEmailAndPassword(
                      emailController.text,
                      passwordController.text,
                    )
                : null,
            child: const Text('Sign up'),
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
