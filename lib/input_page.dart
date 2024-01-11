import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'package:flip_card/flip_card.dart';
import 'constants.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key, required this.title});

  final String title;

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int foodAmount = 0;

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
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: FlipCard(
                    fill: Fill.fillBack,
                    direction: FlipDirection.HORIZONTAL, // default
                    side: CardSide.FRONT, // The side to initially display.
                    front: ReusableCard(
                      cardColor: kMainCardColor,
                      cardChild: IconContent(
                        cardIcon: FontAwesomeIcons.appleWhole,
                        cardText: 'Serving Carbs (g)',
                      ),
                    ),
                    back: ReusableCard(
                      cardColor: kMainCardColor,
                      cardChild: Center(
                        child: Text(
                          'Back of card!',
                          style: TextStyle(fontSize: 25.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: FlipCard(
                    fill: Fill.fillBack,
                    direction: FlipDirection.HORIZONTAL, // default
                    side: CardSide.FRONT, // The side to initially display.
                    front: ReusableCard(
                      cardColor: kMainCardColor,
                      cardChild: IconContent(
                        cardIcon: FontAwesomeIcons.calculator,
                        cardText: 'Serving Quantity',
                      ),
                    ),
                    back: ReusableCard(
                      cardColor: kMainCardColor,
                      cardChild: Center(
                        child: Text(
                          'Back of card!',
                          style: TextStyle(fontSize: 25.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: FlipCard(
                    fill: Fill.fillBack,
                    direction: FlipDirection.HORIZONTAL, // default
                    side: CardSide.FRONT, // The side to initially display.
                    front: const ReusableCard(
                      cardColor: kMainCardColor,
                      cardChild: IconContent(
                        cardIcon: FontAwesomeIcons.utensils,
                        cardText: 'Food amount',
                      ),
                    ),
                    back: ReusableCard(
                      cardColor: kMainCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Enter Food Amount',
                            style: kLabelTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              SizedBox(
                                width: 150.0,
                                child: TextField(
                                  style: kNumberTextStyle,
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  // decoration: InputDecoration(
                                  //   hintText: foodAmount.toString(),
                                  // ),
                                  onChanged: (value) {
                                    setState(() {
                                      foodAmount = int.parse(value);
                                    });
                                  },
                                ),
                              ),
                              const Text('grams'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: FlipCard(
                    fill: Fill.fillBack,
                    direction: FlipDirection.HORIZONTAL, // default
                    side: CardSide.FRONT, // The side to initially display.
                    front: ReusableCard(
                      cardColor: kMainCardColor,
                      cardChild: IconContent(
                        cardIcon: FontAwesomeIcons.droplet,
                        cardText: 'Current BG',
                      ),
                    ),
                    back: ReusableCard(
                      cardColor: kMainCardColor,
                      cardChild: Center(
                        child: Text(
                          'Back of card!',
                          style: TextStyle(fontSize: 25.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: FlipCard(
                    fill: Fill.fillBack,
                    direction: FlipDirection.HORIZONTAL, // default
                    side: CardSide.FRONT, // The side to initially display.
                    front: ReusableCard(
                      cardColor: kMainCardColor,
                      cardChild: IconContent(
                        cardIcon: FontAwesomeIcons.syringe,
                        cardText: 'Insulin:Carb Ratio',
                      ),
                    ),
                    back: ReusableCard(
                      cardColor: kMainCardColor,
                      cardChild: Center(
                        child: Text(
                          'Back of card!',
                          style: TextStyle(fontSize: 25.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomBarColor,
            height: kBottomBarHeight,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 10.0),
            child: const Center(
              child: Text('Calculate',
                  style: TextStyle(
                    fontSize: 30.0,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
