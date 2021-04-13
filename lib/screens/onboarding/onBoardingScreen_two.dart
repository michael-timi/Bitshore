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
        body: Container(
          height: size.height,
            width: size.width,
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: SafeArea(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [

                    Container(
                     // padding: EdgeInsets.symmetric(vertical: 20),
                      width: 47,
                      height: 18,
                      alignment: AlignmentDirectional.topStart,
                      child: Row(children: [
                        ReusableText(
                          textString: 'skip',
                          textColor: Colors.black,
                          textSize: 14,
                          textFamily: 'DM Sans',
                        ),
                        Icon(Icons.arrow_forward_ios_rounded,
                            color: Colors.black, size: 10),
                      ]),
                    ),
                    Image.asset('assets/images/onBoardingTwo.png'),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ReusableText(
                          textString: 'Secure Transactions',
                          textColor: Color(0xFF263238),
                          textSize: 24,
                          textWeight: FontWeight.bold,
                          textAligner: TextAlign.left,
                        ),
                        SizedBox(height: 10),
                        ReusableText(
                            textString:
                                'We provide seamless and secure transfers, payment, savings, currency exchanges all over the globe ',
                            textSize: 14,
                            textFamily: 'DM Sans',
                            textWeight: FontWeight.bold,
                            textColor: Color(0xFF404040)),
                      ],
                    ),
                    Container(
                      width: 66,
                      height: 45,
                      alignment: AlignmentDirectional.bottomEnd,
                      //padding: EdgeInsets.fromLTRB(10, 10, 10,20),
                      child: FloatingActionButton(
                          backgroundColor: Color(0xFF003FA4),
                          child: ReusableText(
                            textString: 'Next',
                            textColor: Colors.white,
                            textSize: 15,
                            textFamily: 'DM Sans',
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          onPressed: () {
                            Navigator.pushNamed(
                                context, OnBoardingScreenThree.id);
                          }),
                    )
                  ]),
            )));
  }
}
