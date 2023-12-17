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
  // State variable to track the chosen size
  int chosedSize = 0;

  @override
  Widget build(BuildContext context) {
    // Extracts the "Size" property from the product's available properties
    ProductProperty? sizeProperty = widget.product.availableProperties
        .firstWhere((property) => property.name == "Size",
            orElse: () => ProductProperty(name: "", values: []));

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Displays the size row if size values are available
        sizeProperty.values.isNotEmpty
            ? const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: CustomSizeRow(),
              )
            : Container(),

        // Displays buttons for each available size
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
                    ? const Color(0xFFB8F02F) // Selected size background color
                    : const Color(
                        0xFF272727), // Unselected size background color
                onTap: () {
                  // Updates the chosen size and triggers a UI update
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
