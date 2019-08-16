import 'package:flutter/material.dart';
import 'Types.dart';
import 'Constants.dart';

class BottomRowItem extends StatefulWidget {
  BottomRowItem(this.measure);
  final Measure measure;
  @override
  _BottomRowItemState createState() => _BottomRowItemState(measure);
}

class _BottomRowItemState extends State<BottomRowItem> {
  _BottomRowItemState(this.measure);
  Measure measure;
  int value = 0;
  @override
  Widget build(BuildContext context) {
    String title = (measure == Measure.weight ? 'weigth' : 'age');
    return Column(
      children: <Widget>[
        Text(
          title + ': ' + value.toString(),
          style: kLabelTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundIconButton(func: Press, sign: Sign.plus, val: value),
            SizedBox(
              width: 10.0,
            ),
            RoundIconButton(func: Press, sign: Sign.minus, val: value),
          ],
        ),
      ],
    );
  }

  void Press(Sign sign, int val) {
    if (sign == Sign.minus) {
      --val;
    } else {
      ++val;
    }
    setState(() {
      value = val;
    });
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.func, this.sign, this.val});
  Function(Sign sign, int val) func;
  Sign sign;
  int val;

  @override
  Widget build(BuildContext context) {
    IconData icon =
        (sign == Sign.minus ? Icons.arrow_downward : Icons.arrow_upward);
    return RawMaterialButton(
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      elevation: 6.0,
      onPressed: () => func(sign, val),
      constraints: BoxConstraints.tightFor(width: 33.0, height: 33.0),
      child: Icon(icon),
    );
  }
}
