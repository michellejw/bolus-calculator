import 'package:flutter/material.dart';
import 'themes/theme.dart';
import 'input_page.dart';
import 'package:gap/gap.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    // Create an instance of MaterialTheme inside the build method
    final MaterialTheme materialTheme = MaterialTheme(ThemeData().textTheme);

    return MaterialApp(
      theme: materialTheme.dark(), // Use the light theme
      title: 'Bolus Calculator App',
      home: const InputPage(title: 'Bolus Calculator'),
    );
  }
}
