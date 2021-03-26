import 'package:flutter/material.dart';


class ReusableText extends StatelessWidget {
  String textString = '';
  final Color textColor;
  final FontWeight textWeight;
  final double textSize;
  final TextAlign textAligner;

  ReusableText({this.textString, this.textColor, this.textWeight, this.textSize, this.textAligner});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('$textString', textAlign: textAligner,
          style: TextStyle(
        fontWeight: textWeight,
        fontSize: textSize,
        color: textColor,
      )
      ),
    );
  }
}
