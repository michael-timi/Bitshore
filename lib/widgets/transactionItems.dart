import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reusableText.dart';

class TransactionItems extends StatelessWidget {
  final String firstString;
  final String secondString;
  final String lastString;

  TransactionItems({this.firstString, this.secondString, this.lastString});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 36,
                  width: 36,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color: Color(0xFF30459D))),
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    alignment: AlignmentDirectional.centerStart,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ReusableText(
                            textSize: 12,
                            textString: '$firstString',
                            textColor: Color(0xFF262626),
                            textWeight: FontWeight.bold,
                            textFamily: 'DM Sans',
                          ),
                          SizedBox(height: 5),
                          ReusableText(
                            textSize: 10,
                            textString: '$secondString',
                            textColor: Color(0xFF878787),
                            textWeight: FontWeight.normal,
                            textFamily: 'DM Sans',
                          ),
                        ])),
              ],
            ),
            ReusableText(
                textSize: 12,
                textString: '$lastString',
                textColor: Color(0xFF06B692),
                textWeight: FontWeight.normal),
          ],
        ));
  }
}
