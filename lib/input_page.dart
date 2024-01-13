import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'package:gap/gap.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key, required this.title});

  final String title;

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int foodAmount = 0;
  int servingCarbs = 0;

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
                  child: ReusableCard(
                    cardColor: kMainCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'SERVING CARBS',
                          style: kLabelTextStyle,
                          textAlign: TextAlign.center,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          textBaseline: TextBaseline.alphabetic,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Text(
                              servingCarbs.toString(),
                              style: kNumberTextStyle,
                            ),
                            Text(
                              ' g',
                              style: kLabelTextStyle,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {},
                              shape: const CircleBorder(),
                              backgroundColor: const Color(0xFF4C4F5E),
                              child: const Icon(
                                FontAwesomeIcons.minus,
                                color: Colors.white,
                              ),
                            ),
                            Gap(20.0),
                            FloatingActionButton(
                              onPressed: () {},
                              shape: const CircleBorder(),
                              backgroundColor: Color(0xFF4C4F5E),
                              child: const Icon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const Expanded(
                  child: ReusableCard(
                    cardColor: kMainCardColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardColor: kMainCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'FOOD AMOUNT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        foodAmount.toString(),
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
                      value: foodAmount.toDouble(),
                      min: 0,
                      max: 100,
                      onChanged: (double newValue) {
                        setState(() {
                          foodAmount = newValue.toInt();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardColor: kMainCardColor,
                  ),
                ),
                Expanded(
                    child: ReusableCard(
                  cardColor: kMainCardColor,
                )),
              ],
            ),
          ),
          Container(
            color: kAccentColor,
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
