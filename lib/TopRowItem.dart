import 'Types.dart';
import 'package:flutter/material.dart';

class TopRowItem extends StatefulWidget {
  TopRowItem(this.gender);
  final Gender gender;
  @override
  _TopRowItemState createState() => _TopRowItemState(gender);
}

class _TopRowItemState extends State<TopRowItem> {
  _TopRowItemState(this.gender);
  Gender gender;
  @override
  Widget build(BuildContext context) {
    String title = (gender == Gender.male ? 'male' : 'female');
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color(0xFF1DF11E),
      ),
      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
      child: Center(
        child: Text(title),
      ),
    );
  }

  String getText() {
//    return (gender == Gender.male ? 'male' : 'female');
  }
}
