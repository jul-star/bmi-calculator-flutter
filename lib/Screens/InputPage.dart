import 'package:flutter/material.dart';

import 'package:bmi_calculator/Widgets/BottomRowItem.dart';
import 'package:bmi_calculator/Widgets/CentralWidget.dart';
import 'package:bmi_calculator/Widgets/TopRowItem.dart';
import 'package:bmi_calculator/Widgets/ReusableCard.dart';
import 'package:bmi_calculator/Types.dart';
import 'package:bmi_calculator/Constants.dart';
import 'package:bmi_calculator/Screens/ResultPage.dart';

Color maleColor = kActiveCardColour;
Color femaleColor = kInactiveCardColour;
Color centerColour = kActiveCardColour;
Color weightColour = kActiveCardColour;
Color heightColour = kActiveCardColour;

class InputPage extends StatefulWidget {
  InputPage({@required this.height, @required this.weight, @required this.age});
  int height;
  int weight;
  int age;
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

  void SetWeight(int w) {
    setState(() {
      widget.weight = w;
    });
  }

  void SetHeight(int h) {
    setState(() {
      widget.height = h;
    });
  }

  void SetAge(int a) {
    setState(() {
      widget.age = a;
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
            child: ReusableCard(
                colour: centerColour,
                cardChild: CentralWidget(SetVal: SetHeight)),
          ),
          Expanded(
            child: rowItems(
              ReusableCard(
                  colour: weightColour,
                  cardChild: BottomRowItem(
                      measure: Measure.weight, SetVal: SetWeight)),
              ReusableCard(
                  colour: heightColour,
                  cardChild:
                      BottomRowItem(measure: Measure.age, SetVal: SetAge)),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: RaisedButton(
          child: Text('Calculate'),
          onPressed: () {
            print('Calculate');
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ResultPage(
                          age: widget.age,
                          height: widget.height,
                          weight: widget.weight,
                        )));
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
