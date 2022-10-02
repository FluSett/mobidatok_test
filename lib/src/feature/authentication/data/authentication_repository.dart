import '../model/user_entity.dart';
import '../service/authentication_service.dart';

abstract class IAuthenticationRepository {
  UserEntity? getUser();

  Future<void> registerWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<void> signOut();
}

class AuthenticationRepository implements IAuthenticationRepository {
  @override
  UserEntity? getUser() {
    final dbUser = AuthenticationService.getUser();

    if (dbUser == null) {
      return null;
    }

    return UserEntity.fromPsevdoDB(dbUser);
  }

  @override
  Future<void> registerWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await AuthenticationService.registerWithEmailAndPassword(
          email: email, password: password);
    } on FormatException catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await AuthenticationService.signInWithEmailAndPassword(
          email: email, password: password);
    } on FormatException catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> signOut() async {
    Future.wait({AuthenticationService.logout()});
  }
}
