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
  // State variable to track the chosen material
  int chosedSize = 0;

  @override
  Widget build(BuildContext context) {
    // Extracts the "Material" property from the product's available properties
    ProductProperty? materialProperty =
        widget.product.availableProperties.firstWhere(
      (property) => property.name == "Material",
      orElse: () => ProductProperty(name: "", values: []),
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Displays the "Selected Material" label if material values are available
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
        
        // Displays buttons for each available material
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
                    ? const Color(0xFFB8F02F) // Selected material background color
                    : const Color(0xFF272727), // Unselected material background color
                onTap: () {
                  // Updates the chosen material and triggers a UI update
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
