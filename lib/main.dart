import 'package:flutter/material.dart';
import 'Types.dart';
import 'BottomRowItem.dart';
import 'CentralWidget.dart';
import 'TopRowItem.dart';
import 'ReusableCard.dart';
import 'Constants.dart';

//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

Color maleColor = kActiveCardColour;
Color femaleColor = kInactiveCardColour;
Color centerColour = kActiveCardColour;
Color weightColour = kActiveCardColour;
Color heightColour = kActiveCardColour;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  void UpdateColor(Gender pressed) {
    setState(() {
      if (pressed == Gender.male) {
        maleColor = kActiveCardColour;
        femaleColor = kInactiveCardColour;
      } else {
        maleColor = kInactiveCardColour;
        femaleColor = kActiveCardColour;
      }
    });
  }

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
            child: rowItems(
                ReusableCard(
                    colour: maleColor,
                    cardChild: TopRowItem(
                        callback: this.UpdateColor, gender: Gender.male)),
                ReusableCard(
                    colour: femaleColor,
                    cardChild: TopRowItem(
                        callback: this.UpdateColor, gender: Gender.female))),
          ),
          Expanded(
            flex: 2,
            child:
                ReusableCard(colour: centerColour, cardChild: CentralWidget()),
          ),
          Expanded(
            child: rowItems(
              ReusableCard(
                  colour: weightColour,
                  cardChild: BottomRowItem(Measure.weight)),
              ReusableCard(
                  colour: heightColour, cardChild: BottomRowItem(Measure.age)),
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
