import 'package:flutter/material.dart';
import 'reusableText.dart';

class SecondBar extends StatelessWidget {

  Color colour;
  String accountBalance;
  String currency;

  SecondBar({this.colour, this.accountBalance, this.currency});

  @override
  Widget build(BuildContext context) {

    return Container(
        height: 135,
        width: 293,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(image: AssetImage('assets/images/secondBarMask.png'),
            fit: BoxFit.fill,
        ),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  ReusableText(textString: 'Account Balance', textSize: 14, textColor: Colors.white, textFamily: 'DM Sans', textWeight: FontWeight.bold),

                  SizedBox(width: 40),

                  IconButton(
                    iconSize: 15,
                    icon: Icon(Icons.visibility_off_outlined,
                    color: Colors.white),
                    color: Colors.white,
                    onPressed: (){

                    },
                  ),

                  SizedBox(width: 15),

                ],
              ),
            ),

            ReusableText(textString: '$accountBalance', textSize: 30, textColor: Colors.white, textWeight:FontWeight.bold, textFamily: 'Nunito',),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0.0),
                alignment: AlignmentDirectional.bottomEnd,
                child: ReusableText(textString: '$currency', textSize: 12, textColor: Colors.white, textWeight:FontWeight.bold, textFamily: 'DM Sans',)),

            SizedBox(height: 10),

          ],
        )
    );
  }
}

