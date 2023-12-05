import 'package:flutter/material.dart';

class CartProductPage extends StatefulWidget {
  const CartProductPage({super.key});

  @override
  State<CartProductPage> createState() => _CartProductPageState();
}

class _CartProductPageState extends State<CartProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Корзина"),
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "Очистить",
              style: TextStyle(
                color: Color(0xFF1D1D1D),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
      body: const Center(
        child: Text("Корзина для Товары"),
      ),
    );
  }
}
