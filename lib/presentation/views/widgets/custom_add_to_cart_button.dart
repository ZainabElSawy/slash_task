import 'package:flutter/material.dart';

class CustomAddToCartButton extends StatelessWidget {
  const CustomAddToCartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          // Your button onPressed logic goes here
          showSuccessSnackbar(context, 'Add to cart successfully !');
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: const Color(0xFFB8F02F), // Text color
          elevation: 10, // Elevation for the shadow
          shadowColor: Colors.white, // Color of the shadow
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          child: const Text(
            'Add To Card',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }

  void showSuccessSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF272727),
      ),
    );
  }
}
