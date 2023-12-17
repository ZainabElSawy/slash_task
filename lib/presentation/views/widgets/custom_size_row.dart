import 'package:flutter/material.dart';

class CustomSizeRow extends StatelessWidget {
  const CustomSizeRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        "Selected Size",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      Text(
        "Size Chart",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    ]);
  }
}
