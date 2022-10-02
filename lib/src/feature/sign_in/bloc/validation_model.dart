import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants.dart';

final validationProvider = ChangeNotifierProvider<ValidationModel>((ref) {
  return ValidationModel();
});

class ValidationModel extends ChangeNotifier {
  String? emailError;
  String? passwordError;
  String? confirmPasswordError;

  bool validateSignIn(String email, String password) {
    return emailError == null &&
        email.isNotEmpty &&
        passwordError == null &&
        password.isNotEmpty;
  }

  bool validateSignUp(String email, String password, String confirmPassword) {
    return emailError == null &&
        email.isNotEmpty &&
        passwordError == null &&
        password.isNotEmpty &&
        confirmPasswordError == null &&
        confirmPassword.isNotEmpty;
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
