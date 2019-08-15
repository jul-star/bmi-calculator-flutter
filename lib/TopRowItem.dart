import 'Types.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopRowItem extends StatefulWidget {
  TopRowItem({this.callback, this.gender});
  final Function(Gender) callback;
  final Gender gender;
  @override
  _TopRowItemState createState() => _TopRowItemState();
}

class _TopRowItemState extends State<TopRowItem> {
  @override
  Widget build(BuildContext context) {
    String title = (widget.gender == Gender.male ? 'Male' : 'Female');
    IconData genderIcon = (widget.gender == Gender.male
        ? FontAwesomeIcons.mars
        : FontAwesomeIcons.venus);
    return FlatButton(
      splashColor: Color(0xAA121314),
      onPressed: () => TopRowItemPressed(),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              genderIcon,
              size: 30.0,
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              title,
              style: TextStyle(
                fontFamily: 'Arrial',
                fontSize: 18.0,
                color: Color(0xFF8D8E98),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Gender TopRowItemPressed() {
    print('Gender: $widget.gender');
    widget.callback(widget.gender);
  }
}
