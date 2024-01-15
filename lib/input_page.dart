import 'package:flutter/material.dart';
import 'results_page.dart';
import 'plus_minus_card.dart';
import 'slider_card.dart';
import 'bottom_button.dart';

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
          BottomButton(
            buttonText: 'Calculate',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ResultsPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
