import 'package:flutter/material.dart';

import 'package:first_app/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = AlignmentGeometry.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.startColor, this.endColor, {super.key});

  final Color startColor;
  final Color endColor;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            startColor,
            endColor,
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: StyledText('Hello World!'),
      ),
    );
  }
}