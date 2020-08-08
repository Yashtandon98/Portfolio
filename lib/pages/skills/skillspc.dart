import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:portfolio/pages/navbar/navbarpc.dart';
import '../../background/lava_painter.dart';
import 'package:percent_indicator/percent_indicator.dart';

List<Color> colors = [
  Color(0xfff857a6),
  Colors.blue,
  Colors.red,
  Colors.orange,
  Colors.deepPurpleAccent,
  Colors.yellow,
  Colors.green,
  Colors.deepPurple,
  Colors.cyan,
  Color(0xffff5858)
];

class skillpc extends StatefulWidget {
  @override
  _skillpcState createState() => _skillpcState();
}

class _skillpcState extends State<skillpc> with TickerProviderStateMixin{

  Lava lava = Lava(6);
  AnimationController _animation;

  TweenSequence<Color> tweenColors = TweenSequence<Color>(colors
      .asMap()
      .map(
        (index, color) => MapEntry(
      index,
      TweenSequenceItem(
        weight: 1.0,
        tween: ColorTween(
          begin: color,
          end: colors[index + 1 < colors.length ? index + 1 : 0],
        ),
      ),
    ),
  )
      .values
      .toList());

  @override
  void initState() {
    super.initState();
    _animation = AnimationController(duration: Duration(minutes: 5), vsync: this);
    _animation.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: AnimatedContainer(
        duration: Duration(microseconds: 1),
        color: Colors.black,
        child: AnimatedBuilder(
            animation: _animation,
            builder: (BuildContext context, Widget child){
              final color = tweenColors.evaluate(
                  AlwaysStoppedAnimation(_animation.value));
              return Container(
                color: Color.fromRGBO(30, 30, 30, 1),
                child: CustomPaint(
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/50),
                          child: navbarpc(),
                        ),
                        Spacer(),
                        Container(
                          width: MediaQuery.of(context).size.width/2,
                          height: MediaQuery.of(context).size.width/3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            color: Color.fromRGBO(37, 37, 37, 1),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(MediaQuery.of(context).size.width/50),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Skills", style: GoogleFonts.nunito(textStyle: TextStyle(color: Color.fromRGBO(254, 254, 254, 1),
                                    fontWeight: FontWeight.w500, fontSize: MediaQuery.of(context).size.width/30)),),
                                Divider(
                                  color: Color.fromRGBO(254, 254, 254, 1),
                                  thickness: 4,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top:MediaQuery.of(context).size.width/70),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Text('Python',style: GoogleFonts.nunito(textStyle: TextStyle(
                                                  color: Color.fromRGBO(254, 254, 254, 1), letterSpacing: 2, fontSize: 25, fontWeight: FontWeight.bold),)
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(left: 15.0),
                                              child: Container(
                                                width: MediaQuery.of(context).size.width/3.9,
                                                child: LinearPercentIndicator(
                                                  alignment: MainAxisAlignment.spaceEvenly,
                                                  width: MediaQuery.of(context).size.width/4,
                                                  animation: true,
                                                  lineHeight: 30,
                                                  animationDuration: 2000,
                                                  percent: 1.0,
                                                  linearStrokeCap: LinearStrokeCap.roundAll,
                                                  progressColor: Color.fromRGBO(244, 202, 54, 1),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/90),
                                        child: Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                child: Text('Machine Learning',style: GoogleFonts.nunito(textStyle: TextStyle(
                                                    color: Color.fromRGBO(254, 254, 254, 1), letterSpacing: 2, fontSize: 25, fontWeight: FontWeight.bold),)
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: 15.0),
                                                child: Container(
                                                  width: MediaQuery.of(context).size.width/3.9,
                                                  child: LinearPercentIndicator(
                                                    alignment: MainAxisAlignment.spaceEvenly,
                                                    width: MediaQuery.of(context).size.width/4,
                                                    animation: true,
                                                    lineHeight: 30,
                                                    animationDuration: 2000,
                                                    percent: 0.6,
                                                    linearStrokeCap: LinearStrokeCap.roundAll,
                                                    progressColor: Color.fromRGBO(244, 202, 54, 1),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/90),
                                        child: Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                child: Text('Python',style: GoogleFonts.nunito(textStyle: TextStyle(
                                                    color: Color.fromRGBO(254, 254, 254, 1), letterSpacing: 2, fontSize: 25, fontWeight: FontWeight.bold),)
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: 15.0),
                                                child: Container(
                                                  width: MediaQuery.of(context).size.width/3.9,
                                                  child: LinearPercentIndicator(
                                                    alignment: MainAxisAlignment.spaceEvenly,
                                                    width: MediaQuery.of(context).size.width/4,
                                                    animation: true,
                                                    lineHeight: 30,
                                                    animationDuration: 2000,
                                                    percent: 1.0,
                                                    linearStrokeCap: LinearStrokeCap.roundAll,
                                                    progressColor: Color.fromRGBO(244, 202, 54, 1),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/90),
                                        child: Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                child: Text('Python',style: GoogleFonts.nunito(textStyle: TextStyle(
                                                    color: Color.fromRGBO(254, 254, 254, 1), letterSpacing: 2, fontSize: 25, fontWeight: FontWeight.bold),)
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: 15.0),
                                                child: Container(
                                                  width: MediaQuery.of(context).size.width/3.9,
                                                  child: LinearPercentIndicator(
                                                    alignment: MainAxisAlignment.spaceEvenly,
                                                    width: MediaQuery.of(context).size.width/4,
                                                    animation: true,
                                                    lineHeight: 30,
                                                    animationDuration: 2000,
                                                    percent: 1.0,
                                                    linearStrokeCap: LinearStrokeCap.roundAll,
                                                    progressColor: Color.fromRGBO(244, 202, 54, 1),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/90),
                                        child: Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                child: Text('Python',style: GoogleFonts.nunito(textStyle: TextStyle(
                                                    color: Color.fromRGBO(254, 254, 254, 1), letterSpacing: 2, fontSize: 25, fontWeight: FontWeight.bold),)
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: 15.0),
                                                child: Container(
                                                  width: MediaQuery.of(context).size.width/3.9,
                                                  child: LinearPercentIndicator(
                                                    alignment: MainAxisAlignment.spaceEvenly,
                                                    width: MediaQuery.of(context).size.width/4,
                                                    animation: true,
                                                    lineHeight: 30,
                                                    animationDuration: 2000,
                                                    percent: 1.0,
                                                    linearStrokeCap: LinearStrokeCap.roundAll,
                                                    progressColor: Color.fromRGBO(244, 202, 54, 1),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/90),
                                        child: Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                child: Text('Python',style: GoogleFonts.nunito(textStyle: TextStyle(
                                                    color: Color.fromRGBO(254, 254, 254, 1), letterSpacing: 2, fontSize: 25, fontWeight: FontWeight.bold),)
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: 15.0),
                                                child: Container(
                                                  width: MediaQuery.of(context).size.width/3.9,
                                                  child: LinearPercentIndicator(
                                                    alignment: MainAxisAlignment.spaceEvenly,
                                                    width: MediaQuery.of(context).size.width/4,
                                                    animation: true,
                                                    lineHeight: 30,
                                                    animationDuration: 2000,
                                                    percent: 1.0,
                                                    linearStrokeCap: LinearStrokeCap.roundAll,
                                                    progressColor: Color.fromRGBO(244, 202, 54, 1),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  painter: LavaPainter(lava, color: Color.fromRGBO(244, 202, 54, 1)),
                ),
              );
            }
        ),
      ),
    );
  }
}
