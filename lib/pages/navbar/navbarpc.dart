import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';

class navbarpc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/40),
            child: Container(
              child: Text("Logo"),
            ),
          ),
          Spacer(),
          Container(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, MediaQuery.of(context).size.width/80, MediaQuery.of(context).size.width/40, MediaQuery.of(context).size.width/80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FlatButton(
                      onPressed: () => {},
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                      hoverColor: Color.fromRGBO(244, 202, 54, 1),
                      child: Center(
                        child: Text("Home", style: GoogleFonts.nunito(textStyle: TextStyle(color: Color.fromRGBO(254, 254, 254, 1),
                            fontWeight: FontWeight.w500, fontSize: MediaQuery.of(context).size.width/80)),),
                      )
                  ),
                  FlatButton(
                    onPressed: () => {},
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                    hoverColor: Color.fromRGBO(244, 202, 54, 1),
                    child: Center(
                      child: Text("About", style: GoogleFonts.nunito(textStyle: TextStyle(color: Color.fromRGBO(254, 254, 254, 1),
                          fontWeight: FontWeight.w500, fontSize: MediaQuery.of(context).size.width/80)),),
                    ),
                  ),
                  FlatButton(
                    onPressed: () => {},
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                    hoverColor: Color.fromRGBO(244, 202, 54, 1),
                    child: Center(
                      child: Text("Skills", style: GoogleFonts.nunito(textStyle: TextStyle(color: Color.fromRGBO(254, 254, 254, 1),
                          fontWeight: FontWeight.w500, fontSize: MediaQuery.of(context).size.width/80)),),
                    ),
                  ),
                  FlatButton(
                    onPressed: () => {},
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                    hoverColor: Color.fromRGBO(244, 202, 54, 1),
                    child: Center(
                      child: Text("Projects", style: GoogleFonts.nunito(textStyle: TextStyle(color: Color.fromRGBO(254, 254, 254, 1),
                          fontWeight: FontWeight.w500, fontSize: MediaQuery.of(context).size.width/80)),),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
