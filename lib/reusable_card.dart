import 'package:flutter/cupertino.dart';

class ReusableCard extends StatelessWidget {
//  const ReusableCard({
//    Key key,
//  }) : super(key: key);
  ReusableCard({@required this.colour, this.cardChild, this.onPress});

  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(10.0),
        child: cardChild,
        decoration: BoxDecoration(
          color: colour,//Color(0xFF1D1F33),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}