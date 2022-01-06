import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Constant.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({@required this.onTap, @required this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: GoogleFonts.nanumGothic(
              textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.all(10.0),
        width: double.infinity,
        height: 60.0,
      ),
    );
  }
}
