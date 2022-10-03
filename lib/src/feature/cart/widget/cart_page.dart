import 'package:flutter/material.dart';

import '../../../core/widget/title.dart';
import '../../home/widget/cart_buton.dart';
import 'food_list.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        width: screenSize.width,
        height: screenSize.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 50),
            const AppTitle(text: 'Mini Shop | Cart'),
            const SizedBox(height: 20),
            const CartButton(),
            const SizedBox(height: 20),
            Expanded(
              child: Center(
                child: FoodList(screenSize: screenSize),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
