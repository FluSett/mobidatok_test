import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobidatok_test/src/feature/home/widget/food_card.dart';

import '../logic/food_provider.dart';

class FoodShopList extends ConsumerWidget {
  final Size screenSize;

  const FoodShopList({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final foods = ref.watch(foodProvider);

    return foods.when(
      loading: () => const SizedBox(
        height: 100,
        width: 100,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
      error: (error) => Column(
        children: [
          Text(error),
        ],
      ),
      loaded: (data) => SizedBox(
        height: screenSize.height * 0.8,
        width: screenSize.width * 0.5,
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: FoodCard(food: data[index]),
          ),
        ),
      ),
    );
  }
}
