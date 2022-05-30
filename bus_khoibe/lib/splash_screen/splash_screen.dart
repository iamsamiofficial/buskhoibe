import 'dart:async';

import 'package:bus_khoibe/mainScreen/home_page.dart';
import 'package:bus_khoibe/mainScreen/main_screen.dart';
import 'package:flutter/material.dart';


class MySplashScreen extends StatefulWidget {
  const MySplashScreen({ Key? key }) : super(key: key);

  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {

  startTimer()
  {
    Timer(Duration(seconds: 10), () async {
      //Send User to homeScreen
      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
    });
  }


  @override
  void initState() {
    // TODO: implement initState
    
    startTimer();
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.blue[100],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage("images/bus.gif")),
              Text("BUS KHOIBEE!!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}