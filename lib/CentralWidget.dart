import 'Types.dart';
import 'package:flutter/material.dart';
import 'Constants.dart';

class CentralWidget extends StatefulWidget {
  @override
  _CentralWidgetState createState() => _CentralWidgetState();
}

class _CentralWidgetState extends State<CentralWidget> {
  int height = 180;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('HEIGHT', style: kLabelTextStyle),
          Row(
            textBaseline: TextBaseline.alphabetic,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            children: <Widget>[
              Text(
                height.toString(),
                style: kSliderStyle,
              ),
              Text(
                'cm',
                style: kSliderStyle,
              )
            ],
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              thumbShape: RoundSliderThumbShape(disabledThumbRadius: 15.0),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
              thumbColor: Colors.red[300],
              activeTrackColor: Colors.white,
              overlayColor: Colors.blue[300],
            ),
            child: Slider(
              min: 100.0,
              max: 250.0,
              value: height.toDouble(),
              inactiveColor: Color(0xAA8d8e98),
              onChanged: SliderMoved,
            ),
          )
        ],
      ),
    );
  }

  void SliderMoved(double val) {
    setState(() {
      height = val.toInt();
    });
  }
}
