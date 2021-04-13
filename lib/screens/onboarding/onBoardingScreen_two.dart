import 'package:bitshore/screens/page/signupPage.dart';
import 'package:bitshore/widgets/reusableText.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'onBoardingScreen_three.dart';

class OnBoardingScreenTwo extends StatelessWidget {
  static String id = 'onBoardingScreenTwo';


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(32.0),
            child: Column(
                children: [
                  Column(
                    children: [
                      InkWell(
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Row(children: [
                            ReusableText(
                                textString: 'skip', textColor: Colors.black, textSize: 14, textFamily: 'DM Sans',),
                            Icon(Icons.arrow_forward_ios_rounded,
                                color: Colors.black, size: 10),
                          ]),
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()),
                          );
                        },
                      ),
                    ],
                  ),
SizedBox(height: size.height * 0.18),
                  Image.asset('assets/images/onBoardingTwo.png'),
                  SizedBox(height: size.height * 0.18),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableText(
                        textString: 'Secure Transactions',
                        textColor: Color(0xFF343C6B),
                        textSize: size.height * 0.03,
                        textWeight: FontWeight.bold,
                        textAligner: TextAlign.left,
                      ),
                      SizedBox(height: 20),
                      ReusableText(
                        textString:
                        'We provide seamless and secure transfers, payment, savings, currency exchanges all over the globe ',
                        textSize: 14,
                        textFamily: 'DM Sans',
                          textWeight: FontWeight.bold,
                        textColor: Color(0xFF404040)
                      ),

                    ],
                  ),
                  SizedBox(height: size.height * 0.05),
                  Container(
                    alignment: AlignmentDirectional.bottomEnd,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 8,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Color(0xff003FA4),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            SizedBox(width: 3),
                            Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Color(0xff005CEE))),
                            ),
                            SizedBox(width: 3),
                            Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Color(0xff005CEE))),
                            ),
                          ],
                        ),
                        FloatingActionButton(
                            backgroundColor: Color(0xFF003FA4),
                            child: ReusableText(
                                textString: 'Next',
                                textColor: Colors.white,
                                textSize: 15, textFamily: 'DM Sans',),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, OnBoardingScreenThree.id);
                            }),
                      ],
                    ),
                  )
                ]),
          ),
        ));
  }
}
