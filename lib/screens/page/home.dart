import 'package:bitshore/models/homeCard.dart';
import 'package:bitshore/screens/page/addCard.dart';
import 'package:bitshore/widgets/home_card.dart';
import 'package:bitshore/widgets/home_menu.dart';
import 'package:bitshore/widgets/transactionItems.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static String id = 'homePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int currentPage = 0;
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

    Widget updateIndicators() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: cards.map(
          (card) {
            var index = cards.indexOf(card);
            return Container(
              width: currentPage == index ? 20.0 : 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 2.0),
              decoration: BoxDecoration(
                  color:
                      currentPage == index ? Color(0xff003FA4) : Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: currentPage == index
                      ? null
                      : Border.all(color: Color(0xff005CEE))),
            );
          },
        ).toList(),
      );
    }

    return Scaffold(
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
            padding: EdgeInsets.only(left: size.height * 0.02, right: size.height * 0.02, top: size.height * 0.03),
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
                    itemBuilder: (context, index) {
                      return HomeCard(card: cards[index]);
                    },
                    itemCount: cards.length,
                    scrollDirection: Axis.horizontal,
                    controller: PageController(
                        initialPage: currentPage, viewportFraction: 0.75),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                updateIndicators(),
                SizedBox(height: size.height * 0.02),
                Container(
                  height: size.height * 0.15,
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                      color: Color(0xff005CEE),
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: EdgeInsets.all(size.height* 0.01),
                    child: Row(
                      children: [
                        HomeMenu(
                            firstText: 'Fund',
                            secondText: 'Account',
                            lastText: 'Fund your account'),
                        SizedBox(width: 12),
                        HomeMenu(
                            firstText: 'Create',
                            secondText: 'Account',
                            lastText: 'Manage your account'),
                        SizedBox(width: 12),
                        HomeMenu(
                            firstText: 'Start',
                            secondText: 'Saving',
                            lastText: 'Setup a saving plan')
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
