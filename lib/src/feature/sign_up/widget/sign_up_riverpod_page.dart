import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/widget/default_scaffold.dart';
import '../../../core/widget/snackbar.dart';
import '../../../core/widget/title.dart';
import '../../authentication/logic/authentication_provider.dart';
import '../../sign_in/bloc/validation_model.dart';

class SignUpRiverpodPage extends HookWidget {
  const SignUpRiverpodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();

    return DefaultScaffold(
      children: [
        const AppTitle(text: 'Sign up with riverpod'),
        const SizedBox(height: 20),
        Consumer(
          builder: (context, ref, child) {
            final emailError = ref.watch(
              validationProvider.select((value) => value.emailError),
            );
            return TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                errorText: emailError,
              ),
              onChanged: (emailValue) => ref
                  .read(validationProvider)
                  .updateEmail(emailController.text),
            );
          },
        ),
        Consumer(
          builder: (context, ref, child) {
            final passwordError = ref.watch(
              validationProvider.select((value) => value.passwordError),
            );

            return TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                errorText: passwordError,
              ),
              onChanged: (passwordValue) => ref
                  .read(validationProvider)
                  .updatePassword(
                      passwordController.text, confirmPasswordController.text),
            );
          },
        ),
        Consumer(
          builder: (context, ref, child) {
            final confirmPasswordError = ref.watch(
              validationProvider.select((value) => value.confirmPasswordError),
            );

            return TextField(
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
            );
          },
        ),
        const SizedBox(height: 20),
        Consumer(
          builder: (context, ref, child) {
            final authentication = ref.watch(authenticationProvider);

            ref.listen(
              authenticationProvider,
              ((previous, next) => next.mapOrNull(
                    error: (errorState) =>
                        showErrorSnackBar(context, errorState.message),
                  )),
            );

            return authentication.maybeWhen(
              orElse: () => Consumer(
                builder: (context, ref, child) {
                  final validationStatus = ref.watch(
                    validationProvider.select(
                      (value) => value.validateSignUp(
                        emailController.text,
                        passwordController.text,
                        confirmPasswordController.text,
                      ),
                    ),
                  );
                  return FilledButton(
                    onPressed: validationStatus
                        ? () => ref
                            .read(authenticationProvider.notifier)
                            .registerWithEmailAndPassword(
                              emailController.text,
                              passwordController.text,
                            )
                        : null,
                    child: const Text('Sign up'),
                  );
                },
              ),
              progress: () => const SizedBox(
                height: 50,
                child: LinearProgressIndicator(),
              ),
            );
          },
        ),
      ],
    );
  }
}
