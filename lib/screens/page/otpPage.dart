import 'package:bitshore/screens/page/homepage_Screen.dart';
import 'package:bitshore/utils/constant.dart';
import 'package:bitshore/widgets/reusableText.dart';
import 'package:flutter/material.dart';

import 'homePage.dart';

class OtpPage extends StatefulWidget {
  static String id = 'otppage';
  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  //static GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              SizedBox(height: height * 0.1),
              Container(
                height: height / 4,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/otp.png'),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ReusableText(
                        textString: 'Verify OTP',
                        textColor: Color(0xff263238),
                        textSize: 22,
                        textWeight: FontWeight.bold),
                    SizedBox(height: 5),
                    ReusableText(
                        textString: 'Check your emal address for an OTP',
                        textColor: Color(0xff878787),
                        textSize: 14),
                    SizedBox(height: 60),
                    Center(
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 60,
                                width: 60,
                                decoration:
                                    BoxDecoration(color: Color(0xffC4C4C4)),
                                child: Center(
                                    child: Text(
                                  '*',
                                  style: TextStyle(
                                      color: Color(0xff878787),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ))),
                            SizedBox(width: 20),
                            Container(
                                height: 60,
                                width: 60,
                                decoration:
                                    BoxDecoration(color: Color(0xffC4C4C4)),
                                child: Center(
                                    child: Text(
                                  '*',
                                  style: TextStyle(
                                      color: Color(0xff878787),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ))),
                            SizedBox(width: 20),
                            Container(
                                height: 60,
                                width: 60,
                                decoration:
                                    BoxDecoration(color: Color(0xffC4C4C4)),
                                child: Center(
                                    child: Text(
                                  '*',
                                  style: TextStyle(
                                      color: Color(0xff878787),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ))),
                            SizedBox(width: 20),
                            Container(
                                height: 60,
                                width: 60,
                                decoration:
                                    BoxDecoration(color: Color(0xffC4C4C4)),
                                child: Center(
                                    child: Text(
                                  '*',
                                  style: TextStyle(
                                      color: Color(0xff878787),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ))),
                            SizedBox(width: 20),
                            Container(
                                height: 60,
                                width: 60,
                                decoration:
                                    BoxDecoration(color: Color(0xffC4C4C4)),
                                child: Center(
                                    child: Text(
                                  '*',
                                  style: TextStyle(
                                      color: Color(0xff878787),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ))),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    buildTimer(),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: InkWell(
                          child: Container(
                              child: (Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Din`t receive an OTP?',
                                  style: TextStyle(
                                      color: Color(0xff828282),
                                      fontWeight: FontWeight.bold)),
                              SizedBox(width: 5),
                              Text('Resend now',
                                  style: TextStyle(
                                      color: Color(0xff003FA4),
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline)),
                            ],
                          ))),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Homepage()),
                            );
                          }),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This code will expired in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: Duration(seconds: 30),
          builder: (_, value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
