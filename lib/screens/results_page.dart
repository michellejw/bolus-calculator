import 'package:bolus_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bolus_calculator/components/reusable_card.dart';
import 'package:bolus_calculator/components/bottom_button.dart';
import 'package:gap/gap.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({
    super.key,
    required this.bolusAmountText,
    required this.resultText,
    required this.interpretationText,
  });

  final String bolusAmountText;
  final String resultText;
  final String interpretationText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BOLUS CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(bottom: 15.0),
            child: Container(
              margin: const EdgeInsets.only(left: 10.0),
              child: const Text(
                'Your Result',
                style: kMainTitleStyle,
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardColor: kMainCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    resultText,
                    style: kGreenLettersStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(
                        bolusAmountText,
                        style: kLargeNumberTextStyle,
                      ),
                      const Gap(10.0),
                      const Text(
                        'units',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                    ),
                    child: Text(
                      interpretationText,
                      style: kResultsExplainerText,
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            buttonText: 'Re-Calculate',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
