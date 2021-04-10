import 'package:bitshore/widgets/bottomNavBar.dart';
import 'package:bitshore/widgets/home_card.dart';
import 'package:bitshore/widgets/home_menu.dart';
import 'package:bitshore/widgets/transactionItems.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  static String id = 'homepage';
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: [
          Container(
            height: size.height * 0.4,
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
              child: Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:8.0, right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                'Welcome back',
                                style: TextStyle(
                                    color: Color(0xff828282),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            Container(
                              child: Text(
                                'Lagbaja Tamedo',
                                style: TextStyle(
                                    color: Color(0xff343C6B),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: CircleAvatar(
                            radius: size.width * 0.0450,
                            backgroundImage:
                                AssetImage('assets/images/id_image.png')),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                Container(
                  height: size.height * 0.16,
                  width: size.width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      HomeCard(
                          size: size,
                          accountBalance: '320,000.00',
                          currency: 'NGN',
                          colour: Color(0xff005CEE)),
                      SizedBox(width: size.width * 0.05),
                      HomeCard(
                          size: size,
                          accountBalance: '22,500.00',
                          currency: 'CAD',
                          colour: Colors.black),
                      SizedBox(width: size.width * 0.05),
                      HomeCard(
                        size: size,
                        accountBalance: '1,107,040.00',
                        currency: 'USD',
                        colour: Color(0xff005CEE),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                Padding(
                  padding: const EdgeInsets.only(left:8.0),
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
                SizedBox(height: size.height * 0.03),
                Container(
                  height: size.height * 0.13,
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                      color: Color(0xff005CEE),
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),

                    child: Row(children: [Expanded(child: Menu(
                        firstText: 'Fund',
                           secondText: 'Account',
                           lastText: 'Fund your account')),
                      SizedBox(width: 12),
                      Expanded(child: Menu(
                          firstText: 'Create',
                          secondText: 'Account',
                          lastText: 'Manage your account')),
                      SizedBox(width: 12),
                      Expanded(child: Menu(
                          firstText: 'Start',
                          secondText: 'Saving',
                          lastText: 'Set savings plan'))]),
                  ),
                ),
                SizedBox(height: size.height * 0.04),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recent Transactions',
                        style: TextStyle(
                            color: Color(0xff4F4F4F),
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      Text(
                        'View all',
                        style: TextStyle(
                          color: Color(0xff878787),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                Divider(),
                SizedBox(height: size.height * 0.005),
                Text(
                  '11 Mar 2021',
                  style: TextStyle(
                    color: Color(0xff878787),
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: size.height * 0.005),
                Divider(),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 0.0, vertical: 5),
                    height: 200,
                    child: Center(
                      child: ListView.separated(
                          itemCount: transactionList.length,
                          separatorBuilder: (BuildContext context, int index) =>
                              const Divider(),
                          itemBuilder: (BuildContext context, int index) {
                            return transactionList[index];
                          }),
                    ),
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
