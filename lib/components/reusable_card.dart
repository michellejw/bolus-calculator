import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({super.key, this.cardColor, this.cardChild});

  final Color? cardColor;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: cardColor ?? Theme.of(context).colorScheme.primaryContainer,
      ),
      child: cardChild,
    );
  }
}
