import 'package:bitshore/screens/onBoardingScreen_five.dart';
import 'package:bitshore/screens/onBoardingScreen_four.dart';
import 'package:bitshore/screens/onBoardingScreen_one.dart';
import 'package:bitshore/screens/onBoardingScreen_three.dart';
import 'package:bitshore/screens/onBoardingScreen_two.dart';
import 'exchangePage.dart';
import 'package:bitshore/profilePage.dart';
import 'package:bitshore/savingsPage.dart';
import 'package:flutter/material.dart';
import 'fundTransferPage.dart';
import 'screens/homepage_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: OnBoardingScreenOne(),
      routes: {
        OnBoardingScreenOne.id: (context) => OnBoardingScreenOne(),
        OnBoardingScreenTwo.id: (context) => OnBoardingScreenTwo(),
        OnBoardingScreenThree.id: (context) => OnBoardingScreenThree(),
        OnBoardingScreenFour.id: (context) => OnBoardingScreenFour(),
        OnBoardingScreenFive.id: (context) => OnBoardingScreenFive(),
        HomePage.id: (context) => HomePage(),
        ProfilePage.id: (context) => ProfilePage(),
        SavingsPage.id: (context) => SavingsPage(),
        TransferPage.id: (context) => TransferPage(),
        ExchangePage.id: (context) => ExchangePage(),
    }
    );
  }
}

