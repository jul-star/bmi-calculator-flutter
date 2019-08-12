import 'package:flutter/material.dart';
import 'Types.dart';

class BottomRowItem extends StatefulWidget {
  BottomRowItem(this.measure);
  final Measure measure;
  @override
  _BottomRowItemState createState() => _BottomRowItemState(measure);
}

class _BottomRowItemState extends State<BottomRowItem> {
  _BottomRowItemState(this.measure);
  Measure measure;

  @override
  Widget build(BuildContext context) {
    String title = (measure == Measure.height ? 'heigth' : 'age');
    return Container(
      decoration: BoxDecoration(
          color: Color(0x501DFA1A), borderRadius: BorderRadius.circular(10.0)),
      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
      child: SafeArea(
        child: Text(title),
      ),
    );
  }
}
