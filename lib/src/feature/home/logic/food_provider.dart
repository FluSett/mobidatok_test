import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobidatok_test/src/feature/home/logic/food_provider_state.dart';
import 'package:mobidatok_test/src/feature/remote_database/data/database_repository.dart';

import '../../../core/service_locator.dart';

final foodProvider =
    StateNotifierProvider<FoodProvider, FoodProviderState>((ref) {
  return FoodProvider(getIt<DatabaseRepository>());
});

class FoodProvider extends StateNotifier<FoodProviderState> {
  final DatabaseRepository databaseRepository;

  FoodProvider(
    this.databaseRepository,
  ) : super(const FoodProviderState.loading()) {
    startLoading();
  }

  Future<void> startLoading() async {
    final data = await databaseRepository.fetchData();

    state = FoodProviderState.loaded(data);
  }
}
