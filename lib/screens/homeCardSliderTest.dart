import 'package:bitshore/models/homeCard.dart';
import 'package:bitshore/widgets/bottomNavBar.dart';
import 'package:bitshore/widgets/home_card.dart';
import 'package:bitshore/widgets/home_menu.dart';
import 'package:bitshore/widgets/transactionItems.dart';
import 'package:flutter/material.dart';

class HomeCardSliderPage extends StatefulWidget {
  static String id = 'homePage';
  @override
  _HomeCardSliderPageState createState() => _HomeCardSliderPageState();
}

class _HomeCardSliderPageState extends State<HomeCardSliderPage> {
  @override
  Widget build(BuildContext context) {
    int currentPage = 0;
    int _counter = 0;
    var size = MediaQuery.of(context).size;
    List<Widget> transactionList = [];
    transactionList.add(
      TransactionItems(
        firstString: 'Draco Hunco Flops',
        secondString: '04:59 AM',
        lastString: '120,000.00',
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
        lastString: '45,000.00',
      ),
    );
    List<T> map<T>(List list, Function handler) {
      List<T> result = [];
      for (var i = 0; i < list.length; i++) {
        result.add(handler(i, list[i]));
      }
      return result;
    }

    void _incrementCounter() {
      setState(() {
        _counter++;
      });
    }
    Widget updateIndicators() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: cards.map(
              (card) {
            var index = cards.indexOf(card);
            return Container(
              width: 7.0,
              height: 7.0,
              margin: EdgeInsets.symmetric(horizontal: 6.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                currentPage == index ? Colors.red : Color(0xFFA6AEBD),
              ),
            );
          },
        ).toList(),
      );
    }

    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: [
          Container(
            height: size.height * 0.42,
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
                padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
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
                                      fontSize: size.width * 0.03,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Lagbaja Tamedo',
                                  style: TextStyle(
                                      color: Color(0xff343C6B),
                                      fontSize: size.width * 0.05,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: CircleAvatar(
                              radius: size.width * 0.050,
                              backgroundImage:
                              AssetImage('assets/images/id_image.png')),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.03),
                    Container(
                      height: size.height * 0.16,
                      width: size.width,
                      child: ListView.builder(
                        itemBuilder: (context, index){
                          return HomeCard(card: cards[index]);
                        }, itemCount: cards.length,
                        scrollDirection: Axis.horizontal,
                        controller: PageController(initialPage: currentPage, viewportFraction: 0.75),
                        // onPageChanged: (index) {
                        //   setState(() {
                        //     currentPage = index;
                        //   });
                        // // },
                      ),
                      // child: ListView(
                      //   scrollDirection: Axis.horizontal,
                      //   children: [
                      //     HomeCard(
                      //         accountBalance: '320,000.00',
                      //         currency: 'NGN',
                      //         colour: Color(0xff005CEE)),
                      //     SizedBox(width: size.width * 0.05),
                      //     HomeCard(
                      //         accountBalance: '22,500.00',
                      //         currency: 'CAD',
                      //         colour: Colors.black),
                      //     SizedBox(width: size.width * 0.05),
                      //     HomeCard(
                      //       accountBalance: '1,107,040.00',
                      //       currency: 'USD',
                      //       colour: Color(0xff005CEE),
                      //     ),
                      //   ],
                      // ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    // updateIndicators(),
                    // Row(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: map<Widget>(cards, (index, url) {
                    //       return Container(
                    //         width: 8.0,
                    //         height: currentPage == index ? 20.0 : 8.0,
                    //         margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    //         decoration: BoxDecoration(
                    //           shape: BoxShape.circle,
                    //             border: currentPage == index ? null : Border.all(color: Color(0xff005CEE)),
                    //           color: currentPage == index ? Color(0xff003FA4) : Colors.grey,
                    //         ),
                    //       );
                    //     })),
                    SizedBox(height: size.height * 0.02),
                    Row(
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
                    SizedBox(height: size.height * 0.02),
                    Container(
                      height: size.height * 0.15,
                      width: size.width * 0.9,
                      decoration: BoxDecoration(
                          color: Color(0xff005CEE),
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            HomeMenu(firstText: 'Fund', secondText: 'Account', lastText: 'Fund your account'),
                            SizedBox(width: 12),
                            HomeMenu(firstText: 'Create', secondText: 'Account', lastText: 'Manage your account'),
                            SizedBox(width: 12),
                            HomeMenu(firstText: 'Start', secondText: 'Saving', lastText: 'Setup a saving plan')
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Recent Transactions',
                            style: TextStyle(
                                color: Color(0xff4F4F4F),
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Text(
                            'View all',
                            style: TextStyle(
                              color: Color(0xff878787),
                              fontSize: 14,
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

