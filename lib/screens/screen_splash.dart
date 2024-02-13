import 'dart:async';

import 'package:doctor1_app/screens/screen_my_home.dart';
import 'package:doctor1_app/utils/colors.dart';
import 'package:flutter/material.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  
  @override
  void initState() {
    Timer(
      Duration(seconds: 3), (){
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context){
            return ScreenMyHome();
          })
        );
      }
    );
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: screensize.height,
        width: screensize.width,
        color: colorprimarylight,
        child: Center(
          child: Image.asset(
            "assets/images/doc_splash.gif",
            height: 100,
            width: 80,
          ),
        ),
      ),
    );
  }
}