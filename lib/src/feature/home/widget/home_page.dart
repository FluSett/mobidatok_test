import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobidatok_test/src/feature/authentication/logic/authentication_provider.dart';

import '../../../core/widget/title.dart';
import 'cart_buton.dart';
import 'food_shop_list.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        width: screenSize.width,
        height: screenSize.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 50),
            const AppTitle(text: 'Mini Shop | Home'),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () =>
                  ref.read(authenticationProvider.notifier).signOut(),
              child: const Text(
                'Sign out',
                style: TextStyle(color: Colors.red),
              ),
            ),
            const SizedBox(height: 20),
            const CartButton(),
            const SizedBox(height: 20),
            Expanded(
              child: Center(
                child: FoodShopList(screenSize: screenSize),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
