import 'package:bitshore/screens/onBoardingScreen_four.dart';
import 'package:bitshore/screens/onBoardingScreen_one.dart';
import 'package:bitshore/screens/onBoardingScreen_three.dart';
import 'package:bitshore/screens/onBoardingScreen_two.dart';

import 'exchangePage.dart';
import 'file:///C:/Users/Regina/AndroidStudioProjects/bitshore/lib/screens/homepage_Screen.dart';
import 'package:bitshore/profilePage.dart';
import 'package:bitshore/savingsPage.dart';
import 'package:flutter/material.dart';
import 'fundTransferPage.dart';

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
        OnBoardingScreenThree.id: (context) => OnBoardingScreenFour(),
        HomePage.id: (context) => HomePage(),
        ProfilePage.id: (context) => ProfilePage(),
        SavingsPage.id: (context) => SavingsPage(),
        TransferPage.id: (context) => TransferPage(),
        ExchangePage.id: (context) => ExchangePage(),
    }
    );
  }
}

