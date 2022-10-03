import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobidatok_test/src/feature/home/model/cart_model.dart';

import '../../home/widget/food_card.dart';

class FoodList extends ConsumerWidget {
  final Size screenSize;

  const FoodList({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cart = ref.watch(cartProvider).cart;

    return SizedBox(
      height: screenSize.height * 0.8,
      width: screenSize.width * 0.5,
      child: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: FoodCard(
            food: cart[index],
          ),
        ),
      ),
    );
  }
}
