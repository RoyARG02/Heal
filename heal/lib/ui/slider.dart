import 'package:flutter/material.dart';

class TextSlider extends StatefulWidget {
  @override
  _TextSliderState createState() => _TextSliderState();

  final String text;
  TextSlider(this.text);
}

class _TextSliderState extends State<TextSlider> {
  double _value = 0.0;
  void onChanged(value) {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      //padding: EdgeInsets.all(5.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Padding(
            padding: EdgeInsets.all(13.0),
            child: new Text(widget.text,
                style: new TextStyle(
                  color: Colors.black45,
                  fontFamily: 'Roboto Medium',
                  fontSize: 18,
                )),
          ),
          new Slider(
            label: '$_value',
            inactiveColor: Color(0xFFEBEBEB),
            activeColor: Color(0xFF00B7ED),
            onChanged: onChanged,
            value: _value,
          ),
        ],
      ),
    );
  }
}
