// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'food_provider_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FoodProviderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<FoodEntity> data) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<FoodEntity> data)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<FoodEntity> data)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FoodLoadingState value) loading,
    required TResult Function(FoodErrorState value) error,
    required TResult Function(_FoodSuccessState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FoodLoadingState value)? loading,
    TResult Function(FoodErrorState value)? error,
    TResult Function(_FoodSuccessState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FoodLoadingState value)? loading,
    TResult Function(FoodErrorState value)? error,
    TResult Function(_FoodSuccessState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodProviderStateCopyWith<$Res> {
  factory $FoodProviderStateCopyWith(
          FoodProviderState value, $Res Function(FoodProviderState) then) =
      _$FoodProviderStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FoodProviderStateCopyWithImpl<$Res>
    implements $FoodProviderStateCopyWith<$Res> {
  _$FoodProviderStateCopyWithImpl(this._value, this._then);

  final FoodProviderState _value;
  // ignore: unused_field
  final $Res Function(FoodProviderState) _then;
}

/// @nodoc
abstract class _$$_FoodLoadingStateCopyWith<$Res> {
  factory _$$_FoodLoadingStateCopyWith(
          _$_FoodLoadingState value, $Res Function(_$_FoodLoadingState) then) =
      __$$_FoodLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FoodLoadingStateCopyWithImpl<$Res>
    extends _$FoodProviderStateCopyWithImpl<$Res>
    implements _$$_FoodLoadingStateCopyWith<$Res> {
  __$$_FoodLoadingStateCopyWithImpl(
      _$_FoodLoadingState _value, $Res Function(_$_FoodLoadingState) _then)
      : super(_value, (v) => _then(v as _$_FoodLoadingState));

  @override
  _$_FoodLoadingState get _value => super._value as _$_FoodLoadingState;
}

/// @nodoc

class _$_FoodLoadingState implements _FoodLoadingState {
  const _$_FoodLoadingState();

  @override
  String toString() {
    return 'FoodProviderState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FoodLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<FoodEntity> data) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<FoodEntity> data)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<FoodEntity> data)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FoodLoadingState value) loading,
    required TResult Function(FoodErrorState value) error,
    required TResult Function(_FoodSuccessState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FoodLoadingState value)? loading,
    TResult Function(FoodErrorState value)? error,
    TResult Function(_FoodSuccessState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FoodLoadingState value)? loading,
    TResult Function(FoodErrorState value)? error,
    TResult Function(_FoodSuccessState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _FoodLoadingState implements FoodProviderState {
  const factory _FoodLoadingState() = _$_FoodLoadingState;
}

/// @nodoc
abstract class _$$FoodErrorStateCopyWith<$Res> {
  factory _$$FoodErrorStateCopyWith(
          _$FoodErrorState value, $Res Function(_$FoodErrorState) then) =
      __$$FoodErrorStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$FoodErrorStateCopyWithImpl<$Res>
    extends _$FoodProviderStateCopyWithImpl<$Res>
    implements _$$FoodErrorStateCopyWith<$Res> {
  __$$FoodErrorStateCopyWithImpl(
      _$FoodErrorState _value, $Res Function(_$FoodErrorState) _then)
      : super(_value, (v) => _then(v as _$FoodErrorState));

  @override
  _$FoodErrorState get _value => super._value as _$FoodErrorState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$FoodErrorState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FoodErrorState implements FoodErrorState {
  const _$FoodErrorState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'FoodProviderState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodErrorState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$FoodErrorStateCopyWith<_$FoodErrorState> get copyWith =>
      __$$FoodErrorStateCopyWithImpl<_$FoodErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<FoodEntity> data) loaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<FoodEntity> data)? loaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<FoodEntity> data)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FoodLoadingState value) loading,
    required TResult Function(FoodErrorState value) error,
    required TResult Function(_FoodSuccessState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FoodLoadingState value)? loading,
    TResult Function(FoodErrorState value)? error,
    TResult Function(_FoodSuccessState value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FoodLoadingState value)? loading,
    TResult Function(FoodErrorState value)? error,
    TResult Function(_FoodSuccessState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FoodErrorState implements FoodProviderState {
  const factory FoodErrorState(final String message) = _$FoodErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$FoodErrorStateCopyWith<_$FoodErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FoodSuccessStateCopyWith<$Res> {
  factory _$$_FoodSuccessStateCopyWith(
          _$_FoodSuccessState value, $Res Function(_$_FoodSuccessState) then) =
      __$$_FoodSuccessStateCopyWithImpl<$Res>;
  $Res call({List<FoodEntity> data});
}

/// @nodoc
class __$$_FoodSuccessStateCopyWithImpl<$Res>
    extends _$FoodProviderStateCopyWithImpl<$Res>
    implements _$$_FoodSuccessStateCopyWith<$Res> {
  __$$_FoodSuccessStateCopyWithImpl(
      _$_FoodSuccessState _value, $Res Function(_$_FoodSuccessState) _then)
      : super(_value, (v) => _then(v as _$_FoodSuccessState));

  @override
  _$_FoodSuccessState get _value => super._value as _$_FoodSuccessState;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_FoodSuccessState(
      data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FoodEntity>,
    ));
  }
}

/// @nodoc

class _$_FoodSuccessState implements _FoodSuccessState {
  const _$_FoodSuccessState(final List<FoodEntity> data) : _data = data;

  final List<FoodEntity> _data;
  @override
  List<FoodEntity> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'FoodProviderState.loaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FoodSuccessState &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_FoodSuccessStateCopyWith<_$_FoodSuccessState> get copyWith =>
      __$$_FoodSuccessStateCopyWithImpl<_$_FoodSuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<FoodEntity> data) loaded,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<FoodEntity> data)? loaded,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<FoodEntity> data)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FoodLoadingState value) loading,
    required TResult Function(FoodErrorState value) error,
    required TResult Function(_FoodSuccessState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FoodLoadingState value)? loading,
    TResult Function(FoodErrorState value)? error,
    TResult Function(_FoodSuccessState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FoodLoadingState value)? loading,
    TResult Function(FoodErrorState value)? error,
    TResult Function(_FoodSuccessState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _FoodSuccessState implements FoodProviderState {
  const factory _FoodSuccessState(final List<FoodEntity> data) =
      _$_FoodSuccessState;

  List<FoodEntity> get data;
  @JsonKey(ignore: true)
  _$$_FoodSuccessStateCopyWith<_$_FoodSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}
