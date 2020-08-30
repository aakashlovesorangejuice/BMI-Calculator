import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorBrain{

  final int height;
  final int weight;
  double _result;
  CalculatorBrain({@required this.height,@required this.weight});
  String calcBMI(){
    _result=weight/pow(height/100, 2);
    return _result.toStringAsFixed(1);
  }
  String getResult(){
    if(_result>=25)
      return 'OVERWEIGHT';
    else if(_result>18.5)
      return 'NORMAL';
    else return 'UNDERWEIGHT';
  }
  String getInterpretation(){
    if(_result>=25)
      return 'You have a higher than normal body weight. You should exercise more!';
    else if(_result>18.5)
      return 'You have a normal body weight. Good Job!';
    else return 'You have lower than normal body weight. You can eat a bit more!';
  }
  Color getColor(){
    if(_result>=25)
      return Colors.red;
    else if(_result>18.5)
      return Colors.green;
    else return Colors.yellow;
  }
}