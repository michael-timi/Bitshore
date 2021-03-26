import 'file:///C:/Users/Regina/AndroidStudioProjects/bitshore/lib/widgets/reusableText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                      padding: EdgeInsets.all(5),
                      height: 50,
                     width: 50,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(2.0),
                      border: Border.all( color: Colors.black45)
                    ),
                    ),

                Container(
                    padding: EdgeInsets.all(5),
                    alignment: AlignmentDirectional.centerStart,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          ReusableText(textSize: 15,
                              textString: '$firstString',
                              textColor: Colors.black87,
                              textWeight: FontWeight.bold),

                          ReusableText(textSize: 10,
                              textString: '$secondString',
                              textColor: Colors.black45,
                              textWeight: FontWeight.normal),
                        ]
                    )
                ),

              ],
            ),

            ReusableText(textSize: 12,
                textString: '$lastString',
                textColor: Color(0xFF197CEC),
                textWeight: FontWeight.bold),
          ],
        )
    );
  }
}

/*
 */