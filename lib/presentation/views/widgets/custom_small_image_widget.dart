import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view_model/images_cubit/images_cubit.dart';

class CustomSmallImageWidget extends StatelessWidget {
  const CustomSmallImageWidget({
    Key? key,
    required this.index,
    required this.image,
    this.onTap,
  }) : super(key: key);
  final int index;
  final String image;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: BlocBuilder<ImagesCubit, int>(
        builder: (context, state) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: state == index
                  ? Border.all(width: 2, color: Colors.amber)
                  : null,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                image,
                fit: BoxFit.fill,
                width: 50,
                height: 50,
              ),
            ),
          );
        },
      ),
    );
  }
}
