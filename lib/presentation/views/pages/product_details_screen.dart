import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:slash_task/data/models/product.dart';
import 'package:slash_task/presentation/view_model/product_index_cubit/product_index_cubit.dart';
import 'package:slash_task/presentation/views/widgets/custom_image_slider.dart';

import '../widgets/custom_add_to_cart_button.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_color_palette.dart';
import '../widgets/custom_material_available_widget.dart';
import '../widgets/custom_product_info.dart';
import '../widgets/custom_quantity_widget.dart';
import '../widgets/custom_show_product_description.dart';
import '../widgets/custom_size_available_widget.dart';
import '../widgets/custom_small_sliding_images.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;
  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const CustomAppBar(
          title: "Product Details"), // Custom app bar with title
      body: SingleChildScrollView(
        physics:
            const BouncingScrollPhysics(), // Enable bouncing effect when scrolling
        child: BlocBuilder<ProductIndexCubit, int>(
          builder: (context, state) {
            // Build the UI based on the current selected index from ProductIndexCubit
            return Column(
              children: [
                // Custom image slider displaying product images
                CustomImageSlider(
                  images: product.variations[state].productVariantImages,
                ),
                const SizedBox(height: 80),
                // Small sliding images strip for quick navigation
                CustomSmallSlidingImages(
                  images: product.variations[state].productVariantImages,
                ),
                const SizedBox(height: 20),
                // Display product information like type, price, and brand
                CustomProductInfo(
                  product: product,
                  currentIndex: state,
                ),
                const SizedBox(height: 15),
                // Custom color palette for selecting product color
                CustomColorPalette(
                  product: product,
                  currentInex: state,
                ),
                const SizedBox(height: 15),
                // Widget displaying available sizes for the product
                CustomSizeAvailableWidge(product: product),
                const SizedBox(height: 15),
                // Widget displaying available materials for the product
                CustomMaterialAvailableWidge(product: product),
                // Widget showing the product description in an expandable tile
                CustomShowProductDescription(
                  description: product.description.toString(),
                ),
                // Widget for selecting and displaying the quantity of the product
                const CustomQuantityWidget(),
                const SizedBox(height: 10),
                // Button for adding the product to the cart
                const CustomAddToCartButton(),
              ],
            );
          },
        ),
      ),
    );
  }
}
