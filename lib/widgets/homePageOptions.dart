import 'file:///C:/Users/Regina/AndroidStudioProjects/bitshore/lib/widgets/reusableText.dart';
import 'package:flutter/material.dart';

class HomePageOptions extends StatelessWidget {
  final Function onPressed;
  final String firstText;
  final String secondText;
  final String lastText;

  HomePageOptions({this.firstText, this.secondText, this.lastText, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(12.0),
    color: Colors.white,

    ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,

            children: [
                 Expanded(
                   child: Container(
                     padding: EdgeInsets.all(3),
                     alignment: AlignmentDirectional.topEnd,
                     child: Icon(Icons.arrow_forward_rounded,
                       color: Color(0xFF197CEC),
                       size: 24,
                ),
                   ),
                 ),

             Expanded(
               child: Container(
                   padding: EdgeInsets.symmetric(horizontal: 3.0, vertical: 1.0),
                   alignment: AlignmentDirectional.centerStart,
                   child: ReusableText(textString: firstText, textWeight: FontWeight.bold, textColor: Color(0xFF197CEC),)),
             ),

              Expanded(
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 3.0, vertical: 1.0),
                    alignment: AlignmentDirectional.centerStart,
                    child: ReusableText(textString: secondText, textWeight: FontWeight.bold, textColor: Color(0xFF197CEC),)),
              ),

              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 3.0, vertical: 1.0),
                    alignment: AlignmentDirectional.bottomCenter,
                    child: ReusableText(textString: lastText, textWeight: FontWeight.normal, textColor: Color(0xFF197CEC), textSize: 10,)),
              ),
            ]

        ),
    );

  }
}
