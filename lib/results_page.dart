import 'package:bmi_calculator/BodyDesign.dart';
import 'package:bmi_calculator/bottom_button.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/Constant.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Your Result',
                style: GoogleFonts.sourceSansPro(
                  textStyle: kTitleTextStyle,
                ),
              )),
          Expanded(
            flex: 8,
            child: BodyDesign(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTestStyle,
                  ),
                  SizedBox(height: 30),
                  Text(
                    bmiResult,
                    style: kBMItextStyle,
                  ),
                  SizedBox(height: 50),
                  Text(
                    ' Normal BMI Range :',
                    style: kRange,
                  ),
                  SizedBox(height: 10),
                  Text(
                    '18 - 25 kg/m2 ',
                    style: kInturpeterTextStyle,
                  ),
                  SizedBox(height: 50),
                  Text(
                    interpretation,
                    style: kInturpeterTextStyle,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'Re-Calculate BMI')
        ],
      ),
    );
  }
}
