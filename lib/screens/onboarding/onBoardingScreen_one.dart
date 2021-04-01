import 'dart:async';
import 'package:bitshore/widgets/reusableText.dart';
import 'package:flutter/material.dart';

import 'onBoardingScreen_two.dart';

class OnBoardingScreenOne extends StatefulWidget {
  static String id = 'onBoardingScreen';

  @override
  _OnBoardingScreenOneState createState() => _OnBoardingScreenOneState();
}

class _OnBoardingScreenOneState extends State<OnBoardingScreenOne> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 8),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => OnBoardingScreenTwo())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF005CEE),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/bitshoreLogo2.png',
                  color: Colors.white, height: 30, width: 50),
              ReusableText(
                  textString:
                      'Bitshore is your first bank for Dubai and Nigeria! We are here to give you the best banking experience.',
                  textColor: Colors.white,
                  textSize: 20,
                  textAligner: TextAlign.center),
              Image.asset('assets/images/onBoardingOne.png'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ReusableText(
                      textString: 'get started', textColor: Colors.white),
                  Icon(Icons.arrow_forward_ios_rounded,
                      color: Colors.white, size: 10),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
