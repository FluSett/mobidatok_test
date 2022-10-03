import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_entity.freezed.dart';

part 'food_entity.g.dart';

@freezed
class FoodEntity with _$FoodEntity {
  const factory FoodEntity({
    required int id,
    required String name,
    required String price,
  }) = _FoodEntity;

  factory FoodEntity.fromJson(Map<String, Object?> json) =>
      _$FoodEntityFromJson(json);
}
