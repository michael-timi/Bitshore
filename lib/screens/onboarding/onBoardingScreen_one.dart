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
        Duration(seconds: 5),
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
                  color: Colors.white, height: 29, width: 173),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 55),
                child: ReusableText(
                    textString:
                        'Bitshore is your first bank for Dubai and Nigeria! We are here to give you the best banking experience.',
                    textColor: Colors.white,
                    textSize: 14,
                    textAligner: TextAlign.center, textFamily: 'DM Sans'),
              ),
              Image.asset('assets/images/onBoardingOne.png', height: 372.6, width: 500
              ),
              Container(
                height: 21,
                    width: 98,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ReusableText(
                        textString: 'get started', textColor: Colors.white, textSize: 16, textFamily: 'DM Sans'),
                    Icon(Icons.arrow_forward_ios_rounded,
                        color: Colors.white, size: 10),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
