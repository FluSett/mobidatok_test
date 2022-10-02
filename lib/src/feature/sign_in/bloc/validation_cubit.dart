import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../core/constants.dart';

const String copyWithString = "null";

class ValidationState extends Equatable {
  final String? email;
  final String? password;
  final String? confirmPassword;

  final String? emailError;
  final String? passwordError;
  final String? confirmPasswordError;

  const ValidationState({
    this.email,
    this.password,
    this.confirmPassword,
    this.emailError,
    this.passwordError,
    this.confirmPasswordError,
  });

  bool validateSignIn() {
    return email != null && password != null;
  }

  bool validateSignUp() {
    return email != null && password != null && confirmPassword != null;
  }

  ValidationState copyWith({
    String? email = copyWithString,
    String? password = copyWithString,
    String? confirmPassword = copyWithString,
    String? emailError = copyWithString,
    String? passwordError = copyWithString,
    String? confirmPasswordError = copyWithString,
  }) {
    return ValidationState(
      email: email != copyWithString ? email : this.email,
      password: password != copyWithString ? password : this.password,
      confirmPassword: confirmPassword != copyWithString
          ? confirmPassword
          : this.confirmPassword,
      emailError: emailError != copyWithString ? emailError : this.emailError,
      passwordError:
          passwordError != copyWithString ? passwordError : this.passwordError,
      confirmPasswordError: confirmPasswordError != copyWithString
          ? confirmPasswordError
          : this.confirmPasswordError,
    );
  }

  @override
  List<Object?> get props => [
        email,
        password,
        confirmPassword,
        emailError,
        passwordError,
        confirmPasswordError,
      ];
}

class ValidationCubit extends Cubit<ValidationState> {
  ValidationCubit() : super(const ValidationState());

  void updateEmail(String emailValue) {
    emit(state.copyWith(email: null));

    if (emailValue.isEmpty) {
      return emit(state.copyWith(emailError: null));
    }

    final regExp = RegExp(emailRegex);

    if (!regExp.hasMatch(emailValue)) {
      return emit(state.copyWith(emailError: 'Invalid field'));
    }

    return emit(state.copyWith(
      email: emailValue,
      emailError: null,
    ));
  }

  void updatePassword(String passwordValue) {
    emit(state.copyWith(password: null));

    if (passwordValue.isEmpty) {
      return emit(state.copyWith(passwordError: null));
    }

    if (passwordValue.length < 7) {
      return emit(state.copyWith(
        passwordError: 'Length must be greater than 7 characters',
      ));
    }

    final regExp = RegExp(passwordRegex);

    if (!regExp.hasMatch(passwordValue)) {
      return emit(state.copyWith(passwordError: 'Invalid field'));
    }

    emit(state.copyWith(
      password: passwordValue,
      passwordError: null,
    ));

    if (state.confirmPassword != null) {
      updateConfirmPassword(state.confirmPassword!);
    }
  }

  void updateConfirmPassword(String confirmPasswordValue) {
    emit(state.copyWith(confirmPassword: null));

    if (confirmPasswordValue.isEmpty) {
      return emit(state.copyWith(confirmPasswordError: null));
    }

    if (confirmPasswordValue.length < 7) {
      return emit(state.copyWith(
        confirmPasswordError: 'Length must be greater than 7 characters',
      ));
    }

    final regExp = RegExp(passwordRegex);

    if (!regExp.hasMatch(confirmPasswordValue)) {
      return emit(state.copyWith(confirmPasswordError: 'Invalid field'));
    }

    if (confirmPasswordValue != state.password) {
      return emit(state.copyWith(
        confirmPasswordError: 'Passwords do not match',
        confirmPassword: confirmPasswordValue,
      ));
    }

    return emit(state.copyWith(
      confirmPassword: confirmPasswordValue,
      confirmPasswordError: null,
    ));
  }
}
