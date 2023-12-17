import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view_model/images_cubit/images_cubit.dart';
import 'custom_image_widget.dart';

class CustomImageSlider extends StatefulWidget {
  final List images;
  const CustomImageSlider({
    Key? key,
    required this.images,
  }) : super(key: key);

  @override
  State<CustomImageSlider> createState() => _CustomImageSliderState();
}

class _CustomImageSliderState extends State<CustomImageSlider> {
  @override
  void initState() {
    super.initState();
    // Delay the execution of the transformation to the next frame
    Future.delayed(const Duration(microseconds: 1), () {
      // Jump to the first page when the widget is initialized
      context.read<ImagesCubit>().pageConstroller.jumpToPage(0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: PageView.builder(
        clipBehavior: Clip.none,
        itemCount: widget.images.length,
        onPageChanged: (value) {
          // Notify the ImagesCubit about the page change
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
                // Calculate the value for rotation and translation
                value = index.toDouble() -
                    (context.read<ImagesCubit>().pageConstroller.page ?? 0);
                value = (value * 0.13).clamp(-1, 1);
              }
              // Calculate the translation value based on the absolute value of the rotation angle
              double translationValue = value.abs() *
                  410; // Adjust this value to control the vertical translation

              return Transform(
                // To transform the neighbors of the image below the current image
                transform: Matrix4.translationValues(0, translationValue, 0),
                child: Transform.rotate(
                  // To transform all the images in an angular path
                  angle: pi * value,
                  child: CustomImageWidget(image: widget.images[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
