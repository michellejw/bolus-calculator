import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);
const iconSize = 80.0;
const iconGapSize = 10.0;

class IconContent extends StatelessWidget {
  const IconContent(
      {super.key, required this.cardIcon, required this.cardText});

  final String cardText;
  final IconData cardIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardIcon,
          size: iconSize,
        ),
        const Gap(iconGapSize),
        Text(
          cardText,
          style: labelTextStyle,
        )
      ],
    );
  }
}
