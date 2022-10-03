import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../remote_database/model/food_entity.dart';
import '../model/cart_model.dart';

class FoodCard extends ConsumerWidget {
  final FoodEntity food;

  const FoodCard({
    Key? key,
    required this.food,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Text(food.id.toString()),
            const SizedBox(width: 20),
            Text(food.name),
            const SizedBox(width: 10),
            Text('|   ${food.price}\$'),
            const Spacer(),
            Row(
              children: [
                IconButton(
                  onPressed: () => ref.read(cartProvider).addFood(food),
                  icon: const Icon(Icons.add),
                ),
                IconButton(
                  onPressed: () => ref.read(cartProvider).removeFood(food),
                  icon: const Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
