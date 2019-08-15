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
    return Container();
  }
}
