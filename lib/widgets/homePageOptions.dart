import 'dart:ui';

import 'package:flutter/material.dart';
import 'reusableText.dart';

class HomePageOptions extends StatelessWidget {

  final String firstText;
  final String secondText;
  final String lastText;

  HomePageOptions({ this.firstText, this.secondText, this.lastText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
    height: 80,
    decoration: BoxDecoration(
      color: Colors.white,
    ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,

            children: [
                 Expanded(
                   child: Container(
                     padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 1.0),
                     alignment: AlignmentDirectional.topEnd,
                     child: Icon(Icons.arrow_forward_rounded,
                       color: Color(0xFF30459D),
                       size: 13,
                ),
                   ),
                 ),

             Expanded(
               child: Container(
                   padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
                   alignment: AlignmentDirectional.centerStart,
                   child: ReusableText(textString: firstText, textWeight: FontWeight.bold, textColor: Color(0xFF30459D), textSize: 14, textFamily: 'Nunito',)),
             ),

              Expanded(
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
                    alignment: AlignmentDirectional.centerStart,
                    child: ReusableText(textString: secondText, textWeight: FontWeight.bold, textColor: Color(0xFF30459D), textFamily: 'DM Sans', textSize: 14,)),
              ),

              Expanded(
                child: Container(
                    padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 3.0),
                    alignment: AlignmentDirectional.bottomCenter,
                    child: ReusableText(textString: lastText, textWeight: FontWeight.bold, textColor: Color(0xFF197CEC), textSize: 10, textAligner: TextAlign.left,)),
              ),
            ]

        ),
    );

  }
}
