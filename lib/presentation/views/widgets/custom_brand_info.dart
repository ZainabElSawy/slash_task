import 'package:flutter/material.dart';

import '../../../data/models/product.dart';

class CustomBrandInfo extends StatelessWidget {
  const CustomBrandInfo({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          backgroundImage:
              NetworkImage(product.brandLogoUrl ?? ''),
          radius: 25,
        ),
        const SizedBox(height: 15),
        Text(
          product.brandName ?? "",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
