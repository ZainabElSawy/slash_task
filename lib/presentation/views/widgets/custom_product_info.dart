import 'package:flutter/material.dart';

import '../../../data/models/product.dart';
import 'custom_brand_info.dart';
import 'custom_product_type_and_price.dart';

class CustomProductInfo extends StatelessWidget {
  const CustomProductInfo({
    Key? key,
    required this.product,
    required this.currentIndex,
  }) : super(key: key);

  final Product product;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // CustomProductTypeAndPrice: Widget displaying product type and price
          CustomProductTypeAndPrice(
            product: product,
            currentIndex: currentIndex,
          ),
          // CustomBrandInfo: Widget displaying brand information
          CustomBrandInfo(product: product),
        ],
      ),
    );
  }
}
