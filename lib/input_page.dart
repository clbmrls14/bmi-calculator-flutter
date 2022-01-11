import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print('Male card pressed');
                    },
                    child: ReusableCard(
                      cardColor: activeCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'Male',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print('female card pressed');
                    },
                    child: ReusableCard(
                      cardColor: activeCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'Female',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ReusableCard(
            cardColor: Color(0xff1d1e33),
            cardChild: Text('Slider'),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardColor: activeCardColor,
                    cardChild: Text('Something else'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColor: activeCardColor,
                    cardChild: Text('Something else'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
