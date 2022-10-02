import 'package:get_it/get_it.dart';

import '../feature/authentication/data/authentication_repository.dart';
import '../feature/authentication/logic/authentication_bloc.dart';
import '../feature/sign_in/bloc/validation_cubit.dart';
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

  getIt.registerFactory<ValidationCubit>(() => ValidationCubit());
}
