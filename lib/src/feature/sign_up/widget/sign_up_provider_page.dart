import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';

import '../../../core/widget/default_scaffold.dart';
import '../../../core/widget/snackbar.dart';
import '../../../core/widget/title.dart';
import '../../authentication/logic/authentication_provider.dart';
import '../../sign_in/bloc/validation_model.dart';

class SignUpProviderPage extends HookWidget {
  const SignUpProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.watch<AuthenticationProvider>().addListener((state) {
      state.mapOrNull(
        error: (errorState) => showErrorSnackBar(context, errorState.message),
      );
    });

    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();

    return DefaultScaffold(
      children: [
        const AppTitle(text: 'Sign up with provider'),
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
              onChanged: (passwordValue) =>
                  context.read<ValidationModel>().updatePassword(
                        passwordValue,
                        confirmPasswordController.text,
                      ),
            );
          },
        ),
        Selector<ValidationModel, String?>(
          selector: (context, validationProvider) =>
              validationProvider.confirmPasswordError,
          builder: (_, confirmPasswordError, __) {
            return TextField(
              controller: confirmPasswordController,
              decoration: InputDecoration(
                labelText: 'Confirm password',
                errorText: confirmPasswordError,
              ),
              onChanged: (confirmPasswordValue) =>
                  context.read<ValidationModel>().updateConfirmPassword(
                        confirmPasswordController.text,
                        passwordController.text,
                      ),
            );
          },
        ),
        const SizedBox(height: 20),
        Consumer<ValidationModel>(
          builder: (context, validation, child) {
            return OutlinedButton(
              onPressed: validation.validateSignUp(
                emailController.text,
                passwordController.text,
                confirmPasswordController.text,
              )
                  ? () => context
                      .read<AuthenticationProvider>()
                      .registerWithEmailAndPassword(
                        emailController.text,
                        passwordController.text,
                      )
                  : null,
              child: const Text('Sign up'),
            );
          },
        ),
      ],
    );
  }
}
