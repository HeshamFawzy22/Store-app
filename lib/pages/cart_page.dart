import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sports/components/cart_item.dart';

import '../models/cart.dart';
import '../models/shoe.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Cart',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: value.getShoeCart().length,
                itemBuilder: (context, index) {
                  Shoe shoe = value.getShoeCart()[index];
                  return CartItem(shoe: shoe);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
