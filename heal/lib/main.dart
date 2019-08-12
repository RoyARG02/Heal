import 'package:flutter/material.dart';
import 'ui/slider.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "heal.",
    home: new Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Stack(
        children: [
          new Image.asset("assets/images/ipl.png"),
          Container(
            margin: EdgeInsets.only(top: 110.0),
            child: new Column(
              children: <Widget>[
                //---HEAL TEXT---
                new Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 45.0),
                  child: new Text(
                    "heal.",
                    style: new TextStyle(fontFamily: "Anke", fontSize: 64),
                  ),
                ),

                //---PADDING OR SPACING--
                new SizedBox(
                  height: 50.0,
                ),

                //SLIDERS
                new Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 25.0, horizontal: 35.0),
                  child: new Column(
                    children: <Widget>[
                      new TextSlider("Time"),
                      new TextSlider("Intensity"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          debugPrint("HEY!");
        },
        child: new Image.asset(
          "assets/images/forward.png",
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
