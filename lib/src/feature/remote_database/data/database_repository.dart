import 'dart:convert';

import 'package:flutter/services.dart';

import '../model/food_entity.dart';

class DatabaseRepository {
  Future<List<FoodEntity>> fetchData() async {
    final String response =
        await rootBundle.loadString('assets/dummy_data.json');

    final data = json.decode(response) as List;

    final food = data.map((element) => FoodEntity.fromJson(element)).toList();

    return food;
  }
}
