// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/product.dart';

part 'all_products_state.dart';

class AllProductsCubit extends Cubit<AllProductsLoadedState> {
  AllProductsCubit() : super(AllProductsLoadedState(const []));

  loadProducts(List<Product> products) {
    emit(AllProductsLoadedState(products)); 
  }
}
