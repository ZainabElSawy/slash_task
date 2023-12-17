import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view_model/product_counter_cubit/product_counter_cubit.dart';

class CustomQuantityWidget extends StatelessWidget {
  const CustomQuantityWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          // Quantity Text and Minus Button
          Row(
            children: [
              const Text(
                "Quantity",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const SizedBox(width: 20),

              // Minus Button
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.white),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  ),
                ),
                child: GestureDetector(
                  onTap: () {
                    // Decrease the product counter when the minus button is tapped
                    context.read<ProductCounterCubit>().minusFromCounter();
                  },
                  child: const Text(
                    "-",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              // Display the current counter value
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 5,
                ),
                decoration: const BoxDecoration(
                  border: Border.symmetric(
                    horizontal: BorderSide(width: 2, color: Colors.white),
                  ),
                ),
                child: BlocBuilder<ProductCounterCubit, int>(
                  builder: (context, state) {
                    return Text(
                      state.toString(), // Show the current counter value
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                    );
                  },
                ),
              ),

              // Plus Button
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.white),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                ),
                child: GestureDetector(
                  onTap: () {
                    // Increase the product counter when the plus button is tapped
                    context.read<ProductCounterCubit>().addToCounter();
                  },
                  child: const Text(
                    "+",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
