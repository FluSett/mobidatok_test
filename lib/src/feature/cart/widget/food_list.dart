import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../home/model/cart_model.dart';
import '../../home/widget/food_card.dart';

class FoodList extends StatelessWidget {
  final Size screenSize;

  const FoodList({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenSize.height * 0.8,
      width: screenSize.width * 0.5,
      child: const FoodListViewBuilder(),
    );
  }
}

class FoodListViewBuilder extends ConsumerWidget {
  const FoodListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cart = ref.watch(cartProvider).cart;
    return ListView.builder(
      itemCount: cart.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: FoodCard(
          food: cart[index],
        ),
      ),
    );
  }
}
