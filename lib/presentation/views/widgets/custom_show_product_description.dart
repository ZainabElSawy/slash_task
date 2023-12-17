import 'package:flutter/material.dart';

class CustomShowProductDescription extends StatelessWidget {
  const CustomShowProductDescription({
    Key? key,
    required this.description,
  }) : super(key: key);
  
  // The product description to be displayed
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 30),
      decoration: BoxDecoration(
          color: const Color(0xFF272727), // Background color of the container
          borderRadius: BorderRadius.circular(20)), // Rounded corners of the container
      child: Center(
        child: ExpansionTile(
          collapsedIconColor: Colors.white, // Icon color when the tile is collapsed
          iconColor: Colors.white, // Icon color when the tile is expanded
          title: const Text(
            'Description',
            style: TextStyle(
                fontSize: 20, 
                fontWeight: FontWeight.bold, 
                color: Colors.white), // Styling for the title
          ),
          children: [
            // Expanded content revealed when the tile is expanded
            Padding(
              padding: const EdgeInsets.only(bottom: 20, top: 10),
              child: Text(
                description,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ), // Styling for the description text
              ),
            )
          ],
        ),
      ),
    );
  }
}
