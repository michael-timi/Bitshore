import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class ReusableText extends StatelessWidget {
  String textString;
  Color textColor;
  FontWeight textWeight = FontWeight.normal;
  double textSize;
  TextAlign textAligner;
  String textFamily;
  TextDecoration stringDecor;
  ReusableText(
      {this.textString,
      this.textColor,
      this.textWeight,
      this.textSize,
      this.textAligner,
      this.textFamily,
      this.stringDecor});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '$textString',
        textAlign: textAligner,
        style: TextStyle(
          fontWeight: textWeight,
          fontSize: textSize,
          color: textColor,
          fontFamily: textFamily,
          decoration: stringDecor,
            //TextDecoration.underline,
        ),
      ),
    );
  }
}
