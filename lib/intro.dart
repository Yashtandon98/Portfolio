import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'dart:async';

import 'package:portfolio/home.dart';

class intro extends StatefulWidget {
  @override
  _introState createState() => _introState();
}

class _introState extends State<intro> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    starter();
  }

  starter() async {
    var d = new Duration(milliseconds: 2000);
    return new Timer(d, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => home())
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(21, 20, 24, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text('Loading...',style: GoogleFonts.nunito(textStyle: TextStyle(
                  color: Colors.white, letterSpacing: 2, fontSize: 25, fontWeight: FontWeight.bold),)
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: LinearPercentIndicator(
                alignment: MainAxisAlignment.center,
                width: 150,
                animation: true,
                lineHeight: 10,
                animationDuration: 2000,
                percent: 1.0,
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
