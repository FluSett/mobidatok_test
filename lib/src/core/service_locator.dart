import 'package:get_it/get_it.dart';
import 'package:mobidatok_test/src/feature/authentication/logic/authentication_provider.dart';

import '../feature/authentication/data/authentication_repository.dart';
import '../feature/authentication/logic/authentication_bloc.dart';
import '../feature/sign_in/bloc/validation_cubit.dart';
import '../feature/sign_in/bloc/validation_model.dart';
import 'app_service.dart';
import 'routes.dart';

final getIt = GetIt.instance;

void setUpSL() {
  getIt.registerSingleton<AppService>(AppService());
  getIt.registerSingleton<AppRouter>(AppRouter(getIt<AppService>()));

  getIt.registerLazySingleton<AuthenticationRepository>(
    () => AuthenticationRepository(),
  );

  getIt.registerLazySingleton<AuthenticationBloc>(
    () => AuthenticationBloc(
      getIt<AuthenticationRepository>(),
    ),
  );

  getIt.registerLazySingleton<AuthenticationProvider>(
    () => AuthenticationProvider(
      getIt<AuthenticationRepository>(),
    ),
  );

  getIt.registerFactory<ValidationCubit>(() => ValidationCubit());
  getIt.registerFactory<ValidationModel>(() => ValidationModel());
}
