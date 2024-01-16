import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'package:gap/gap.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton(
      {super.key, required this.cardIcon, required this.onPressed});

  final IconData cardIcon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      disabledElevation: 0.0,
      shape: const CircleBorder(),
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      fillColor: const Color(0xFF4C4F5E),
      onPressed: onPressed,
      child: Icon(
        cardIcon,
        color: Colors.white,
      ),
    );
  }
}

class PlusMinusCard extends StatefulWidget {
  PlusMinusCard({
    super.key,
    required this.titleText,
    required this.mainNumber,
    this.minValue = 0,
    this.maxValue = 999,
    required this.onValueChanged,
  })  : assert(minValue <= maxValue),
        assert(mainNumber >= minValue && mainNumber <= maxValue,
            'Value $mainNumber is not between minimum $minValue and maximum $maxValue');

  final String titleText;
  int mainNumber;
  final int minValue;
  final int maxValue;
  final Function(int) onValueChanged;

  @override
  State<PlusMinusCard> createState() => _PlusMinusCardState();
}

class _PlusMinusCardState extends State<PlusMinusCard> {
  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      cardColor: kMainCardColor,
      cardChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.titleText,
            style: kLabelTextStyle,
            textAlign: TextAlign.center,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            textBaseline: TextBaseline.alphabetic,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            children: [
              Text(
                widget.mainNumber.toString(),
                style: kNumberTextStyle,
              ),
              const Text(
                ' g',
                style: kLabelTextStyle,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RoundIconButton(
                cardIcon: FontAwesomeIcons.minus,
                onPressed: () {
                  setState(() {
                    int tempNumber = widget.mainNumber - 1;
                    if ((tempNumber >= widget.minValue) &
                        (tempNumber <= widget.maxValue)) {
                      widget.mainNumber--;
                      widget.onValueChanged(widget.mainNumber);
                    }
                  });
                },
              ),
              const Gap(10.0),
              RoundIconButton(
                cardIcon: FontAwesomeIcons.plus,
                onPressed: () {
                  setState(() {
                    int tempNumber = widget.mainNumber + 1;
                    if ((tempNumber >= widget.minValue) &
                        (tempNumber <= widget.maxValue)) {
                      widget.mainNumber++;
                      widget.onValueChanged(widget.mainNumber);
                    }
                  });
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
