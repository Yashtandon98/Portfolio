import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:portfolio/pages/navbar/navbarpc.dart';
import '../../background/lava_painter.dart';

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
                  painter: LavaPainter(lava, color: Color.fromRGBO(244, 202, 54, 1)),
                ),
              );
            }
        ),
      ),
    );
  }
}
