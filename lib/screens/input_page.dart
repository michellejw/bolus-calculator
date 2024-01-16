import 'package:flutter/material.dart';
import 'results_page.dart';
import 'package:bolus_calculator/components/plus_minus_card.dart';
import 'package:bolus_calculator/components/slider_card.dart';
import 'package:bolus_calculator/components/bottom_button.dart';
import 'package:bolus_calculator/calculator_brain.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int foodAmount = 1;
  int servingCarbs = 1;
  int servingAmount = 1;
  int carbRatio = 15;

  // Set up callbacks
  void updateServingCarbs(int newCarbs) {
    setState(() {
      servingCarbs = newCarbs;
    });
  }

  void updateFoodAmount(int newCarbs) {
    setState(() {
      foodAmount = newCarbs;
    });
  }

  void updateServingAmount(int newCarbs) {
    setState(() {
      servingAmount = newCarbs;
    });
  }

  void updateCarbRatio(int newCarbs) {
    setState(() {
      carbRatio = newCarbs;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: const Center(
          child: Text(
            'BOLUS CALCULATOR',
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
                    onValueChanged: updateServingCarbs,
                  ),
                ),
                Expanded(
                  child: PlusMinusCard(
                    titleText: 'SERVING AMOUNT',
                    mainNumber: servingAmount,
                    minValue: 1,
                    onValueChanged: updateServingAmount,
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
              onValueChanged: updateFoodAmount,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                // Expanded(
                //   child: PlusMinusCard(
                //     titleText: 'BG VALUE',
                //     mainNumber: bgValue,
                //   ),
                // ),
                Expanded(
                  child: PlusMinusCard(
                    titleText: 'CARB RATIO',
                    mainNumber: carbRatio,
                    onValueChanged: updateCarbRatio,
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            buttonText: 'Calculate',
            onTap: () {
              CalculatorBrain calc = CalculatorBrain(
                servingCarbs: servingCarbs,
                servingAmount: servingAmount,
                foodAmount: foodAmount,
                carbRatio: carbRatio,
              );

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    bolusAmountText: calc.calculateBolus(),
                    resultText: calc.getResult(),
                    interpretationText: calc.getInterpretation(),
                  ),
                ),
              );
              // print(calc.calculateBolus());
            },
          ),
        ],
      ),
    );
  }
}
