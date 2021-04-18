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
    return Container(
        height: 135,
        width: 310,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            image: AssetImage('assets/images/secondCard.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Center(
              child: ReusableText(
                  textString: 'Bitshore new card',
                  textSize: 14,
                  textColor: Colors.white,
                  textFamily: 'DM Sans',
                  textWeight: FontWeight.w700),
            ),

            SizedBox(height: 5),
            ReusableText(
              textString: '$accountBalance',
              textSize: 30,
              textColor: Colors.white,
              textWeight: FontWeight.w800,
              textFamily: 'Nunito',
            ),

            SizedBox(height: 30),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0.0),
                alignment: AlignmentDirectional.bottomEnd,
                child: ReusableText(
                  textString: '$currency',
                  textSize: 12,
                  textColor: Colors.white,
                  textWeight: FontWeight.w700,
                  textFamily: 'DM Sans',
                )),
          ],
        ));
  }
}
