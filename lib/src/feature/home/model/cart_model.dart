import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobidatok_test/src/feature/remote_database/model/food_entity.dart';

final cartProvider = ChangeNotifierProvider((ref) => CartModel());

class CartModel extends ChangeNotifier {
  List<FoodEntity> cart = [];

  void addFood(FoodEntity food) {
    cart.add(food);
    notifyListeners();
  }

  void removeFood(FoodEntity food) {
    final index = cart.indexWhere((element) => element == food);

    if (index == -1) {
      return;
    }

    cart.removeAt(index);
    notifyListeners();
  }
}
