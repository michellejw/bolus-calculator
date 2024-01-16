import 'package:flutter/material.dart';
import 'reusable_card.dart';
import '../constants.dart';

class SliderCard extends StatefulWidget {
  SliderCard({
    super.key,
    required this.titleText,
    required this.mainNumber,
    required this.minValue,
    required this.maxValue,
    required this.onValueChanged,
  });

  final String titleText;
  int mainNumber;
  final int minValue;
  final int maxValue;
  final Function(int) onValueChanged;

  @override
  State<SliderCard> createState() => _SliderCardState();
}

class _SliderCardState extends State<SliderCard> {
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
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                widget.mainNumber.toString(),
                style: kNumberTextStyle,
              ),
              const Text(
                ' g',
                style: kLabelTextStyle,
              ),
            ],
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: Colors.white,
              thumbColor: kAccentColor,
              thumbShape: const RoundSliderThumbShape(
                enabledThumbRadius: 15,
              ),
              overlayShape: const RoundSliderOverlayShape(
                overlayRadius: 30,
              ),
              overlayColor: kAccentTransparentColor,
            ),
            child: Slider(
              value: widget.mainNumber.toDouble(),
              min: widget.minValue.toDouble(),
              max: widget.maxValue.toDouble(),
              onChanged: (double newValue) {
                setState(() {
                  widget.mainNumber = newValue.toInt();
                  widget.onValueChanged(widget.mainNumber);
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
