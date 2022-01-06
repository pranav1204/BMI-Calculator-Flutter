import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardDesign extends StatelessWidget {
  const CardDesign({@required this.text, @required this.icon});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 100.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(text,
            style: GoogleFonts.ptSans(
              textStyle: TextStyle(
                fontSize: 25.0,
                color: Color(0xFF8D8E98),
              ),
            )),
      ],
    );
  }
}
