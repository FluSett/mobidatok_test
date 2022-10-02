const psevdoDBUser = {'username': 'flusett'};

const duration = Duration(seconds: 2);

class AuthenticationService {
  static bool authenticationStatus = false;

  static Future<void> registerWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await Future.delayed(duration);

    if (password == 'SomePass1') {
      throw const FormatException();
    }

    authenticationStatus = true;
  }

  static Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await Future.delayed(duration);

    if (password == 'SomePass1') {
      throw const FormatException();
    }

    authenticationStatus = true;
  }

  static Map<String, dynamic>? getUser() {
    if (!AuthenticationService.authenticationStatus) {
      return null;
    }

    return psevdoDBUser;
  }

  static Future<void> logout() async {
    await Future.delayed(duration);
    authenticationStatus = false;
  }
}
