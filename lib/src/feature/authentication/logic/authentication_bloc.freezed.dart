// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        registerWithEmailAndPassword,
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)?
        registerWithEmailAndPassword,
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function()? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)?
        registerWithEmailAndPassword,
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterWithEmailAndPasswordEvent value)
        registerWithEmailAndPassword,
    required TResult Function(_SignInWithEmailAndPasswordEvent value)
        signInWithEmailAndPassword,
    required TResult Function(_SignOutEvent value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterWithEmailAndPasswordEvent value)?
        registerWithEmailAndPassword,
    TResult Function(_SignInWithEmailAndPasswordEvent value)?
        signInWithEmailAndPassword,
    TResult Function(_SignOutEvent value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterWithEmailAndPasswordEvent value)?
        registerWithEmailAndPassword,
    TResult Function(_SignInWithEmailAndPasswordEvent value)?
        signInWithEmailAndPassword,
    TResult Function(_SignOutEvent value)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;
}

/// @nodoc
abstract class _$$_RegisterWithEmailAndPasswordEventCopyWith<$Res> {
  factory _$$_RegisterWithEmailAndPasswordEventCopyWith(
          _$_RegisterWithEmailAndPasswordEvent value,
          $Res Function(_$_RegisterWithEmailAndPasswordEvent) then) =
      __$$_RegisterWithEmailAndPasswordEventCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class __$$_RegisterWithEmailAndPasswordEventCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$_RegisterWithEmailAndPasswordEventCopyWith<$Res> {
  __$$_RegisterWithEmailAndPasswordEventCopyWithImpl(
      _$_RegisterWithEmailAndPasswordEvent _value,
      $Res Function(_$_RegisterWithEmailAndPasswordEvent) _then)
      : super(_value, (v) => _then(v as _$_RegisterWithEmailAndPasswordEvent));

  @override
  _$_RegisterWithEmailAndPasswordEvent get _value =>
      super._value as _$_RegisterWithEmailAndPasswordEvent;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_RegisterWithEmailAndPasswordEvent(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RegisterWithEmailAndPasswordEvent
    implements _RegisterWithEmailAndPasswordEvent {
  const _$_RegisterWithEmailAndPasswordEvent(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthenticationEvent.registerWithEmailAndPassword(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterWithEmailAndPasswordEvent &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_RegisterWithEmailAndPasswordEventCopyWith<
          _$_RegisterWithEmailAndPasswordEvent>
      get copyWith => __$$_RegisterWithEmailAndPasswordEventCopyWithImpl<
          _$_RegisterWithEmailAndPasswordEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        registerWithEmailAndPassword,
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function() signOut,
  }) {
    return registerWithEmailAndPassword(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)?
        registerWithEmailAndPassword,
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function()? signOut,
  }) {
    return registerWithEmailAndPassword?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)?
        registerWithEmailAndPassword,
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPassword != null) {
      return registerWithEmailAndPassword(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterWithEmailAndPasswordEvent value)
        registerWithEmailAndPassword,
    required TResult Function(_SignInWithEmailAndPasswordEvent value)
        signInWithEmailAndPassword,
    required TResult Function(_SignOutEvent value) signOut,
  }) {
    return registerWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterWithEmailAndPasswordEvent value)?
        registerWithEmailAndPassword,
    TResult Function(_SignInWithEmailAndPasswordEvent value)?
        signInWithEmailAndPassword,
    TResult Function(_SignOutEvent value)? signOut,
  }) {
    return registerWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterWithEmailAndPasswordEvent value)?
        registerWithEmailAndPassword,
    TResult Function(_SignInWithEmailAndPasswordEvent value)?
        signInWithEmailAndPassword,
    TResult Function(_SignOutEvent value)? signOut,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPassword != null) {
      return registerWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class _RegisterWithEmailAndPasswordEvent
    implements AuthenticationEvent {
  const factory _RegisterWithEmailAndPasswordEvent(
          final String email, final String password) =
      _$_RegisterWithEmailAndPasswordEvent;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_RegisterWithEmailAndPasswordEventCopyWith<
          _$_RegisterWithEmailAndPasswordEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignInWithEmailAndPasswordEventCopyWith<$Res> {
  factory _$$_SignInWithEmailAndPasswordEventCopyWith(
          _$_SignInWithEmailAndPasswordEvent value,
          $Res Function(_$_SignInWithEmailAndPasswordEvent) then) =
      __$$_SignInWithEmailAndPasswordEventCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class __$$_SignInWithEmailAndPasswordEventCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$_SignInWithEmailAndPasswordEventCopyWith<$Res> {
  __$$_SignInWithEmailAndPasswordEventCopyWithImpl(
      _$_SignInWithEmailAndPasswordEvent _value,
      $Res Function(_$_SignInWithEmailAndPasswordEvent) _then)
      : super(_value, (v) => _then(v as _$_SignInWithEmailAndPasswordEvent));

  @override
  _$_SignInWithEmailAndPasswordEvent get _value =>
      super._value as _$_SignInWithEmailAndPasswordEvent;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_SignInWithEmailAndPasswordEvent(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignInWithEmailAndPasswordEvent
    implements _SignInWithEmailAndPasswordEvent {
  const _$_SignInWithEmailAndPasswordEvent(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthenticationEvent.signInWithEmailAndPassword(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInWithEmailAndPasswordEvent &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_SignInWithEmailAndPasswordEventCopyWith<
          _$_SignInWithEmailAndPasswordEvent>
      get copyWith => __$$_SignInWithEmailAndPasswordEventCopyWithImpl<
          _$_SignInWithEmailAndPasswordEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        registerWithEmailAndPassword,
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function() signOut,
  }) {
    return signInWithEmailAndPassword(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)?
        registerWithEmailAndPassword,
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function()? signOut,
  }) {
    return signInWithEmailAndPassword?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)?
        registerWithEmailAndPassword,
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPassword != null) {
      return signInWithEmailAndPassword(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterWithEmailAndPasswordEvent value)
        registerWithEmailAndPassword,
    required TResult Function(_SignInWithEmailAndPasswordEvent value)
        signInWithEmailAndPassword,
    required TResult Function(_SignOutEvent value) signOut,
  }) {
    return signInWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterWithEmailAndPasswordEvent value)?
        registerWithEmailAndPassword,
    TResult Function(_SignInWithEmailAndPasswordEvent value)?
        signInWithEmailAndPassword,
    TResult Function(_SignOutEvent value)? signOut,
  }) {
    return signInWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterWithEmailAndPasswordEvent value)?
        registerWithEmailAndPassword,
    TResult Function(_SignInWithEmailAndPasswordEvent value)?
        signInWithEmailAndPassword,
    TResult Function(_SignOutEvent value)? signOut,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPassword != null) {
      return signInWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class _SignInWithEmailAndPasswordEvent implements AuthenticationEvent {
  const factory _SignInWithEmailAndPasswordEvent(
          final String email, final String password) =
      _$_SignInWithEmailAndPasswordEvent;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_SignInWithEmailAndPasswordEventCopyWith<
          _$_SignInWithEmailAndPasswordEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignOutEventCopyWith<$Res> {
  factory _$$_SignOutEventCopyWith(
          _$_SignOutEvent value, $Res Function(_$_SignOutEvent) then) =
      __$$_SignOutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignOutEventCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$_SignOutEventCopyWith<$Res> {
  __$$_SignOutEventCopyWithImpl(
      _$_SignOutEvent _value, $Res Function(_$_SignOutEvent) _then)
      : super(_value, (v) => _then(v as _$_SignOutEvent));

  @override
  _$_SignOutEvent get _value => super._value as _$_SignOutEvent;
}

/// @nodoc

class _$_SignOutEvent implements _SignOutEvent {
  const _$_SignOutEvent();

  @override
  String toString() {
    return 'AuthenticationEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignOutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        registerWithEmailAndPassword,
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)?
        registerWithEmailAndPassword,
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function()? signOut,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)?
        registerWithEmailAndPassword,
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterWithEmailAndPasswordEvent value)
        registerWithEmailAndPassword,
    required TResult Function(_SignInWithEmailAndPasswordEvent value)
        signInWithEmailAndPassword,
    required TResult Function(_SignOutEvent value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterWithEmailAndPasswordEvent value)?
        registerWithEmailAndPassword,
    TResult Function(_SignInWithEmailAndPasswordEvent value)?
        signInWithEmailAndPassword,
    TResult Function(_SignOutEvent value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterWithEmailAndPasswordEvent value)?
        registerWithEmailAndPassword,
    TResult Function(_SignInWithEmailAndPasswordEvent value)?
        signInWithEmailAndPassword,
    TResult Function(_SignOutEvent value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOutEvent implements AuthenticationEvent {
  const factory _SignOutEvent() = _$_SignOutEvent;
}
