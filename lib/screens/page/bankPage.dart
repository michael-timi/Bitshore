import 'package:bitshore/widgets/reusableText.dart';
import 'package:bitshore/widgets/secondBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BankingPage extends StatefulWidget {

  static String id = 'bankingPage';

  @override
  _BankingPageState createState() => _BankingPageState();
}

class _BankingPageState extends State<BankingPage> {

  bool _setBaseContainerVisible = true;
  bool _setHomeContainerVisible = true;

  void _setBaseContainer() {
    setState(() {
      _setBaseContainerVisible = !_setBaseContainerVisible;
    });
  }

  void _setHomeContainer() {
    setState(() {
      _setHomeContainerVisible = !_setHomeContainerVisible;
    });
  }

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        color: Color(0xFFF8F8F8),
        child: SafeArea(

          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,

              children: [

                Padding(
                  padding: EdgeInsets.symmetric(vertical: height * 0.01232),
                  child: Center(
                    child: ReusableText(textString: 'Bank and Accounts',
                      textColor: Color(0xFF343C6B),
                      textSize: width * 0.0533,
                      textWeight: FontWeight.w800,
                      textFamily: 'Nunito',
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: (height * 0.02094), horizontal: width * 0.06933),
                  child: ReusableText(textString: 'Payments and Bills',
                    textColor: Color(0xFF828282),
                    textSize: width * 0.03733,
                    textWeight: FontWeight.w700,
                    textFamily: 'Nunito',
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB((width * 0.064), 0, 0, (height * 0.0825)),
                  child: Container(
                    height:  height * 0.1108,
                    child: Row(
                      children: [

                        Padding(
                          padding: EdgeInsets.fromLTRB((width * 0.00933), 0, (width * 0.00933), 0),
                          child: Container(
                            height: height * 0.1108,
                            width: width * 0.7733 ,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              //shrinkWrap: true,
                              children: [
                                PaymentListView(bill: 'Electricity'),
                                PaymentListView(bill: 'Airtime & Data'),
                                PaymentListView(bill: 'Internet'),
                              ],
                            ),
                          ),
                        ),

                        Container(
                          height: height * 0.1108,
                          width: width * 0.08,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only( topLeft: Radius.circular(5.0) , bottomLeft: Radius.circular(5.0),
                            ),
                            color: Colors.white,
                          ),

                          child: IconButton(
                            icon: Icon( Icons.arrow_forward_ios_rounded,
                              size: width * 0.04,
                              color: Color(0xFF878787),
                            ),
                            onPressed: (){
                              // Scroll the PaymentListView forward
                            },
                          ),
                        ),

                      ],
                    ),
                  ),
                ),



                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB( width * 0.04266, height * 0.00246, width * 0.04266, height * 0.00246,),
                      child: Container(
                        height: height * 0.06773,
                        width: width * 0.92,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only( topLeft: Radius.circular(5.0) , topRight: Radius.circular(5.0),
                          ),
                          color: Colors.white,
                        ),

                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: width * 0.06133, vertical: (height * 0.00123)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              ReusableText(textString: 'Base account',
                                textColor: Color(0xFF828282),
                                textSize: (width * 0.0373),
                                textWeight: FontWeight.w700,
                                textFamily: 'Nunito',
                              ),

                              IconButton(
                                icon: Icon( Icons.keyboard_arrow_down_rounded,
                                  size:  (width * 0.0426),
                                  color: Color(0xFF878787),
                                ),
                                onPressed: _setBaseContainer,

                              ),
                            ],
                          ),
                        ),
                      ),
                    ),


                    Visibility(
                      visible: _setBaseContainerVisible,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB((width * 0.0426), 0.0, (width * 0.0426), (height * 0.03695)),
                        child: Material(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5.0) , bottomRight: Radius.circular(5.0),
                            ),
                          ),
                          elevation: 1.0,
                          child: Container(
                            height: (height * 0.218),
                            width: (width * 0.92),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only( bottomLeft: Radius.circular(5.0) , bottomRight: Radius.circular(5.0),
                              ),
                              color: Colors.white,
                            ),


                            child: Padding(
                              padding: EdgeInsets.fromLTRB((width * 0.02667), (height * 0.02463), (width * 0.02667), (height * 0.043103)),

                              child: Container(
                                height: (height * 0.1502),
                                width: (width * 0.8553),
                                decoration: BoxDecoration(
                                  border: Border.all( width: 1.0,
                                    color: Color.fromRGBO(196, 196, 196, 0.34),
                                  ),
                                  borderRadius: BorderRadius.circular(5.0),
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [Color(0xFFEDEDED),  Color(0xFFECECEC)],
                                      stops: [0.0, 0.5],
                                      tileMode: TileMode.clamp
                                  ),
                                ),

                                child:
                                Column(
                                  children: [

                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(width * 0.0533, height * 0.02667, width * 0.0533, 0.0),
                                          child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                ReusableText(textString: 'Nigerian Wallet 1',
                                                  textColor: Color(0xFF4F4F4F),
                                                  textSize: (width * 0.0533),
                                                  textWeight: FontWeight.w700,
                                                  textFamily: 'Nunito',
                                                ),

                                                SizedBox(height: height * 0.006158
                                                ),

                                                ReusableText(textString: 'name',
                                                  textColor: Color(0xFFBDBDBD),
                                                  textSize: (width * 0.02667),
                                                  textWeight: FontWeight.w400,
                                                  textFamily: 'Nunito',
                                                ),
                                              ]
                                          ),
                                        ),

                                        SizedBox(width: width * 0.16),
                                        Padding(
                                          padding: EdgeInsets.all(width * 0.00533),
                                          child: Container(
                                            //alignment: AlignmentDirectional.topEnd,
                                            height:  height * 0.0345,
                                            width: width * 0.128,
                                            decoration: BoxDecoration(
                                              border: Border.all( width: 1.0,
                                                color: Color.fromRGBO(196, 196, 196, 0.34),
                                              ),
                                              //color: Color.fromRGBO(196, 196, 196, 0.34),
                                              borderRadius: BorderRadius.circular(5.0),
                                              gradient: LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  colors: [Color(0xFFEDEDED) ,  Color(0xFFECECEC)],
                                                  stops: [0.0, 0.5],
                                                  tileMode: TileMode.clamp
                                              ),
                                            ),

                                            child:  Center(
                                              child: ReusableText(textString: 'DIR',
                                                textColor: Color(0xFF4F4F4F),
                                                textSize: width * 0.03733,
                                                textWeight: FontWeight.w700,
                                                textFamily: 'Nunito',
                                              ),
                                            ),

                                          ),
                                        ),
                                      ],
                                    ),

                                    Padding(
                                      padding: EdgeInsets.fromLTRB(width * 0.533, 0.0, width * 0.533, height * 0.0123 ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [

                                          Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [

                                                ReusableText(textString: 'Lagbaja Tamedo',
                                                  textColor: Color(0xFF4F4F4F),
                                                  textSize: width * 0.0373,
                                                  textWeight: FontWeight.w700,
                                                  textFamily: 'Nunito',
                                                ),

                                                ReusableText(textString: 'owner',
                                                textColor: Color(0xFFBDBDBD),
                                                textSize: width * 0.0266,
                                                textWeight: FontWeight.w400,
                                                textFamily: 'Nunito',
                                                ),

                                                SizedBox(height: height * 0.006158),
                                              ]
                                          ),

                                          SizedBox(width: width * 0.10666),

                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              ReusableText(textString: '12/01/2001',
                                                textColor: Color(0xFF4F4F4F),
                                                textSize: width * 0.0373,
                                                textWeight: FontWeight.w700,
                                                textFamily: 'Nunito',
                                              ),

                                              SizedBox(height: height * 0.006158),

                                              ReusableText(textString: 'created',
                                                textColor: Color(0xFFBDBDBD),
                                                textSize: width * 0.0266,
                                                textWeight: FontWeight.w400,
                                                textFamily: 'Nunito',
                                              ),

                                            ]
                                          ),
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
                    ),
                  ],
                ),


               Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(width * 0.042667, 0.0, width * 0.042667, height * 0.002463),

                      child: Container(
                        height: height * 0.067734,
                        width: width * 0.92,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only( topLeft: Radius.circular(5.0) , topRight: Radius.circular(5.0),
                          ),
                          color: Colors.white,
                        ),

                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: width * 0.06133, vertical: height * 0.001231),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              ReusableText(textString: 'Home account',
                                textColor: Color(0xFF828282),
                                textSize: width * 0.0373,
                                textWeight: FontWeight.w700,
                                textFamily: 'Nunito',
                              ),

                              IconButton(
                                icon: Icon( Icons.keyboard_arrow_down_outlined,
                                  size: width * 0.042667,
                                  color: Color(0xFF878787),
                                ),
                                onPressed: _setHomeContainer,

                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // Divider(thickness: 1, color: Color(0xFFC4C4C4),),

                    Visibility(
                      visible: _setHomeContainerVisible,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal:  width * 0.042667),
                        child: Container(
                          height:  height * 0.4520,
                          width:  width * 0.92,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only( bottomLeft: Radius.circular(5.0) , bottomRight: Radius.circular(5.0),
                            ),
                            color: Colors.white,
                          ),

                          child: Column(
                            children: [

                              Padding(
                                padding: EdgeInsets.fromLTRB(width * 0.0266, height * 0.0246, width * 0.0266,  height * 0.0185),

                                child: Container(
                                  height: (height * 0.1502),
                                  width: (width * 0.8553),
                                  decoration: BoxDecoration(
                                    border: Border.all( width: 1.0,
                                      color: Color.fromRGBO(196, 196, 196, 0.34),
                                    ),
                                    //color: Color.fromRGBO(196, 196, 196, 0.34),
                                    borderRadius: BorderRadius.circular(5.0),
                                    gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [Color(0xFFEDEDED),  Color(0xFFECECEC)],
                                        stops: [0.0, 0.5],
                                        tileMode: TileMode.clamp
                                    ),
                                  ),

                                  child: Column(

                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(vertical: height * 0.03079),
                                        child: ReusableText(textString: '350,000.00',
                                          textColor: Color(0xFF4F4F4F),
                                          textSize: width * 0.06933,
                                          textWeight: FontWeight.w700,
                                          textFamily: 'Nunito',
                                        ),
                                      ),

                                      Padding(
                                        padding:  EdgeInsets.symmetric(horizontal: width * 0.0373),

                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [

                                            Row(
                                                children: [

                                                  SvgPicture.asset('assets/images/usdfag.svg', width: width * 0.06933, height: height * 0.0302),

                                                  SizedBox(width: width * 0.0213),

                                                  ReusableText(textString: 'Dollar',
                                                    textColor: Color(0xFF4F4F4F),
                                                    textSize: width * 0.0373,
                                                    textWeight: FontWeight.w700,
                                                    textFamily: 'Nunito',
                                                  ),
                                                ]
                                            ),

                                            ReusableText(textString: 'USD',
                                              textColor: Color(0xFF4F4F4F),
                                              textSize: width * 0.0373,
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
                                padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, height * 0.0344),
                                child: SecondBar(colour: Color(0xFF005CEE), accountBalance: '000,000.000', currency: 'NGN'),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding:  EdgeInsets.fromLTRB( width * 0.042667, 2.0, width * 0.042667, height* 0.04926),
                  child: Material(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5.0) , bottomRight: Radius.circular(5.0),
                      ),
                    ),

                    elevation: 1.0,
                    child: Container(
                        width: width * 0.92,
                        height: height* 0.06158,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only( bottomLeft: Radius.circular(5.0) , bottomRight: Radius.circular(5.0),
                          ),
                          color: Colors.white,
                        ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Icon(Icons.add_circle_outline_outlined),
                              iconSize: width * 0.0586,
                              color: Colors.black,
                              onPressed: (){

                              },
                            ),

                            SizedBox(width: width * 0.000092),

                            ReusableText(textString: 'Create DOM account',
                              textColor: Color(0xFF4F4F4F),
                              textSize: width * 0.0373,
                              textWeight: FontWeight.w700,
                              textFamily: 'Nunito',
                            ),

                          ],
                        )
                    ),
                  ),
                )

              ],
            ),
          ),


        ),
      ),
    );


  }
}

class PaymentListView extends StatelessWidget {

  String bill;

  PaymentListView({this.bill});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, width * 0.0187, 0),

      child: Container(
        height: height * 0.1108,
        width: width * 0.24,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.white,
        ),

        child: Padding(
          padding: EdgeInsets.symmetric(vertical: height* 0.00985, horizontal: width * 0.0213),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Container(
                height: height * 0.0567,
                width: width * 0.12267,
                decoration: BoxDecoration(
                  color: Color(0xFFC4C4C4),
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              SizedBox(height: height* 0.00985),

              ReusableText(textString: bill,
                textSize: width * 0.0266,
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
