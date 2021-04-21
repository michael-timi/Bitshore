import 'package:bitshore/widgets/reusableText.dart';
import 'package:bitshore/widgets/secondBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:bitshore/models/bankMenuCard.dart';
import 'package:bitshore/widgets/bankMenuCard.dart';

class BankPage extends StatefulWidget {
  static String id = 'bankingPage';

  @override
  _BankPageState createState() => _BankPageState();
}

class _BankPageState extends State<BankPage> {
  bool _setContainerVisible = true;

  void _toggleContainer() {
    setState(() {
      _setContainerVisible = !_setContainerVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
              top: height * 0.03, left: height * 0.03, right: height * 0.03),
          child: ListView(
            children: [
              Center(
                child: ReusableText(
                  textString: 'Bank and Accounts',
                  textColor: Color(0xFF343C6B),
                  textSize: size.width * 0.05,
                  textWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: size.height * 0.02),
              ReusableText(
                textString: 'Payments and Bills',
                textColor: Color(0xFF828282),
                textSize: size.width * 0.04,
                textWeight: FontWeight.w700,
              ),
              SizedBox(height: size.height * 0.015),
              Container(
                  height: size.height * 0.10,
                  width: size.width * 0.9,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: bankmenucards.length,
                      itemBuilder: (context, index) {
                        return BankMenuCard(bankMenu: bankmenucards[index]);
                      })),
              SizedBox(height: size.height * 0.05),
              Container(

              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ReusableText(
                        textString: 'Base account',
                        textColor: Color(0xFF828282),
                        textSize: 14,
                        textWeight: FontWeight.w700,
                        textFamily: 'Nunito',
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          size: 16,
                          color: Color(0xFF878787),
                        ),
                        onPressed: _toggleContainer,
                      ),
                    ],
                  ),
                  Visibility(
                    visible: _setContainerVisible,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 30),
                      child: Container(
                        height: 177,
                        width: 345,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5.0),
                            bottomRight: Radius.circular(5.0),
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 2.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 20, 10, 35),
                          child: Container(
                            height: 122,
                            width: 332,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1.0,
                                color: Color.fromRGBO(196, 196, 196, 0.34),
                              ),
                              borderRadius: BorderRadius.circular(5.0),
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xFFEDEDED),
                                    Color(0xFFECECEC)
                                  ],
                                  stops: [0.0, 0.5],
                                  tileMode: TileMode.clamp),
                            ),
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10.0),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            ReusableText(
                                              textString: 'Nigerian Wallet 1',
                                              textColor: Color(0xFF4F4F4F),
                                              textSize: 20,
                                              textWeight: FontWeight.w700,
                                              textFamily: 'Nunito',
                                            ),
                                            SizedBox(height: 5),
                                            ReusableText(
                                              textString: 'name',
                                              textColor: Color(0xFFBDBDBD),
                                              textSize: 10,
                                              textWeight: FontWeight.w400,
                                              textFamily: 'Nunito',
                                            ),
                                          ]),
                                    ),
                                    SizedBox(width: 60),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Container(
                                        //alignment: AlignmentDirectional.topEnd,
                                        height: 28,
                                        width: 48,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 1.0,
                                            color: Color.fromRGBO(
                                                196, 196, 196, 0.34),
                                          ),
                                          //color: Color.fromRGBO(196, 196, 196, 0.34),
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: [
                                                Color(0xFFEDEDED),
                                                Color(0xFFECECEC)
                                              ],
                                              stops: [0.0, 0.5],
                                              tileMode: TileMode.clamp),
                                        ),

                                        child: Center(
                                          child: ReusableText(
                                            textString: 'DIR',
                                            textColor: Color(0xFF4F4F4F),
                                            textSize: 14,
                                            textWeight: FontWeight.w700,
                                            textFamily: 'Nunito',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20.0, vertical: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            ReusableText(
                                              textString: 'Lagbaja Tamedo',
                                              textColor: Color(0xFF4F4F4F),
                                              textSize: 14,
                                              textWeight: FontWeight.w700,
                                              textFamily: 'Nunito',
                                            ),
                                            SizedBox(height: 5),
                                            ReusableText(
                                              textString: 'owner',
                                              textColor: Color(0xFFBDBDBD),
                                              textSize: 10,
                                              textWeight: FontWeight.w400,
                                              textFamily: 'Nunito',
                                            ),
                                          ]),
                                      SizedBox(width: 40),
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            ReusableText(
                                              textString: '12/01/2001',
                                              textColor: Color(0xFF4F4F4F),
                                              textSize: 14,
                                              textWeight: FontWeight.w700,
                                              textFamily: 'Nunito',
                                            ),
                                            SizedBox(height: 5),
                                            ReusableText(
                                              textString: 'created',
                                              textColor: Color(0xFFBDBDBD),
                                              textSize: 10,
                                              textWeight: FontWeight.w400,
                                              textFamily: 'Nunito',
                                            ),
                                          ]),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 0.0),
                    child: ClipPath(
                      clipper: ShapeBorderClipper(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ))),
                      child: Container(
                        height: 55,
                        width: 345,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5.0),
                            topRight: Radius.circular(5.0),
                          ),
                          border: Border(
                              bottom: BorderSide(
                            width: 1,
                            color: Color(0xFFC4C4C4),
                          )),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 23.0, vertical: 1.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ReusableText(
                                textString: 'Home account',
                                textColor: Color(0xFF828282),
                                textSize: 14,
                                textWeight: FontWeight.w700,
                                textFamily: 'Nunito',
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  size: 16,
                                  color: Color(0xFF878787),
                                ),
                                onPressed: _toggleContainer,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  // Divider(thickness: 1, color: Color(0xFFC4C4C4),),

                  Visibility(
                    visible: _setContainerVisible,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Container(
                        height: 367,
                        width: 345,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5.0),
                            bottomRight: Radius.circular(5.0),
                          ),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 20, 10, 15),
                              child: Container(
                                height: 122,
                                width: 332,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.0,
                                    color: Color.fromRGBO(196, 196, 196, 0.34),
                                  ),
                                  //color: Color.fromRGBO(196, 196, 196, 0.34),
                                  borderRadius: BorderRadius.circular(5.0),
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Color(0xFFEDEDED),
                                        Color(0xFFECECEC)
                                      ],
                                      stops: [0.0, 0.5],
                                      tileMode: TileMode.clamp),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 25.0),
                                      child: ReusableText(
                                        textString: '350,000.00',
                                        textColor: Color(0xFF4F4F4F),
                                        textSize: 26,
                                        textWeight: FontWeight.w700,
                                        textFamily: 'Nunito',
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 14.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(children: [
                                            SvgPicture.asset(
                                                'assets/images/usdfag.svg',
                                                width: 26.0,
                                                height: 26.0),
                                            SizedBox(width: 8),
                                            ReusableText(
                                              textString: 'Dollar',
                                              textColor: Color(0xFF4F4F4F),
                                              textSize: 14,
                                              textWeight: FontWeight.w700,
                                              textFamily: 'Nunito',
                                            ),
                                          ]),
                                          ReusableText(
                                            textString: 'USD',
                                            textColor: Color(0xFF4F4F4F),
                                            textSize: 14,
                                            textWeight: FontWeight.w700,
                                            textFamily: 'Nunito',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 28),
                              child: SecondBar(
                                  colour: Color(0xFF005CEE),
                                  accountBalance: '000,000.000',
                                  currency: 'NGN'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 40.0),
                child: Container(
                    width: 345,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5.0),
                        bottomRight: Radius.circular(5.0),
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 2.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(Icons.add_circle_outline_outlined),
                          iconSize: 22,
                          color: Colors.black,
                          onPressed: () {},
                        ),
                        SizedBox(width: 6),
                        ReusableText(
                          textString: 'Create DOM account',
                          textColor: Color(0xFF4F4F4F),
                          textSize: 14,
                          textWeight: FontWeight.w700,
                          textFamily: 'Nunito',
                        ),
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class PaymentListView extends StatelessWidget {
  String bill;

  PaymentListView({this.bill});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 7.0, 0),
      child: Container(
        height: 90,
        width: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 46,
                width: 46,
                decoration: BoxDecoration(
                  color: Color(0xFFC4C4C4),
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              SizedBox(height: 8),
              ReusableText(
                textString: bill,
                textSize: 10,
                textFamily: 'Nunito',
                textColor: Color(0xFF828282),
                textWeight: FontWeight.w700,
              )
            ],
          ),
        ),
      ),
    );
  }
}
