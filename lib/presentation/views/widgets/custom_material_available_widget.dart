import 'package:flutter/material.dart';

import '../../../data/models/product.dart';
import '../../../data/models/product_property.dart';
import 'custom_proparity_button.dart';

class CustomMaterialAvailableWidge extends StatefulWidget {
  const CustomMaterialAvailableWidge({super.key, required this.product});
  final Product product;

  @override
  State<CustomMaterialAvailableWidge> createState() =>
      _CustomMaterialAvailableWidgeState();
}

class _CustomMaterialAvailableWidgeState
    extends State<CustomMaterialAvailableWidge> {
  int chosedSize = 0;
  @override
  Widget build(BuildContext context) {
    ProductProperty? materialProperty =
        widget.product.availableProperties.firstWhere(
      (property) => property.name == "Material",
      orElse: () => ProductProperty(name: "", values: []),
    );
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        materialProperty.values.isNotEmpty
            ? const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "Selected Material",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              )
            : Container(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            materialProperty.values.length,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: CustomProparityButton(
                content: materialProperty.values[index].toString(),
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
