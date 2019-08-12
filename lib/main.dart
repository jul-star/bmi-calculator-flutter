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
            child: rowItems(TopRowItem(Gender.male), TopRowItem(Gender.female)),
          ),
          Expanded(
            flex: 2,
            child: CentralWidget(),
          ),
          Expanded(
            child: rowItems(
                BottomRowItem(Measure.weight), BottomRowItem(Measure.height)),
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

  Row rowItems(Widget w1, Widget w2) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: w1,
        ),
        Expanded(
          child: w2,
        ),
      ],
    );
  }
}
