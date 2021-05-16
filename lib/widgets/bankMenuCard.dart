import 'package:flutter/material.dart';
import 'package:bitshore/models/bankMenu.dart';

// ignore: must_be_immutable
class BankMenuCard extends StatelessWidget {
  BankMenuCard({this.bankMenu});

  BankMenu bankMenu;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(right: height * 0.01),
      child: Container(
        height: size.height * 0.04,
        width: size.height * 0.11,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Column(
          children: [
            SizedBox(height: height * 0.01),
            Container(
              height: size.height * 0.06,
              width: size.height * 0.06,
              decoration: BoxDecoration(
                  color: Color(0xffC4C4C4), borderRadius: BorderRadius.circular(5)),
            ),
            SizedBox(height: height * 0.005),
            Text(bankMenu.name,  style: TextStyle(
                color: Color(0xff828282),
                fontSize: size.width * 0.025,
                fontWeight: FontWeight.w600),),
          ],
        ),
      ),
    );
  }
}
