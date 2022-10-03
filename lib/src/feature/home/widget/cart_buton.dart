import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mobidatok_test/src/core/routes.dart';

import '../../../core/widget/title.dart';
import '../model/cart_model.dart';

class CartButton extends ConsumerWidget {
  const CartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cart = ref.watch(cartProvider).cart;

    return InkWell(
      onTap: () => context.pushNamed(routeCart),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.shopping_cart),
          const SizedBox(width: 5),
          AppTitle(text: cart.length.toString()),
        ],
      ),
    );
  }
}
