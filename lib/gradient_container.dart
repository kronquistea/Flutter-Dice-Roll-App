import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = AlignmentGeometry.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.purple({super.key}) 
    : color1 = Colors.deepPurple, 
      color2 = Colors.indigo;
  
  const GradientContainer.orange({super.key}) 
    : color1 = const Color.fromARGB(255, 255, 60, 0), 
      color2 = const Color.fromARGB(255, 255, 128, 89);

  final Color color1;
  final Color color2;

  void rollDice() {
    // ...
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(children: [
            Image.asset(
              'assets/images/dice-1.png', 
              width: 200,
            ),
            TextButton(
              onPressed: rollDice, 
              child: const Text('Roll Dice!'),
            ),
          ],
        ), 
      ),
    );
  }
}