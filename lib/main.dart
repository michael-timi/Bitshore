import 'package:bitshore/screens/onboarding/onBoardingScreen_four.dart';
import 'package:bitshore/screens/onboarding/onBoardingScreen_one.dart';
import 'package:bitshore/screens/onboarding/onBoardingScreen_three.dart';
import 'package:bitshore/screens/onboarding/onBoardingScreen_two.dart';
import 'package:bitshore/screens/page/addCard_Screen.dart';
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
  MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    strengths.forEach((strength) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    });
    return MaterialColor(color.value, swatch);
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Bitshore',
        theme: ThemeData(
          primaryColor: Color(0xff005CEE),
          primarySwatch: createMaterialColor(Color(0xff343C6B)),
          textTheme: GoogleFonts.nunitoTextTheme(Theme.of(context).textTheme),
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
          BankingPage.id: (context) => BankingPage(),
          SavingsPage.id: (context) => SavingsPage(),
          ExchangePage.id: (context) => ExchangePage(),
          ProfilePage.id: (context) => ProfilePage(),
          AddCardScreen.id: (context) => AddCardScreen(),
        });
  }
}
