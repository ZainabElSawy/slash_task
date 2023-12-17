import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task/presentation/view_model/all_products_cubit/all_products_cubit.dart';

import '../widgets/custom_products_grid_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: BlocBuilder<AllProductsCubit, AllProductsLoadedState>(
            builder: (context, state) {
              // Display the list of products using a custom grid view
              return CustomProductsGridView(products: state.products);
            },
          ),
        ),
      ),
    );
  }
}
