// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'food_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FoodEntity _$FoodEntityFromJson(Map<String, dynamic> json) {
  return _FoodEntity.fromJson(json);
}

/// @nodoc
mixin _$FoodEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodEntityCopyWith<FoodEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodEntityCopyWith<$Res> {
  factory $FoodEntityCopyWith(
          FoodEntity value, $Res Function(FoodEntity) then) =
      _$FoodEntityCopyWithImpl<$Res>;
  $Res call({int id, String name, String price});
}

/// @nodoc
class _$FoodEntityCopyWithImpl<$Res> implements $FoodEntityCopyWith<$Res> {
  _$FoodEntityCopyWithImpl(this._value, this._then);

  final FoodEntity _value;
  // ignore: unused_field
  final $Res Function(FoodEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_FoodEntityCopyWith<$Res>
    implements $FoodEntityCopyWith<$Res> {
  factory _$$_FoodEntityCopyWith(
          _$_FoodEntity value, $Res Function(_$_FoodEntity) then) =
      __$$_FoodEntityCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String price});
}

/// @nodoc
class __$$_FoodEntityCopyWithImpl<$Res> extends _$FoodEntityCopyWithImpl<$Res>
    implements _$$_FoodEntityCopyWith<$Res> {
  __$$_FoodEntityCopyWithImpl(
      _$_FoodEntity _value, $Res Function(_$_FoodEntity) _then)
      : super(_value, (v) => _then(v as _$_FoodEntity));

  @override
  _$_FoodEntity get _value => super._value as _$_FoodEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
  }) {
    return _then(_$_FoodEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FoodEntity implements _FoodEntity {
  const _$_FoodEntity(
      {required this.id, required this.name, required this.price});

  factory _$_FoodEntity.fromJson(Map<String, dynamic> json) =>
      _$$_FoodEntityFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String price;

  @override
  String toString() {
    return 'FoodEntity(id: $id, name: $name, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FoodEntity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$$_FoodEntityCopyWith<_$_FoodEntity> get copyWith =>
      __$$_FoodEntityCopyWithImpl<_$_FoodEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FoodEntityToJson(
      this,
    );
  }
}

abstract class _FoodEntity implements FoodEntity {
  const factory _FoodEntity(
      {required final int id,
      required final String name,
      required final String price}) = _$_FoodEntity;

  factory _FoodEntity.fromJson(Map<String, dynamic> json) =
      _$_FoodEntity.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get price;
  @override
  @JsonKey(ignore: true)
  _$$_FoodEntityCopyWith<_$_FoodEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
