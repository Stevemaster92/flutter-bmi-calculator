import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/action_card.dart';
import 'package:bmi_calculator/widgets/bottom_button.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: Text('Your Result', style: kTitleTextStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: ActionCard(
              color: kInactiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('LOW', style: kResultTextStyle),
                  Text('18.3', style: kBMITextStyle),
                  Column(
                    children: <Widget>[
                      Text('Normal BMI range:', style: kBMIRangeTextStyle),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        '18.5 - 25 kg/m²',
                        style: kBMIBodyTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Your BMI result is quite low, you should eat more!',
                      style: kBMIBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            'RE-CALCULATE YOUR BMI',
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
