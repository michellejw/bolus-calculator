import 'package:flutter/material.dart';
import 'themes/theme.dart';
import 'input_page.dart';

void main() {
  runApp(const BolusCalculator());
}

class BolusCalculator extends StatelessWidget {
  const BolusCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    final MaterialTheme materialTheme = MaterialTheme(ThemeData().textTheme);

    return MaterialApp(
      theme: materialTheme.dark(), // Use the light theme
      title: 'Bolus Calculator App',
      home: const InputPage(),
    );
  }
}
