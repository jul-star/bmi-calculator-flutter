import 'Types.dart';
import 'package:flutter/material.dart';

class CentralWidget extends StatefulWidget {
  @override
  _CentralWidgetState createState() => _CentralWidgetState();
}

class _CentralWidgetState extends State<CentralWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0x501DFFAA),
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
      child: Center(child: Text('Hight')),
    );
  }
}
