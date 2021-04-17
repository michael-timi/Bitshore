import 'package:bitshore/screens/onboarding/onBoardingScreen_four.dart';
import 'package:bitshore/screens/onboarding/onBoardingScreen_one.dart';
import 'package:bitshore/screens/onboarding/onBoardingScreen_three.dart';
import 'package:bitshore/screens/onboarding/onBoardingScreen_two.dart';
import 'package:bitshore/screens/page/loginPage.dart';
import 'package:bitshore/screens/page/pageNav.dart';
import 'package:bitshore/screens/page/signupPage.dart';
import 'package:bitshore/screens/page/welcomePage.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/page/exchangePage.dart';
import 'package:bitshore/screens/page/profilePage.dart';
import 'package:bitshore/screens/page/savingsPage.dart';
import 'package:flutter/material.dart';
import 'screens/page/bankPage.dart';
import 'screens/page/homepage_Screen.dart';
import 'screens/page/otpPage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Bitshore',
        theme: ThemeData(
          primaryColor: Color(0xff005CEE),
          textTheme: GoogleFonts.nunitoTextTheme(Theme.of(context).textTheme),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: OnBoardingScreenOne(),
        routes: {
          OnBoardingScreenOne.id: (context) => OnBoardingScreenOne(),
          OnBoardingScreenTwo.id: (context) => OnBoardingScreenTwo(),
          OnBoardingScreenThree.id: (context) => OnBoardingScreenThree(),
          OnBoardingScreenFour.id: (context) => OnBoardingScreenFour(),
          SignUpPage.id: (context) => SignUpPage(),
          WelcomePage.id: (context) => WelcomePage(),
          LoginPage.id: (context) => LoginPage(),
          WelcomePage.id: (context) => WelcomePage(),
          OtpPage.id: (context) => OtpPage(),
          BitshorePages.id:(context) => BitshorePages(),
          HomePage.id: (context) => HomePage(),
          BankPage.id: (context) => BankPage(),
          SavingsPage.id: (context) => SavingsPage(),
          ExchangePage.id: (context) => ExchangePage(),
          ProfilePage.id: (context) => ProfilePage(),
        });
  }
}
