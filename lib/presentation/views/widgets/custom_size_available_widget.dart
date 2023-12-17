import 'package:flutter/material.dart';

import '../../../data/models/product.dart';
import '../../../data/models/product_property.dart';
import 'custom_proparity_button.dart';
import 'custom_size_row.dart';

class CustomSizeAvailableWidge extends StatefulWidget {
  const CustomSizeAvailableWidge({super.key, required this.product});
  final Product product;

  @override
  State<CustomSizeAvailableWidge> createState() =>
      _CustomSizeAvailableWidgeState();
}

class _CustomSizeAvailableWidgeState extends State<CustomSizeAvailableWidge> {
  int chosedSize = 0;
  @override
  Widget build(BuildContext context) {
    ProductProperty? sizeProperty = widget.product.availableProperties
        .firstWhere((property) => property.name == "Size",
            orElse: () => ProductProperty(name: "", values: []));
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        sizeProperty.values.isNotEmpty
            ? const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: CustomSizeRow(),
              )
            : Container(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            sizeProperty.values.length,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: CustomProparityButton(
                content: sizeProperty.values[index].toString(),
                textColor: chosedSize == index ? Colors.black : Colors.white,
                backgroundColor: chosedSize == index
                    ? const Color(0xFFB8F02F)
                    : const Color(0xFF272727),
                onTap: () {
                  chosedSize = index;
                  setState(() {});
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
