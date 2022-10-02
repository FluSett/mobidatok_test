import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/app_service.dart';
import '../../../core/service_locator.dart';
import '../data/authentication_repository.dart';
import 'authentication_state.dart';

part 'authentication_bloc.freezed.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.registerWithEmailAndPassword(
      String email, String password) = _RegisterWithEmailAndPasswordEvent;
  const factory AuthenticationEvent.signInWithEmailAndPassword(
      String email, String password) = _SignInWithEmailAndPasswordEvent;
  const factory AuthenticationEvent.signOut() = _SignOutEvent;
}

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final IAuthenticationRepository _authenticationRepository;

  final appService = getIt<AppService>();

  AuthenticationBloc(this._authenticationRepository)
      : super(const AuthenticationState.initital()) {
    on<_RegisterWithEmailAndPasswordEvent>((event, emit) async {
      emit(const AuthenticationState.progress());
      try {
        await _authenticationRepository.registerWithEmailAndPassword(
          email: event.email,
          password: event.password,
        );

        appService.authState = true;
      } on FormatException catch (error) {
        emit(AuthenticationState.error(error.message));
      }
    });

    on<_SignInWithEmailAndPasswordEvent>((event, emit) async {
      emit(const AuthenticationState.progress());
      try {
        await _authenticationRepository.signInWithEmailAndPassword(
          email: event.email,
          password: event.password,
        );

        appService.authState = true;
      } on FormatException catch (error) {
        emit(AuthenticationState.error(error.message));
      }
    });

    on<_SignOutEvent>((_, emit) async {
      emit(const AuthenticationState.progress());

      await _authenticationRepository.signOut();

      appService.authState = false;
    });
  }
}
