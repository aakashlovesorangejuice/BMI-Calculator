import 'package:bmi_calculator/constants.dart';
import 'package:flutter/cupertino.dart';

class CustomColumnWidget extends StatelessWidget {
  CustomColumnWidget({this.icon, this.text});
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w700,
              color: kLabelTextColor,
          ),
        ),
      ],
    );
  }
}