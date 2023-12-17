import 'package:flutter/material.dart';

class CustomShowProductDescription extends StatelessWidget {
  const CustomShowProductDescription({
    Key? key,
    required this.description,
  }) : super(key: key);
  final String description;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 30),
      decoration: BoxDecoration(
          color: const Color(0xFF272727),
          borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: ExpansionTile(
          collapsedIconColor: Colors.white,
          iconColor: Colors.white,
          title: const Text(
            'Description',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20, top: 10),
              child: Text(
                description,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
