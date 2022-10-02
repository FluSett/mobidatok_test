import 'package:flutter/material.dart';

import '../../../core/constants.dart';

class ValidationModel extends ChangeNotifier {
  String? emailError;
  String? passwordError;
  String? confirmPasswordError;

  bool validateSignIn() {
    return emailError == null && passwordError == null;
  }

  bool validateSignUp() {
    return emailError == null &&
        passwordError == null &&
        confirmPasswordError == null;
  }

  void updateEmail(String email) {
    if (email.isEmpty) {
      emailError = null;
      notifyListeners();
      return;
    }

    final regExp = RegExp(emailRegex);

    if (!regExp.hasMatch(email)) {
      emailError = 'Invalid field';
      notifyListeners();
      return;
    }

    emailError = null;
    notifyListeners();
  }

  void updatePassword(String password, String? confirmPassword) {
    if (password.isEmpty) {
      passwordError = null;
      notifyListeners();
      return;
    }

    if (password.length < 7) {
      passwordError = 'Length must be greater than 7 characters';
      notifyListeners();
    }

    final regExp = RegExp(passwordRegex);

    if (!regExp.hasMatch(password)) {
      passwordError = 'Invalid field';
      notifyListeners();
      return;
    }

    passwordError = null;
    notifyListeners();

    if (confirmPassword != null) {
      updateConfirmPassword(confirmPassword, password);
    }
  }

  void updateConfirmPassword(String confirmPassword, String password) {
    if (confirmPassword.isEmpty) {
      confirmPasswordError = null;
      notifyListeners();
      return;
    }

    if (confirmPassword.length < 7) {
      confirmPasswordError = 'Length must be greater than 7 characters';
      notifyListeners();
      return;
    }

    final regExp = RegExp(passwordRegex);

    if (!regExp.hasMatch(confirmPassword)) {
      confirmPasswordError = 'Invalid field';
      notifyListeners();
      return;
    }

    if (confirmPassword != password) {
      confirmPasswordError = 'Passwords do not match';
      notifyListeners();
      return;
    }

    confirmPasswordError = null;
    notifyListeners();
  }
}
