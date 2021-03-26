import 'file:///C:/Users/Regina/AndroidStudioProjects/bitshore/lib/widgets/reusableText.dart';
import 'package:flutter/material.dart';

class SecondBar extends StatelessWidget {

  Color colour;
  String accountBalance;
  String currency;

  SecondBar({this.colour, this.accountBalance, this.currency});

  @override
  Widget build(BuildContext context) {

    return Container(
        height: 100,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  ReusableText(textString: 'Account Balance', textSize: 15, textColor: Colors.white,),

                  IconButton(
                    iconSize: 15,
                    icon: Icon(Icons.remove_red_eye_outlined,
                    color: Colors.white),
                    color: Colors.white,
                    onPressed: (){

                    },
                  )

                ],
              ),
            ),

            ReusableText(textString: '$accountBalance', textSize: 25, textColor: Colors.white, textWeight:FontWeight.bold),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 15,),
                alignment: AlignmentDirectional.bottomEnd,
                child: ReusableText(textString: '$currency', textSize: 12, textColor: Colors.white, textWeight:FontWeight.normal)),
          ],
        )
    );
  }
}

