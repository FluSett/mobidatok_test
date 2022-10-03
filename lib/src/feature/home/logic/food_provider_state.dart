import 'package:freezed_annotation/freezed_annotation.dart';

import '../../remote_database/model/food_entity.dart';

part 'food_provider_state.freezed.dart';

@freezed
class FoodProviderState with _$FoodProviderState {
  const factory FoodProviderState.loading() = _FoodLoadingState;
  const factory FoodProviderState.error(String message) = FoodErrorState;
  const factory FoodProviderState.loaded(List<FoodEntity> data) =
      _FoodSuccessState;
}
