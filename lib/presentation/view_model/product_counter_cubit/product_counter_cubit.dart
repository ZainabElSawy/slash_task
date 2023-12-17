import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCounterCubit extends Cubit<int> {
  ProductCounterCubit() : super(0);
  int count = 0;
  addToCounter() {
    emit(++count);
  }

  minusFromCounter() {
    emit(--count);
  }
}
