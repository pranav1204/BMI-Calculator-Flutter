import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          appBarTheme: AppBarTheme(
            centerTitle: true,
            color: const Color(0xFF0A0D22),
          ),
          scaffoldBackgroundColor: Color(0xFF05092A)),
      home: AnimatedSplashScreen(
        splash: Image.asset('assets/bmi.png'),
        duration: 2000,
        backgroundColor: Color(0xFF05092A),
        splashTransition: SplashTransition.scaleTransition,
        nextScreen: InputPage(),
      ),
    );
  }
}
