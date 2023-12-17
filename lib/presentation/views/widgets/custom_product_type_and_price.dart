import 'package:flutter/material.dart';

import '../../../data/models/product.dart';

class CustomProductTypeAndPrice extends StatelessWidget {
  const CustomProductTypeAndPrice({
    Key? key,
    required this.product,
    required this.currentIndex,
  }) : super(key: key);

  final Product product;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          product.name,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        const SizedBox(height: 15),
        Text(
          "EGP ${product.variations[currentIndex].price}",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
