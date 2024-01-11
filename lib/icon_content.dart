import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'constants.dart';

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
          size: kIconSize,
        ),
        const Gap(kIconGapSize),
        Text(
          cardText,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
