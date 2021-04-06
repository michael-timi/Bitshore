import 'package:flutter/material.dart';
import 'homePageOptions.dart';

class ThirdBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

     height: 106,
      width: 380,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 2,
            offset: Offset(0, 2)
          )
        ],
        borderRadius: BorderRadius.circular(5.0),
        color: Color(0xFF005CEE),
      ),

        child: Row(

          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(12, 12, 6, 12),
                  child: HomePageOptions(firstText: 'Fund', secondText: 'Account', lastText: 'Fund your account',)),
            ),

            Expanded(
              child: Container(
                  padding: EdgeInsets.fromLTRB(6, 12, 6, 12,),
                  child: HomePageOptions( firstText: 'Create', secondText: 'Account', lastText: 'Manage your cards',)),
            ),

            Expanded(
              child: Container(
                  padding: EdgeInsets.fromLTRB(6, 12, 12, 12),
                  child: HomePageOptions( firstText: 'Start', secondText: 'Saving', lastText: 'Setup a savings plan',)),
            ),
          ],

      ),
    );
  }
}
