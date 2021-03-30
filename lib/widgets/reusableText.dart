import 'package:flutter/material.dart';

class ReusableText extends StatelessWidget {
  String textString;
  Color textColor;
  FontWeight textWeight= FontWeight.normal;
  double textSize;
  TextAlign textAligner;
  String textFamily;

  ReusableText({this.textString, this.textColor, this.textWeight, this.textSize, this.textAligner, this.textFamily});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('$textString', textAlign: textAligner,
          style: TextStyle(
        fontWeight: textWeight,
        fontSize: textSize,
        color: textColor,
            fontFamily: textFamily,
      ),
      ),
    );
  }
}
