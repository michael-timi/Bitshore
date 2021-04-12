import 'package:bitshore/widgets/bottomNavBar.dart';
import 'package:bitshore/widgets/reusableText.dart';
import 'package:bitshore/widgets/secondBar.dart';
import 'package:bitshore/widgets/thirdBar.dart';
import 'package:bitshore/widgets/transactionItems.dart';
import 'package:bitshore/widgets/upperBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static String id = 'homePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> transactionList = [];

    transactionList.add(
      TransactionItems(
        firstString: 'Draco Hunco Flops',
        secondString: '04:59 AM',
        lastString: 'NGN 12,000.00',
      ),
    );

    transactionList.add(
      TransactionItems(
        firstString: 'Drugs for John',
        secondString: '02:59 PM',
        lastString: 'NGN 300.00',
      ),
    );

    transactionList.add(
      TransactionItems(
        firstString: 'Supermarket transfer',
        secondString: '12:06 AM',
        lastString: 'NGN 25000.00',
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  UpperBar(),

                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: SecondBar(
                                colour: Color(0xFF005CEE),
                                accountBalance: '320,000.00',
                                currency: 'NGN'),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: SecondBar(
                                colour: Colors.black,
                                accountBalance: '50,000.00',
                                currency: 'AED'),
                          ),
                        ],
                      )),

                  ThirdBar(),

                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReusableText(
                            textString: 'Recent Transactions',
                            textColor: Colors.black54,
                            textSize: 12,
                            textWeight: FontWeight.bold),
                        ReusableText(
                            textString: 'view all',
                            textColor: Colors.black45,
                            textSize: 10,
                            textWeight: FontWeight.bold),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black26)),
                    child: ListView.separated(
                        itemCount: transactionList.length,
                        separatorBuilder: (BuildContext context, int index) =>
                            const Divider(),
                        itemBuilder: (BuildContext context, int index) {
                          return transactionList[index];
                        }),
                  ),
                  SizedBox(height: 10),
                ]),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
