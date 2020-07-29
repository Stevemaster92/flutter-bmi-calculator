import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';
import '../widgets/action_card.dart';
import '../widgets/icon_label.dart';

enum Gender { FEMALE, MALE }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender gender;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ActionCard(
                    onPressed: () => setState(() => gender = Gender.MALE),
                    color: gender == Gender.MALE
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    child: IconLabel(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ActionCard(
                    onPressed: () => setState(() => gender = Gender.FEMALE),
                    color: gender == Gender.FEMALE
                        ? kActiveCardColor
                        : kInactiveCardColor,
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
            child: ActionCard(
              color: kActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('HEIGHT', style: kLabelTextStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(height.toString(), style: kValueTextStyle),
                      Text('cm', style: kLabelTextStyle),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      thumbColor: Color(0xFFEB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 16.0),
                      overlayColor: Color(0x29EB1555),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 32.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) => setState(() {
                        height = newValue.toInt();
                      }),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ActionCard(color: kActiveCardColor)),
                Expanded(child: ActionCard(color: kActiveCardColor)),
              ],
            ),
          ),
//          Container(
//            color: Color(0xFFEB1555),
//            margin: EdgeInsets.only(top: 16.0),
//            height: 72.0,
//            child: Center(
//              child: Text(
//                'CALCULATE YOUR BMI',
//                style: TextStyle(
//                  fontSize: 20.0,
//                  letterSpacing: 2.5,
//                ),
//              ),
//            ),
//          )
        ],
      ),
    );
  }
}