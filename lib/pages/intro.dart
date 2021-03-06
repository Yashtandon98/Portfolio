import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:portfolio/pages/about/aboutpc.dart';
import 'package:portfolio/pages/skills/skillspc.dart';
import 'dart:async';

import 'homepage/home.dart';

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
        builder: (context) => skillpc())
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(30, 30, 30, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text('Loading...',style: GoogleFonts.nunito(textStyle: TextStyle(
                  color: Color.fromRGBO(254, 254, 254, 1), letterSpacing: 2, fontSize: 25, fontWeight: FontWeight.bold),)
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
                progressColor: Color.fromRGBO(244, 202, 54, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
