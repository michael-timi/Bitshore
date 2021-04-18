import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/images/homeIcon.svg',
              color: (_selectedIndex == 0)
                  ? Color(0xFF005CEE)
                  : Color(0xFF828282)),
          label: 'Home',

        ),
        BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/bankIcon.svg',
                color: (_selectedIndex == 1)
                    ? Color(0xFF005CEE)
                    : Color(0xFF828282)),
            label: 'Bank'),
        BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/savingsIcon.svg',
                color: (_selectedIndex == 2)
                    ? Color(0xFF005CEE)
                    : Color(0xFF828282)),
            label: 'Savings'),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/images/exchangeIcon.svg',
              color: (_selectedIndex == 3)
                  ? Color(0xFF005CEE)
                  : Color(0xFF828282)),
          label: 'Exchange',
        ),
        BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/moreIconMore.svg',
                color: (_selectedIndex == 4)
                    ? Color(0xFF005CEE)
                    : Color(0xFF828282)),
            label: 'More'),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Color(0xFF005CEE),
      onTap: _onItemTapped,
    );
  }
}
