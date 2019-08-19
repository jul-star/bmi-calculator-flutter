import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;

  ReusableCard({this.colour, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: this.colour,
      ),
      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
      child: Center(
        child: this.cardChild,
      ),
    );
  }
}
