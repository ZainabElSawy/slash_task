import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'data/static/products.dart';
import 'presentation/view_model/all_products_cubit/all_products_cubit.dart';
import 'presentation/views/pages/home_screen.dart';

void main() {
  runApp(const SlashTask());
}

class SlashTask extends StatelessWidget {
  const SlashTask({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Slash Task',
      home: BlocProvider(
        create: (context) => AllProductsCubit()..loadProducts(sampleProducts),
        child: const HomeScreen(),
      ),
    );
  }
}
