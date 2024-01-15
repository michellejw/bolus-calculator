import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'results_page.dart';
import 'plus_minus_card.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key, required this.title});

  final String title;

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int foodAmount = 1;
  int servingCarbs = 1;
  int servingAmount = 1;
  int bgValue = 100;
  int carbRatio = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Center(
          child: Text(
            widget.title,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: PlusMinusCard(
                    titleText: 'SERVING CARBS',
                    mainNumber: servingCarbs,
                    minValue: 1,
                  ),
                ),
                Expanded(
                  child: PlusMinusCard(
                    titleText: 'SERVING AMOUNT',
                    mainNumber: servingAmount,
                    minValue: 1,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SliderCard(
              titleText: 'FOOD AMOUNT',
              mainNumber: foodAmount,
              minValue: 0,
              maxValue: 100,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: PlusMinusCard(
                    titleText: 'BG VALUE',
                    mainNumber: bgValue,
                  ),
                ),
                Expanded(
                  child: PlusMinusCard(
                    titleText: 'CARB RATIO',
                    mainNumber: carbRatio,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ResultsPage(),
                ),
              );
            },
            child: Container(
              color: kAccentColor,
              height: kBottomBarHeight,
              width: double.infinity,
              margin: const EdgeInsets.only(top: 10.0),
              padding: const EdgeInsets.only(bottom: 20.0),
              child: const Center(
                child: Text(
                  'Calculate',
                  style: kLargeButtonTextStyle,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SliderCard extends StatefulWidget {
  SliderCard({
    super.key,
    required this.titleText,
    required this.mainNumber,
    required this.minValue,
    required this.maxValue,
  });

  final String titleText;
  int mainNumber;
  final int minValue;
  final int maxValue;

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
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
