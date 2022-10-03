import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routes.dart';
import '../../../core/widget/title.dart';
import '../model/cart_model.dart';

class CartButton extends StatelessWidget {
  const CartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pushNamed(routeCart),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.shopping_cart),
          SizedBox(width: 5),
          CartLengthText(),
        ],
      ),
    );
  }
}

class CartLengthText extends ConsumerWidget {
  const CartLengthText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppTitle(
      text: ref.watch(cartProvider).cart.length.toString(),
    );
  }
}
