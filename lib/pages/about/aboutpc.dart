import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:portfolio/pages/navbar/navbarpc.dart';
import '../../background/lava_painter.dart';
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

class aboutpc extends StatefulWidget {
  @override
  _aboutpcState createState() => _aboutpcState();
}

class _aboutpcState extends State<aboutpc> with TickerProviderStateMixin {

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
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/50),
                          child: navbarpc(),
                        ),
                        Spacer(),
                        Container(
                          width: MediaQuery.of(context).size.width/1.2,
                          height: MediaQuery.of(context).size.width/3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
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
                                      Text("About Me", style: GoogleFonts.nunito(textStyle: TextStyle(color: Color.fromRGBO(254, 254, 254, 1),
                                          fontWeight: FontWeight.w500, fontSize: MediaQuery.of(context).size.width/30)),),
                                      Divider(
                                        color: Color.fromRGBO(254, 254, 254, 1),
                                        thickness: 4,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top:MediaQuery.of(context).size.width/70),
                                        child: Text("lddvnvjfkvbnkfdvbnfdkjvndfvklfnvfvfvfkddjfkjsdfnhjsdkfnsdjffnsdfkjfnsdfjkf", style: GoogleFonts.nunito(textStyle: TextStyle(color: Color.fromRGBO(254, 254, 254, 1),
                                            fontWeight: FontWeight.w500, fontSize: MediaQuery.of(context).size.width/60)),),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width/5,
                                height: MediaQuery.of(context).size.width/3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(50)),
                                  color: Color.fromRGBO(37, 37, 37, 1),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/80,MediaQuery.of(context).size.width/80,MediaQuery.of(context).size.width/80,0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        width: MediaQuery.of(context).size.width/5,
                                        height: MediaQuery.of(context).size.width/4.5,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(50)),
                                          color: Color.fromRGBO(37, 37, 37, 1),
                                          image: new DecorationImage(
                                              image: new AssetImage('man.jpg'),
                                              fit: BoxFit.cover
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: MediaQuery.of(context).size.width/90,),
                                      FlatButton(
                                          onPressed: () => {},
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                                          hoverColor: Color.fromRGBO(244, 202, 54, 1),
                                          child: Center(
                                            child: Text("Download Resume", style: GoogleFonts.nunito(textStyle: TextStyle(color: Color.fromRGBO(254, 254, 254, 1),
                                                fontWeight: FontWeight.w500, fontSize: MediaQuery.of(context).size.width/80)),),
                                          )
                                      ),
                                      FlatButton(
                                          onPressed: () => {},
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                                          hoverColor: Color.fromRGBO(244, 202, 54, 1),
                                          child: Center(
                                            child: Text("Show QR Code", style: GoogleFonts.nunito(textStyle: TextStyle(color: Color.fromRGBO(254, 254, 254, 1),
                                                fontWeight: FontWeight.w500, fontSize: MediaQuery.of(context).size.width/80)),),
                                          )
                                      ),
                                    ],
                                  ),
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
