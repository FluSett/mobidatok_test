import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';

import '../../../core/widget/default_scaffold.dart';
import '../../../core/widget/snackbar.dart';
import '../../../core/widget/title.dart';
import '../../authentication/logic/authentication_provider.dart';
import '../bloc/validation_model.dart';

class SignInProviderPage extends HookWidget {
  const SignInProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.watch<AuthenticationProvider>().addListener((state) {
      state.mapOrNull(
        error: (errorState) => showErrorSnackBar(context, errorState.message),
      );
    });

    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    return DefaultScaffold(
      children: [
        const AppTitle(text: 'Sign in with provider'),
        const SizedBox(height: 20),
        Selector<ValidationModel, String?>(
          selector: (context, validationProvider) =>
              validationProvider.emailError,
          builder: (_, emailError, __) {
            return TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                errorText: emailError,
              ),
              onChanged: (emailValue) =>
                  context.read<ValidationModel>().updateEmail(emailValue),
            );
          },
        ),
        Selector<ValidationModel, String?>(
          selector: (context, validationProvider) =>
              validationProvider.passwordError,
          builder: (_, passwordError, __) {
            return TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                errorText: passwordError,
              ),
              onChanged: (passwordValue) => context
                  .read<ValidationModel>()
                  .updatePassword(passwordValue, null),
            );
          },
        ),
        const SizedBox(height: 20),
        Consumer<ValidationModel>(
          builder: (context, validation, child) {
            return FilledButton(
              onPressed: validation.validateSignIn()
                  ? () => context
                      .read<AuthenticationProvider>()
                      .signInWithEmailAndPassword(
                        emailController.text,
                        passwordController.text,
                      )
                  : null,
              child: const Text('Sign in'),
            );
          },
        ),
      ],
    );
  }
}
