import 'package:flutter/material.dart';
import 'reusableText.dart';

// ignore: must_be_immutable
class SecondBar extends StatelessWidget {
  Color colour;
  String accountBalance;
  String currency;

  SecondBar({this.colour, this.accountBalance, this.currency});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
        height: height * 0.1663,
        width: (width * 0.8553),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            image: AssetImage('assets/images/card.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: height * (20/812)),
            Center(
              child: ReusableText(
                  textString: 'Bitshore new card',
                  textSize: width * (14/375),
                  textColor: Colors.white,
                  textFamily: 'DM Sans',
                  textWeight: FontWeight.w700),
            ),

            SizedBox(height: height * (5/812)),
            ReusableText(
              textString: '$accountBalance',
              textSize: width * (30/375),
              textColor: Colors.white,
              textWeight: FontWeight.w800,
              textFamily: 'Nunito',
            ),

            SizedBox(height: height * (20/812)),
            Container(
                padding: EdgeInsets.symmetric(horizontal: width * (15/375), vertical: 2.0),
                alignment: AlignmentDirectional.bottomEnd,
                child: ReusableText(
                  textString: '$currency',
                  textSize: width * (12/375),
                  textColor: Colors.white,
                  textWeight: FontWeight.w700,
                  textFamily: 'DM Sans',
                )),
          ],
        ));
  }
}
