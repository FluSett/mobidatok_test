import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/widget/default_scaffold.dart';
import '../../../core/widget/snackbar.dart';
import '../../../core/widget/title.dart';
import '../../authentication/logic/authentication_bloc.dart';
import '../../authentication/logic/authentication_state.dart';
import '../bloc/validation_cubit.dart';

class SignInBlocPage extends StatelessWidget {
  const SignInBlocPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      children: [
        const AppTitle(text: 'Sign in with bloc'),
        const SizedBox(height: 20),
        BlocBuilder<ValidationCubit, ValidationState>(
          buildWhen: (previous, current) =>
              previous.emailError != current.emailError,
          builder: (context, state) {
            return TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                errorText: state.emailError,
              ),
              onChanged: (emailValue) =>
                  context.read<ValidationCubit>().updateEmail(emailValue),
            );
          },
        ),
        BlocBuilder<ValidationCubit, ValidationState>(
          buildWhen: (previous, current) =>
              previous.passwordError != current.passwordError,
          builder: (context, state) {
            return TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                errorText: state.passwordError,
              ),
              onChanged: (passwordValue) =>
                  context.read<ValidationCubit>().updatePassword(passwordValue),
            );
          },
        ),
        const SizedBox(height: 20),
        BlocConsumer<AuthenticationBloc, AuthenticationState>(
          listener: (context, state) => state.mapOrNull(
            error: (errorState) => showErrorSnackBar(
              context,
              errorState.message,
            ),
          ),
          builder: (context, state) {
            return state.maybeMap(
              progress: (_) => const SizedBox(
                height: 50,
                child: LinearProgressIndicator(),
              ),
              orElse: () =>
                  BlocSelector<ValidationCubit, ValidationState, bool>(
                selector: (selectorState) => selectorState.validateSignIn(),
                builder: (context, booleanState) {
                  return FilledButton(
                    onPressed: booleanState
                        ? () => context.read<AuthenticationBloc>().add(
                              AuthenticationEvent.signInWithEmailAndPassword(
                                context.read<ValidationCubit>().state.email!,
                                context.read<ValidationCubit>().state.password!,
                              ),
                            )
                        : null,
                    child: const Text('Sign in'),
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
