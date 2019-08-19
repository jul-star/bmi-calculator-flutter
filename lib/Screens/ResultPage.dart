import 'package:flutter/material.dart';
//import 'InputPage.dart';
import 'package:bmi_calculator/Constants.dart';

class ResultPage extends StatefulWidget {
  ResultPage(
      {@required this.height, @required this.weight, @required this.age});
  int height;
  int weight;
  int age;
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    int a = (widget.age == null ? 50 : widget.age.toInt());
    double h = (widget.height == null ? 1.8 : widget.height.toDouble() / 100);
    double w = (widget.weight == null ? 80 : widget.weight.toDouble());
    print('age: $a, weight: $w, height: $h');
    double result = w / h / h;
    print('result : $result');
    int bmi = result.toInt();
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Text('BMI:'),
          SizedBox(
            height: 5.0,
          ),
          Text(
            bmi.toString(),
            style: kSliderStyle,
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: RaisedButton(
          child: Text('Back'),
          onPressed: () {
            print('Back');
            Navigator.pop(context);
//                MaterialPageRoute(
//                    builder: (context) => InputPage(
//                          age: widget.age,
//                          height: widget.height,
//                          weight: widget.weight,
//                        )));
          },
        ),
      ),
    );
  }
}
