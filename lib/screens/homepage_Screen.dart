import 'package:bitshore/widgets/upperBar.dart';

import '../widgets/bottomNavBar.dart';
import '../widgets/reusableText.dart';
import '../widgets/secondBar.dart';
import '../widgets/thirdBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/transactionItems.dart';

class HomePage extends StatefulWidget {
  static String id = 'homepage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    List<Widget> transactionList = [];

    transactionList.add(
      TransactionItems(
        firstString: 'Draco Hunco Flops',
        secondString: '04:59 AM',
        lastString: '+120,000.00',
      ),
    );

    transactionList.add(
      TransactionItems(
        firstString: 'Drugs for John',
        secondString: '02:59 PM',
        lastString: '20,000.00',
      ),
    );

    transactionList.add(
      TransactionItems(
        firstString: 'Supermarket transfer',
        secondString: '12:06 AM',
        lastString: '+45,000.00',
      ),
    );

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 335,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
          ),
          SafeArea(
            child: Container(
              child: Column(mainAxisAlignment: MainAxisAlignment.start,

                  children: [
                //SizedBox(height: 100),
                 Container(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 26, vertical: 0.0),
                 child: UpperBar(),
                ),
                Container(
                    height: 135,
                    padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 21),
                    child: ListView(
                      padding: EdgeInsets.all(0.0),
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          height: 135,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 0.0),
                          child: SecondBar(
                              colour: Color(0xFF005CEE),
                              accountBalance: '320,000.00',
                              currency: 'NGN'),
                        ),
                        Container(
                          height: 135,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 0.0),
                          child: SecondBar(
                              colour: Colors.black,
                              accountBalance: '50,000.00',
                              currency: 'AED'),
                        ),

                        Container(
                          height: 135,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 0.0),
                          child: SecondBar(
                              colour: Color(0xFF005CEE),
                            accountBalance: '1,107,040.00',
                            currency: 'USD',),
                        ),
                      ],
                    )),

                    SizedBox(height: size.height * 0.01),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 26),
                      child: Row(
                        children: [
                          Container(
                            height: 8,
                            width: 20,
                            decoration: BoxDecoration(
                                color: Color(0xff003FA4),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          SizedBox(width: 3),
                          Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Color(0xff005CEE))),
                          ),
                          SizedBox(width: 3),
                          Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Color(0xff005CEE))),
                          ),
                        ],
                      ),
                    ),

                Padding(
                  //height: 106,
                 //width: 345,
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 30.0),
                  child: ThirdBar(),
                ),
                Expanded(
                  child: Container(
                    height: 230,
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 22.0, vertical: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ReusableText(
                                textString: 'Recent Transactions',
                                textColor: Color(0xFF4F4F4F),
                                textSize: 14,
                                textWeight: FontWeight.bold,
                                textFamily: 'Nunito',
                              ),
                              ReusableText(
                                textString: 'view all',
                                textColor: Color(0xFF878787),
                                textSize: 12,
                                textWeight: FontWeight.bold,
                                textFamily: 'DM Sans',
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0.0, vertical: 5),
                            height: 200,
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xFF828282))),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  alignment: AlignmentDirectional.centerStart,
                                  child: Text(
                                    '11 Mar 2021',
                                    style: TextStyle(
                                      color: Color(0xff878787),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Divider(),
                                Expanded(
                                  child: Container(
                                    alignment: AlignmentDirectional.center,
                                    child: ListView.separated(
                                        itemCount: transactionList.length,
                                        separatorBuilder:
                                            (BuildContext context, int index) =>
                                                const Divider(),
                                        itemBuilder: (BuildContext context, int index) {
                                          return transactionList[index];
                                        }),
                                  ),
                                ),
                                Divider(),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  alignment: AlignmentDirectional.centerStart,
                                  child: Text(
                                    '12 Mar 2021',
                                    style: TextStyle(
                                      color: Color(0xff878787),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 35),
              ]),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
