import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'src/core/app.dart';
import 'src/core/service_locator.dart';

void main() {
  setUpSL();

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}
