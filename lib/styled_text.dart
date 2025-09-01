import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  // Should maintain const in front of constructor because text will never change (final)
  const StyledText(this.text, {super.key});
  
  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}