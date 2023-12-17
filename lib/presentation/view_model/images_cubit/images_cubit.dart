import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImagesCubit extends Cubit<int> {
  ImagesCubit() : super(0);
  int chosedSize = 0;
  int chosedMaterial = 0;
  final PageController pageConstroller = PageController(
    initialPage: 1,
    viewportFraction: 0.8,
  );
  @override
  Future<void> close() {
    pageConstroller.dispose();
    return super.close();
  }

  changePage(int index) {
    emit(index);
  }
}
