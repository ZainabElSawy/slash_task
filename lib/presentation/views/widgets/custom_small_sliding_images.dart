import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view_model/images_cubit/images_cubit.dart';
import 'custom_small_image_widget.dart';

class CustomSmallSlidingImages extends StatelessWidget {
  final List images;
  const CustomSmallSlidingImages({
    Key? key,
    required this.images,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        images.length,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: CustomSmallImageWidget(
            image: images[index],
            index: index,
            onTap: () {
              context.read<ImagesCubit>().changePage(index);
              context.read<ImagesCubit>().pageConstroller.animateToPage(
                    index,
                    duration: const Duration(
                      milliseconds: 500,
                    ), // Set your preferred duration
                    curve: Curves.easeInOut, // Set your preferred curve
                  );
            },
          ),
        ),
      ),
    );
  }
}


