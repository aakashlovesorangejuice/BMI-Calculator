import 'package:flutter/material.dart';

import 'change_bmi.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0D22),
        //accentColor: Colors.black45,
        scaffoldBackgroundColor: Color(0xFF0A0D22),
      ),
      home: ChangeBMI(),
    );
  }
}



