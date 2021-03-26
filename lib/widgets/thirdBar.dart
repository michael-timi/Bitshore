import 'package:bitshore/savingsPage.dart';
import 'package:flutter/material.dart';
import '../exchangePage.dart';
import '../fundTransferPage.dart';
import 'homePageOptions.dart';

class ThirdBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

     height: 20,
      width: 380,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color(0xFF005CEE),
      ),

        child: Row(

          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(12, 12, 6, 12),
                  child: MaterialButton(
                    padding: EdgeInsets.zero,
                    elevation: 5.0,
                    child: HomePageOptions(firstText: 'Add', secondText: 'Money', lastText: 'Fund your account', onPressed: (){
                      Navigator.pushNamed(context, TransferPage.id);
                    },),
                  )),
            ),

            Expanded(
              child: Padding(
                  padding: EdgeInsets.fromLTRB(6, 12, 6, 12,),
                  child: MaterialButton(
                    padding: EdgeInsets.zero,
                    elevation: 5.0,
                    child: HomePageOptions( firstText: 'My', secondText: 'Cards', lastText: 'Manage your cards', onPressed: () {
                Navigator.pushNamed(context, SavingsPage.id);
              },),
                  )),
            ),

            Expanded(
              child: Padding(
                  padding: EdgeInsets.fromLTRB(6, 12, 12, 12),
                  child: MaterialButton(
                    padding: EdgeInsets.zero,
                    elevation: 5.0,
                    child: HomePageOptions( firstText: 'Savings', secondText: 'Plans', lastText: 'Create savings plans',onPressed: () {
                Navigator.pushNamed(context, ExchangePage.id);
              },),
                  )),
            ),

          ],

      ),
    );
  }
}
