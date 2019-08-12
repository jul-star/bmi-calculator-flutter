import 'package:flutter/material.dart';
import 'Types.dart';
import 'BottomRowItem.dart';
import 'CentralWidget.dart';
import 'TopRowItem.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: buildThemeData(),
      home: InputPage(),
    );
  }

  ThemeData buildThemeData() {
    return ThemeData(
        primaryColor: Color(0xFF00bfff), accentColor: Color(0xFf80ff00));
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: TopRowItem(Gender.male),
                ),
                Expanded(
                  child: TopRowItem(Gender.female),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: CentralWidget(),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(child: BottomRowItem(Measure.weight)),
                Expanded(child: BottomRowItem(Measure.height)),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: RaisedButton(
          child: Text('Calculate'),
          onPressed: () {
            print('Calculate');
          },
        ),
      ),
    );
  }
}
