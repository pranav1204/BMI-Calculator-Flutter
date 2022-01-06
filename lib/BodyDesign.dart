import 'package:flutter/material.dart';

class BodyDesign extends StatelessWidget {
  BodyDesign({@required this.colour, this.cardChild, this.onPress});

  final Color colour;

  final Widget cardChild;

  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
