import 'package:flutter/material.dart';

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
    return Container(
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
       //selectedIconTheme: IconThemeData(
         // color: Color(0xFF197CEC),),
        items: const <BottomNavigationBarItem>[

          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded,
                  color: Colors.black45),
              label: 'Home'
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card_rounded,
                  color: Colors.black45),
              label: 'Cards'
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet_rounded,
                  color: Colors.black45),
              label: 'Savings'
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.alt_route_rounded,
                  color: Colors.black45),
              label: 'Exchange'
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.menu_rounded,
                  color: Colors.black45),
              label: 'More'
          ),

        ],

        currentIndex: _selectedIndex,
        fixedColor: Color(0xFF197CEC),
        //selectedItemColor: Color(0xFF197CEC),
        //unselectedItemColor: Colors.black45,
        onTap: _onItemTapped,
      ),
    );

  }
}
