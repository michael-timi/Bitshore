import 'package:bitshore/screens/page/pages.dart';
import 'package:bitshore/utils/constant.dart';
import 'package:bitshore/widgets/reusableText.dart';
import 'package:flutter/material.dart';

class OtpPage extends StatefulWidget {
  static String id = 'otppage';

  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              SizedBox(height: size.height * 0.08),
              Container(
                height: size.height / 4,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/otp.png'),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ReusableText(
                        textString: 'Verify OTP',
                        textColor: Color(0xff263238),
                        textSize: size.width * 0.05,
                        textWeight: FontWeight.bold),
                    SizedBox(height: size.height * 0.008),
                    ReusableText(
                        textString: 'Check your emal address for an OTP',
                        textColor: Color(0xff878787),
                        textSize: size.width * 0.03),
                    SizedBox(height: size.height * 0.050),
                    Center(
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Container(
                                  height: size.height * 0.06,
                                  width: size.height * 0.06,
                                  decoration:
                                      BoxDecoration(color: Color(0xffC4C4C4)),
                                  child: Center(
                                      child: Text(
                                    '*',
                                    style: TextStyle(
                                        color: Color(0xff878787),
                                        fontSize: size.height * 0.02,
                                        fontWeight: FontWeight.bold),
                                  ))),
                            ),
                            SizedBox(width: size.width * 0.04),
                            Expanded(
                              child: Container(
                                  height: size.height * 0.06,
                                  width: size.height * 0.06,
                                  decoration:
                                      BoxDecoration(color: Color(0xffC4C4C4)),
                                  child: Center(
                                      child: Text(
                                    '*',
                                    style: TextStyle(
                                        color: Color(0xff878787),
                                        fontSize: size.height * 0.02,
                                        fontWeight: FontWeight.bold),
                                  ))),
                            ),
                            SizedBox(width: size.width * 0.04),
                            Expanded(
                              child: Container(
                                  height: size.height * 0.06,
                                  width: size.height * 0.06,
                                  decoration:
                                      BoxDecoration(color: Color(0xffC4C4C4)),
                                  child: Center(
                                      child: Text(
                                    '*',
                                    style: TextStyle(
                                        color: Color(0xff878787),
                                        fontSize: size.height * 0.02,
                                        fontWeight: FontWeight.bold),
                                  ))),
                            ),
                            SizedBox(width: size.width * 0.04),
                            Expanded(
                              child: Container(
                                  height: size.height * 0.06,
                                  width: size.height * 0.06,
                                  decoration:
                                      BoxDecoration(color: Color(0xffC4C4C4)),
                                  child: Center(
                                      child: Text(
                                    '*',
                                    style: TextStyle(
                                        color: Color(0xff878787),
                                        fontSize: size.height * 0.02,
                                        fontWeight: FontWeight.bold),
                                  ))),
                            ),
                            SizedBox(width: size.width * 0.04),
                            Expanded(
                              child: Container(
                                  height: size.height * 0.06,
                                  width: size.height * 0.06,
                                  decoration:
                                      BoxDecoration(color: Color(0xffC4C4C4)),
                                  child: Center(
                                      child: Text(
                                    '*',
                                    style: TextStyle(
                                        color: Color(0xff878787),
                                        fontSize: size.height * 0.02,
                                        fontWeight: FontWeight.bold),
                                  ))),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.04),
                    buildTimer(),
                    SizedBox(height: size.height * 0.04),
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
                              SizedBox(width: size.width * 0.01),
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
                                  builder: (context) => BitshorePages()),
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
