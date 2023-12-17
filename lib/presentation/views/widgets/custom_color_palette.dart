import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/product.dart';
import '../../view_model/images_cubit/images_cubit.dart';
import '../../view_model/product_index_cubit/product_index_cubit.dart';

class CustomColorPalette extends StatelessWidget {
  const CustomColorPalette({
    Key? key,
    required this.product,
    required this.currentInex,
  }) : super(key: key);

  final Product product;
  final int currentInex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        // Generates color circles based on the number of available color values
        context.read<ProductIndexCubit>().colorProperty!.values.length,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: GestureDetector(
            onTap: () {
              // Changes the current product index based on the selected color
              context
                  .read<ProductIndexCubit>()
                  .changeProductCurrentIndex(index);

              // Changes the current page of the image slider to the first page
              context.read<ImagesCubit>().changePage(0);

              // Jumps to the first page in the image slider
              context.read<ImagesCubit>().pageConstroller.jumpToPage(0);
            },
            child: CircleAvatar(
              radius: 20,
              // Outer circle with a light gray background
              backgroundColor:
                  const Color.fromARGB(255, 104, 103, 103).withOpacity(0.1),
              child: CircleAvatar(
                radius: 17,
                // Inner circle with a slightly transparent gray background
                backgroundColor: currentInex != index
                    ? Colors.grey.withOpacity(0.2)
                    : Colors.white,
                child: CircleAvatar(
                  radius: 15,
                  // Innermost circle representing the color
                  backgroundColor: Color(
                    context
                        .read<ProductIndexCubit>()
                        .colorProperty!
                        .values[index],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
