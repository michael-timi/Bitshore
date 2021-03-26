import 'package:bitshore/widgets/reusableText.dart';
import 'package:bitshore/widgets/reusableTextField.dart';
import 'package:flutter/material.dart';

class OnBoardingScreenFive extends StatelessWidget {

  String userEmail;
  String userPassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
    child: SafeArea(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [

        Image.asset('onBoardingFiveAndSix'),
        ReusableText(textString:'Create an account', textColor: Color(0xFF005CEE), textSize: 25, textWeight: FontWeight.bold, textAligner: TextAlign.left),

        Column(
          children: [
            ReusableText(textString: 'Email address', textColor: Colors.black54, textSize: 18),
            ReusableTextField(keyType: TextInputType.emailAddress, onChangedValue: (value){
                    userEmail= value;
            },),
          ],
        ),

        Column(
          children: [
            ReusableText(textString: 'Password', textColor: Colors.black54, textSize: 18),

          ],
        )

      ],

    ),
    ),
    ),
    );
  }
}
