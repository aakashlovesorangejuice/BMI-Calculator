import 'package:flutter/cupertino.dart';

import 'constants.dart';

class BottomButton extends StatelessWidget {

  final String text;
  final Function onPressed;

  BottomButton({this.text,@required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,

      child: Container(
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20.0,
            ),
          ),
        ),
        color: kBottomButtonColor,
        margin: EdgeInsets.only(top:10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}