import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'background/lava_painter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> with TickerProviderStateMixin {

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
        duration: Duration(milliseconds: 1),
        color: Colors.black,
        child: AnimatedBuilder(
            animation: _animation,
            builder: (BuildContext context, Widget child) {
              final color = tweenColors.evaluate(
                  AlwaysStoppedAnimation(_animation.value));
              return Container(
                color: Color.fromRGBO(30, 30, 30, 1),
                child: CustomPaint(
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/50),
                          child: Container(
                            width: MediaQuery.of(context).size.width/1.2,
                            height: MediaQuery.of(context).size.width/20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(100)),
                              color: Color.fromRGBO(37, 37, 37, 1)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 50.0),
                                  child: Container(
                                    child: Text("Logo"),
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: EdgeInsets.only(right: 50.0),
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.all(15.0),
                                          child: FlatButton(
                                            onPressed: () => {},
                                              child: Center(
                                                child: Text("Home", style: TextStyle(color: Color.fromRGBO(254, 254, 254, 1),
                                                    fontWeight: FontWeight.w500, fontSize: MediaQuery.of(context).size.width/80),),
                                              )
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(15.0),
                                          child: Container(
                                            child: Text("Projects", style: TextStyle(color: Color.fromRGBO(254, 254, 254, 1),
                                                fontWeight: FontWeight.w500, fontSize: MediaQuery.of(context).size.width/80),),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(15.0),
                                          child: Container(
                                            child: Text("About", style: TextStyle(color: Color.fromRGBO(254, 254, 254, 1),
                                                fontWeight: FontWeight.w500, fontSize: MediaQuery.of(context).size.width/80),),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(15.0),
                                          child: Container(
                                            child: Text("Skills", style: TextStyle(color: Color.fromRGBO(254, 254, 254, 1),
                                                fontWeight: FontWeight.w500, fontSize: MediaQuery.of(context).size.width/80),),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                            child: Text("Yash Tandon", style: TextStyle(color: Color.fromRGBO(254, 254, 254, 1), fontWeight: FontWeight.bold, fontSize: MediaQuery.of(context).size.width/15),)
                        ),
                        Spacer(),
                        Container(
                          width: MediaQuery.of(context).size.width/2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width/20,
                                height: MediaQuery.of(context).size.width/20,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(37, 37, 37, 1),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Icon(FontAwesomeIcons.linkedinIn, color: Color.fromRGBO(254, 254, 254, 1), size: MediaQuery.of(context).size.width/50,),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width/20,
                                height: MediaQuery.of(context).size.width/20,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(37, 37, 37, 1),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Icon(FontAwesomeIcons.github, color: Color.fromRGBO(254, 254, 254, 1), size: MediaQuery.of(context).size.width/50),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width/20,
                                height: MediaQuery.of(context).size.width/20,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(37, 37, 37, 1),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Icon(FontAwesomeIcons.instagram, color: Color.fromRGBO(254, 254, 254, 1), size: MediaQuery.of(context).size.width/50),
                                ),
                              ),
                            ],
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
