import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'action_card.dart';
import 'icon_label.dart';

const Color activeCardColor = Color(0xFF101427);
const Color inactiveCardColor = Color(0xFF1D1F33);

enum Gender { FEMALE, MALE }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ActionCard(
                    onPressed: () => setState(() {
                      selectedGender = Gender.MALE;
                    }),
                    color: selectedGender == Gender.MALE
                        ? activeCardColor
                        : inactiveCardColor,
                    child: IconLabel(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ActionCard(
                    onPressed: () => setState(() {
                      selectedGender = Gender.FEMALE;
                    }),
                    color: selectedGender == Gender.FEMALE
                        ? activeCardColor
                        : inactiveCardColor,
                    child: IconLabel(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ActionCard(color: activeCardColor),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ActionCard(color: activeCardColor)),
                Expanded(child: ActionCard(color: activeCardColor)),
              ],
            ),
          ),
          RaisedButton(
            onPressed: () {},
            color: Color(0xFFEB1555),
            padding: EdgeInsets.symmetric(vertical: 24.0),
            child: Center(
              child: Text(
                'CALCULATE YOUR BMI',
                style: TextStyle(
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
