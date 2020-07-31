import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(21, 20, 24, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Transform(
                child: Container(
                  child: LinearPercentIndicator(
                    alignment: MainAxisAlignment.center,
                    width: 250,
                    animation: true,
                    lineHeight: 10,
                    animationDuration: 1500,
                    percent: 1.0,
                    linearStrokeCap: LinearStrokeCap.roundAll,
                    progressColor: Colors.white,
                    backgroundColor: Color.fromRGBO(21, 20, 24, 1),
                  ),
                ),
                alignment: FractionalOffset.center,
                transform: new Matrix4.rotationZ(2.0944),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
