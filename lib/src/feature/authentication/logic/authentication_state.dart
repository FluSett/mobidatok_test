import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_state.freezed.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initital() = _InitialState;
  const factory AuthenticationState.progress() = _AuthenticationProgressState;
  const factory AuthenticationState.error(String message) =
      AuthenticationErrorState;
  const factory AuthenticationState.success() = _AuthenticationSuccessState;
}
