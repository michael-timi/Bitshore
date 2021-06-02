import 'package:bitshore/screens/page/bank/cards.dart';
import 'package:bitshore/screens/page/bank/transferMoney.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:bitshore/models/paymentType.dart';
import 'package:bitshore/widgets/bankMenu.dart';
import 'package:bitshore/models/transferMoney.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
              Stack(
                children: [
                  Container(
                      height: size.height * 0.13,
                      width: size.width,
                      child: ListView.builder(
                          itemCount: paymentList.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding:
                                  EdgeInsets.only(right: size.height * 0.015),
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
                                      padding:
                                          EdgeInsets.all(size.height * 0.01),
                                      height: size.height * 0.07,
                                      width: size.height * 0.07,
                                      decoration: BoxDecoration(
                                        color: Color(0xffE6E9F3),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child:
                                          Image.asset(paymentList[index].image),
                                    ),
                                    SizedBox(height: size.height * 0.01),
                                    Text(
                                      paymentList[index].name,
                                      style: TextStyle(
                                          color: Color(0xff343C6B),
                                          fontSize: size.width * 0.02,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          })),
                  Container(
                    padding: EdgeInsets.only(left: size.width * 0.85),
                    height: size.height * 0.13,
                    width: size.width,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff878787),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.05),
              Text(
                'My Cards',
                style: TextStyle(
                    color: Color(0xff878787),
                    fontSize: size.width * 0.035,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.02),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CardPage()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(size.height * 0.02),
                  height: size.height * 0.21,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Color(0xff3754E0),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[50],
                          offset: Offset(2, 6),
                          blurRadius: 10),
                    ],
                    image: DecorationImage(
                      image: AssetImage('assets/images/dirham_card.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.topRight,
                        child: Text(
                          'Virtual Card',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: size.width * 0.03,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(height: size.height * 0.015),
                      Text(
                        'Virtual Card',
                        style: TextStyle(
                            color: Color(0xffC4C4C4),
                            fontSize: size.width * 0.03,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        '****************',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: size.width * 0.060,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: size.height * 0.04),
                      Container(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              child: Icon(FontAwesomeIcons.eyeSlash,
                                  color: Colors.white, size: size.width * 0.03),
                              onTap: () {},
                            ),
                            Container(
                              height: size.height * 0.02,
                              width: size.width * 0.08,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/aed.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Container(
                height: size.height * 0.14,
                width: size.width,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(5)),
                child: Row(
                  children: [
                    Menu(
                      firstText: 'Transfer',
                      lastText: 'Send money to local bank',
                      ontap: () {
                        _transferBottomScreen(context);
                      },
                    ),
                    SizedBox(width: size.width * 0.03),
                    Menu(
                        firstText: 'Account',
                        lastText: 'Manage accounts and cards'),
                    SizedBox(width: size.width * 0.03),
                    Menu(
                        firstText: 'Earn',
                        lastText: 'Get paid in Dirham for referrals'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _transferBottomScreen(context) {
    var size = MediaQuery.of(context).size;

    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
                bottomRight: Radius.zero,
                bottomLeft: Radius.zero)),
        builder: (BuildContext bc) {
          return Padding(
            padding: EdgeInsets.fromLTRB(size.width * 0.04, size.height * 0.02,
                size.width * 0.04, size.height * 0.02),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20))),
              height: size.height * 0.4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(FontAwesomeIcons.times,
                              color: Colors.black)),
                    ],
                  ),
                  Text(
                    'Transfer Money',
                    style: TextStyle(
                        color: Color(0xff343C6B),
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.05,
                        fontFamily: 'DM Sans'),
                  ),
                  SizedBox(height: size.height * 0.05),
                  Expanded(
                      child: ListView.builder(
                          itemCount: transferList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => TransferMoney(
                                              transfer: transferList[index],
                                            )));
                              },
                              child: Padding(
                                padding:
                                    EdgeInsets.only(bottom: size.height * 0.01),
                                child: Container(
                                  padding: EdgeInsets.all(size.height * 0.01),
                                  height: size.height * 0.07,
                                  width: size.width,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                          color: Color(0xffE6E6E6), width: 2)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        transferList[index].firstText,
                                        style: TextStyle(
                                            color: Color(0xff343C6B),
                                            fontSize: size.width * 0.03,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        transferList[index].secondText,
                                        style: TextStyle(
                                            color: Color(0xff343C6B),
                                            fontSize: size.width * 0.03),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          })),
                ],
              ),
            ),
          );
        });
  }
}
