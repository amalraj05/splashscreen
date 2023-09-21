import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splashscreen1/splashscreen.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override 
 void initState() {
    super.initState();
    Timer(
        Duration(seconds: 1),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => first())));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(hexColor("#447055")),
      body: Padding(
        padding: const EdgeInsets.only(left: 70,top: 400),
        child: Row(
          children: [
            Text("GO",style: TextStyle(fontSize:50,color: Color(hexColor("#F5F5F5")) ),
            ),
            Text("GREEN",style: TextStyle(fontSize: 50,color: Color(hexColor("#99DAB3"))),)
          ],
        ),
      ),
      
    );
  }
}
int hexColor(String color) {
  //adding prefix
  String newColor = '0xff' + color;
  //removing # sign
  newColor = newColor.replaceAll('#', '');
  //converting it to the integer
  int finalColor = int.parse(newColor);
  return finalColor;
}