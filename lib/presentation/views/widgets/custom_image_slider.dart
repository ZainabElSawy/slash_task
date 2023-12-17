import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view_model/images_cubit/images_cubit.dart';
import 'custom_image_widget.dart';

class CustomImageSlider extends StatelessWidget {
  final List images;
  const CustomImageSlider({
    Key? key,
    required this.images,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: PageView.builder(
        clipBehavior: Clip.none,
        itemCount: images.length,
        onPageChanged: (value) {
          context.read<ImagesCubit>().changePage(value);
        },
        controller: context.read<ImagesCubit>().pageConstroller,
        itemBuilder: (BuildContext context, int index) {
          return AnimatedBuilder(
            animation: context.read<ImagesCubit>().pageConstroller,
            builder: (context, child) {
              double value = 0.0;
              if (context
                  .read<ImagesCubit>()
                  .pageConstroller
                  .position
                  .haveDimensions) {
                value = index.toDouble() -
                    (context.read<ImagesCubit>().pageConstroller.page ?? 0);
                value = (value * 0.13).clamp(-1, 1);
              }
              // Calculate the translation value based on the absolute value of the rotation angle
              double translationValue = value.abs() *
                  410; // Adjust this value to control the vertical translation
              
              return Transform(//<== to transform the neigbours of the image below the current image
                transform: Matrix4.translationValues(0, translationValue, 0),
                child: Transform.rotate(//<== to transform all the images in angler path 
                  angle: pi * value,
                  child: CustomImageWidget(image: images[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

