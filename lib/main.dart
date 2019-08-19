import 'package:flutter/material.dart';

import 'package:bmi_calculator/Screens/ResultPage.dart';
import 'package:bmi_calculator/Screens/InputPage.dart';

//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: buildThemeData(),
      routes: {
        '/': (context) => InputPage(
              height: 180,
              weight: 80,
              age: 50,
            ),
        '/1': (context) => ResultPage(
              height: 180,
              weight: 80,
              age: 50,
            ),
      },
    );
  }

  ThemeData buildThemeData() {
    return ThemeData(
        primaryColor: Color(0xFF00bfff), accentColor: Color(0xFf80ff00));
  }
}
