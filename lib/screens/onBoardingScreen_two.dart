import 'package:bitshore/screens/onBoardingScreen_three.dart';
import 'package:bitshore/widgets/reusableText.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnBoardingScreenTwo extends StatelessWidget {

  static String id = 'onBoardingScreenTwo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              Container(
                alignment: AlignmentDirectional.topStart,
                child: Row(

                children: [
                ReusableText(textString: 'skip', textColor: Colors.black),
                 Icon(Icons.arrow_forward_ios_rounded, color: Colors.black, size: 10),
  ]
        ),
              ),

              Image.asset('onBoardingTwo.png'),

              ReusableText(textString:'Secure Transactions', textColor: Color(0xFF005CEE), textSize: 25, textWeight: FontWeight.bold, textAligner: TextAlign.left,),
              ReusableText(textString: 'We provide seamless and secure transfers, payment, savings, currency exchanges all over the globe ',
              textColor: Colors.black54, textSize: 18,),

              Container(
                alignment: AlignmentDirectional.bottomEnd,
                padding: EdgeInsets.symmetric(vertical: 20),
                child: FloatingActionButton(backgroundColor: Color(0xFF005CEE),
                    child: ReusableText(textString: 'Next', textColor: Colors.white, textSize: 15 ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                    ),
                    elevation: 5.0,
                    onPressed: (){
                  Navigator.pushNamed(context, OnBoardingScreenThree.id);
                }),
              )

            ]

        ),
      )

    )
    );
  }
}
