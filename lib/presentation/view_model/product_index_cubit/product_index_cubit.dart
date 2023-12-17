import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task/data/models/product.dart';

import '../../../data/models/product_property.dart';

class ProductIndexCubit extends Cubit<int> {
  ProductIndexCubit(this.product) : super(0) {
    colorProperty = product.availableProperties.firstWhere(
      (property) => property.name == "Color",
      orElse: () => ProductProperty(name: "", values: []),
    );
  }

  Product product;
  ProductProperty? colorProperty;

  void changeProductCurrentIndex(int index) {
    emit(index);
  }
}
