import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task/presentation/view_model/product_counter_cubit/product_counter_cubit.dart';
import 'package:slash_task/presentation/view_model/product_index_cubit/product_index_cubit.dart';

import '../../../data/models/product.dart';
import '../../view_model/images_cubit/images_cubit.dart';
import '../pages/product_details_screen.dart';
import 'custom_card_item.dart';

class CustomProductsGridView extends StatelessWidget {
  final List<Product> products;
  const CustomProductsGridView({
    Key? key,
    required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Display a grid view of product cards
    return GridView.builder(
      padding: const EdgeInsets.all(16.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 16,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];

        // Wrap each product card with a GestureDetector for tapping
        return GestureDetector(
          onTap: () {
            // Navigate to the ProductDetailsScreen with MultiBlocProvider
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MultiBlocProvider(
                  providers: [
                    // Bloc to manage images in the product details screen
                    BlocProvider(
                      create: (context) => ImagesCubit()..changePage(0),
                    ),
                    // Bloc to manage the current index of the product in the details screen
                    BlocProvider(
                      create: (context) => ProductIndexCubit(product)
                        ..changeProductCurrentIndex(0),
                    ),
                    // Bloc to manage the product counter in the details screen
                    BlocProvider(
                      create: (context) => ProductCounterCubit(),
                    ),
                  ],
                  child: ProductDetailsScreen(
                    product: product,
                  ),
                ),
              ),
            );
          },
          // Display a custom card item for each product
          child: CustomCardItem(product: product),
        );
      },
    );
  }
}
