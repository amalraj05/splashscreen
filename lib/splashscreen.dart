import 'package:flutter/material.dart';
import 'package:splashscreen1/main.dart';

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image(
      image: AssetImage("asset/Rectangle 24.png",),
      fit: BoxFit.cover,
    height: double.infinity,
    width: double.infinity,
    alignment: Alignment.center,
    ),
    Padding(
      padding: const EdgeInsets.only(left:5,top: 100),
      child: Column(
        children: [
          Text("Welcome",
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 70,color: Color(hexColor("#2D6936"))),),
        Padding(
          padding: const EdgeInsets.only(right: 70,top: 20),
          child: Text("We're glad that that \n you are here",style: TextStyle(fontSize: 25,color: Color(hexColor("#2D6936"))),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 80,top: 400),
          child: ElevatedButton(
            child: Text("Lets get started",style: TextStyle(color: Color(hexColor("#FFFFFF")),fontSize: 20),),
            style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              primary: Color(hexColor("#47734D"),),fixedSize: Size(250, 50),
            ),
            onPressed: () {},
          ),
        ),],
        
      ),
    )
        ],
      ),
    );
  }
}