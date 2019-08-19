import 'dart:math';
import 'package:bmi_calculator/Types.dart';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weigth, this.gender, this.age});
  final int height;
  final int weigth;
  final int age;
  final Gender gender;
  double _bmi;
  String Calculate() {
    _bmi = weigth / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi <= 18.5) {
      return 'Underweight';
    } else {
      return 'Not specified';
    }
  }
}
