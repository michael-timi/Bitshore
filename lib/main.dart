import 'package:bitshore/screens/homepage_Screen.dart';
import 'package:bitshore/screens/page/homePage.dart';
//import 'package:bitshore/screens/page/homepage_Screen.dart';
import 'package:bitshore/screens/onboarding/onBoardingScreen_four.dart';
import 'package:bitshore/screens/onboarding/onBoardingScreen_one.dart';
import 'package:bitshore/screens/onboarding/onBoardingScreen_three.dart';
import 'package:bitshore/screens/onboarding/onBoardingScreen_two.dart';
import 'package:bitshore/screens/page/loginPage.dart';
import 'package:bitshore/screens/page/otpPage.dart';
//import 'package:bitshore/screens/page/loginPage.dart';
//import 'package:bitshore/screens/page/otpPage.dart';
import 'package:bitshore/screens/page/signupPage.dart';
import 'package:bitshore/screens/page/welcomePage.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/page/exchangePage.dart';
import 'package:bitshore/screens/page/profilePage.dart';
import 'package:bitshore/screens/page/savingsPage.dart';
import 'package:flutter/material.dart';
import 'screens/page/fundTransferPage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        title: 'Bitshore',
        theme: ThemeData(
          primaryColor: Color(0xff005CEE),
          textTheme:
              GoogleFonts.nunitoSansTextTheme(Theme.of(context).textTheme),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage(),
        routes: {
          OnBoardingScreenOne.id: (context) => OnBoardingScreenOne(),
          OnBoardingScreenTwo.id: (context) => OnBoardingScreenTwo(),
          OnBoardingScreenThree.id: (context) => OnBoardingScreenThree(),
          OnBoardingScreenFour.id: (context) => OnBoardingScreenFour(),
          WelcomePage.id: (context) => WelcomePage(),
          HomePage.id: (context) => HomePage(),
          SignUpPage.id: (context) => SignUpPage(),
          LoginPage.id: (context) => LoginPage(),
          OtpPage.id: (context) => OtpPage(),
          HomePage.id: (context) => HomePage(),
          ProfilePage.id: (context) => ProfilePage(),
          SavingsPage.id: (context) => SavingsPage(),
          TransferPage.id: (context) => TransferPage(),
          ExchangePage.id: (context) => ExchangePage(),
        });
  }
}
