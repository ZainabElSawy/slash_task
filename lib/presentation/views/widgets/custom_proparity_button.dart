import 'package:flutter/material.dart';

class CustomProparityButton extends StatelessWidget {
  const CustomProparityButton({
    Key? key,
    this.onTap,
    required this.textColor,
    required this.backgroundColor,
    required this.content,
  }) : super(key: key);
  final void Function()? onTap;
  final Color textColor;
  final Color backgroundColor;
  final String content;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          content,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
