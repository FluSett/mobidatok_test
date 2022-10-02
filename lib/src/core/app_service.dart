import 'dart:async';

import 'package:flutter/material.dart';

class AppService with ChangeNotifier {
  final StreamController<bool> _authStateChange =
      StreamController<bool>.broadcast();

  bool _authState = false;

  AppService();

  bool get authState => _authState;

  Stream<bool> get authStateChange => _authStateChange.stream;

  set authState(bool state) {
    _authState = state;
    _authStateChange.add(state);
    notifyListeners();
  }
}
