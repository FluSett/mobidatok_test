import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobidatok_test/src/feature/authentication/logic/authentication_provider.dart';
import 'package:provider/provider.dart';

import '../feature/authentication/logic/authentication_bloc.dart';
import '../feature/sign_in/bloc/validation_cubit.dart';
import '../feature/sign_in/bloc/validation_model.dart';
import 'app_service.dart';
import 'routes.dart';
import 'service_locator.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final appService = getIt<AppService>();
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppService>(
          create: (_) => appService,
        ),
        Provider<AppRouter>(create: (_) => getIt<AppRouter>()),
        Provider<AuthenticationProvider>(
            create: (_) => getIt<AuthenticationProvider>()),
        ChangeNotifierProvider<ValidationModel>(
          create: (_) => getIt<ValidationModel>(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<ValidationCubit>(),
          ),
          BlocProvider(
            create: (context) => getIt<AuthenticationBloc>(),
          ),
        ],
        child: Builder(
          builder: (context) {
            final router = context.read<AppRouter>().router;

            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              title: 'Mobidatok Test',
              routerConfig: router,
            );
          },
        ),
      ),
    );
  }
}
