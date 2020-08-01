import 'package:flutter/material.dart';
import 'pages/homepage/home.dart';
import 'pages/intro.dart';

void main() {
  runApp(
    portfolio()
  );
}

class portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yash Tandon',
      debugShowCheckedModeBanner: false,
      home: start(),
    );
  }
}

Widget start(){
  return intro();
}