import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/app_service.dart';
import '../../../core/service_locator.dart';
import '../data/authentication_repository.dart';
import 'authentication_state.dart';

final authenticationProvider =
    StateNotifierProvider<AuthenticationProvider, AuthenticationState>((ref) {
  return getIt<AuthenticationProvider>();
});

class AuthenticationProvider extends StateNotifier<AuthenticationState> {
  final IAuthenticationRepository _authenticationRepository;

  final appService = getIt<AppService>();

  AuthenticationProvider(this._authenticationRepository)
      : super(const AuthenticationState.initital());

  Future<void> registerWithEmailAndPassword(
    String email,
    String password,
  ) async {
    state = const AuthenticationState.progress();

    try {
      await _authenticationRepository.registerWithEmailAndPassword(
        email: email,
        password: password,
      );

      appService.authState = true;
    } on FormatException catch (error) {
      state = AuthenticationState.error(error.message);
    }
  }

  Future<void> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    state = const AuthenticationState.progress();

    try {
      await _authenticationRepository.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      appService.authState = true;
    } on FormatException catch (error) {
      state = AuthenticationState.error(error.message);
    }
  }

  Future<void> signOut() async {
    state = const AuthenticationState.progress();

    await _authenticationRepository.signOut();

    appService.authState = false;
    state = const AuthenticationState.initital();
  }
}
