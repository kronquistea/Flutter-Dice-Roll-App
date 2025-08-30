import 'package:flutter/material.dart';

// Creating a custom widget
class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 255, 72, 0),
                Color.fromARGB(255, 244, 121, 83)
              ],
              begin: Alignment.topLeft,
              end: AlignmentGeometry.bottomRight,
            ),
          ),
          child: const Center(
            child: Text(
              'Hello World!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
              ),
            ),
          ),
        );
  }
}