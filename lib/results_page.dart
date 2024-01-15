import 'package:bmi_calculator_flutter_mw/constants.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BOLUS CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              child: const Text(
                'Your Result',
                style: kMainTitleStyle,
              ),
            ),
          ),
          Expanded(
            child: Container(
                child: const ReusableCard(
              cardColor: kMainCardColor,
              cardChild: Column(),
            )),
          )
        ],
      ),
    );
  }
}
