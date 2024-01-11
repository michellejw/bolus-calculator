import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'package:flip_card/flip_card.dart';

const mainCardColor = Color(0xFF1D1E33);
const bottomBarColor = Color(0xFFEB1555);
const bottomBarHeight = 80.0;

class InputPage extends StatefulWidget {
  const InputPage({super.key, required this.title});

  final String title;

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                      cardColor: mainCardColor,
                      cardChild: IconContent(
                        cardIcon: FontAwesomeIcons.appleWhole,
                        cardText: 'Serving Carbs (g)',
                      ),
                    ),
                    back: ReusableCard(
                      cardColor: mainCardColor,
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
                      cardColor: mainCardColor,
                      cardChild: IconContent(
                        cardIcon: FontAwesomeIcons.calculator,
                        cardText: 'Serving Quantity',
                      ),
                    ),
                    back: ReusableCard(
                      cardColor: mainCardColor,
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
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: FlipCard(
                    fill: Fill.fillBack,
                    direction: FlipDirection.HORIZONTAL, // default
                    side: CardSide.FRONT, // The side to initially display.
                    front: ReusableCard(
                      cardColor: mainCardColor,
                      cardChild: IconContent(
                        cardIcon: FontAwesomeIcons.utensils,
                        cardText: 'Food amount',
                      ),
                    ),
                    back: ReusableCard(
                      cardColor: mainCardColor,
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
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: FlipCard(
                    fill: Fill.fillBack,
                    direction: FlipDirection.HORIZONTAL, // default
                    side: CardSide.FRONT, // The side to initially display.
                    front: ReusableCard(
                      cardColor: mainCardColor,
                      cardChild: IconContent(
                        cardIcon: FontAwesomeIcons.droplet,
                        cardText: 'Current BG',
                      ),
                    ),
                    back: ReusableCard(
                      cardColor: mainCardColor,
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
                      cardColor: mainCardColor,
                      cardChild: IconContent(
                        cardIcon: FontAwesomeIcons.syringe,
                        cardText: 'Insulin:Carb Ratio',
                      ),
                    ),
                    back: ReusableCard(
                      cardColor: mainCardColor,
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
            color: bottomBarColor,
            height: bottomBarHeight,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 10.0),
            child: const Center(
              child: Text('Calculate Bolus',
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
