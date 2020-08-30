import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

import 'bottom_button.dart';

class ResultsPage extends StatelessWidget {
  final String getBMI;
  final String getResults;
  final String getInterpretation;
  final Color getColor;
  ResultsPage({this.getBMI,this.getResults,this.getInterpretation,this.getColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Text(
                    'Your Result',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ReusableCard(
                  colour: kActiveContainerColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        getResults,
                        style: TextStyle(
                          color: getColor,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        getBMI,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 80.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        'Normal BMI Range',
                        style: TextStyle(
                          color: kLabelTextColor,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '18.5 - 25 kg/m2',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        getInterpretation,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            BottomButton(
              text: 'RE-CALCULATE BMI',
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
    );
  }
}
