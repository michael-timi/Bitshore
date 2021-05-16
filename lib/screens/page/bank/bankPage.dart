import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:bitshore/models/paymentType.dart';

class BankingPage extends StatefulWidget {
  static String id = 'bankingPage';

  @override
  _BankingPageState createState() => _BankingPageState();
}

class _BankingPageState extends State<BankingPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
            top: size.height * 0.03,
            left: size.height * 0.02,
            right: size.height * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topCenter,
              child: Text(
                'Bank and Accounts',
                style: TextStyle(
                    color: Color(0xff343C6B),
                    fontSize: size.width * 0.05,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Padding(
              padding: EdgeInsets.only(left: size.height * 0.01),
              child: Text(
                'Payments and Bills',
                style: TextStyle(
                    color: Color(0xff878787),
                    fontSize: size.width * 0.035,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Container(
                height: size.height * 0.13,
                width: size.width,
                child: ListView.builder(
                    itemCount: paymentList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(right: size.height * 0.015),
                        child: Container(
                          padding: EdgeInsets.all(size.height * 0.015),
                          height: size.height * 0.13,
                          width: size.height * 0.13,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey[50],
                                  offset: Offset(2, 6),
                                  blurRadius: 10),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: size.height * 0.07,
                                width: size.height * 0.07,
                                decoration: BoxDecoration(color: Color(0xffE6E9F3), borderRadius: BorderRadius.circular(8),),
                              )
                            ],
                          ),
                        ),
                      );
                    }))
          ],
        ),
      ),
    ));
  }
}
