import 'package:bitshore/screens/page/bank/bank.dart';
import 'package:bitshore/screens/page/exchange/exchange.dart';
import 'package:bitshore/screens/page/home.dart';
import 'package:bitshore/screens/page/more.dart';
import 'package:bitshore/screens/page/saving/savingsPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BitshorePages extends StatefulWidget {
  static String id = 'bitshorePages';

  @override
  _BitshorePagesState createState() => _BitshorePagesState();
}

class _BitshorePagesState extends State<BitshorePages> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    BankingPage(),
    SavingsPage(),
    ExchangePage(),
    MorePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/homeIcon.svg',
                  color: (_currentIndex == 0)
                      ? Color(0xFF005CEE)
                      : Color(0xFF828282)),
              label: 'Home',

            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/images/bankIcon.svg',
                    color: (_currentIndex == 1)
                        ? Color(0xFF30459D)
                        : Color(0xFF828282)),
                label: 'Bank'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/images/savingsIcon.svg',
                    color: (_currentIndex == 2)
                        ? Color(0xFF30459D)
                        : Color(0xFF828282)),
                label: 'Savings'),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/exchangeIcon.svg',
                  color: (_currentIndex == 3)
                      ? Color(0xFF30459D)
                      : Color(0xFF828282)),
              label: 'Exchange',
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/images/moreIconMore.svg',
                    color: (_currentIndex == 4)
                        ? Color(0xFF30459D)
                        : Color(0xFF828282)),
                label: 'More'),
          ],
          currentIndex: _currentIndex,
          selectedItemColor: Color(0xFF005CEE),
          onTap: onTabTapped,
        )
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
