import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:bitshore/widgets/cards.dart';

class BankingPage extends StatefulWidget {
  static String id = 'bankingPage';

  @override
  _BankingPageState createState() => _BankingPageState();
}

class _BankingPageState extends State<BankingPage> {


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Bank and Accounts',
            style: TextStyle(
                color: Color(0xff343C6B),
                fontSize: size.width * 0.05,
                fontWeight: FontWeight.bold),
          ),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          bottom: TabBar(
            labelColor: Color(0xff343C6B),
            unselectedLabelColor: Color(0xff343C6B),
            unselectedLabelStyle: TextStyle(
                color: Color(0xff343C6B), fontSize: size.width * 0.035),
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Color(0xff343C6B),
            tabs: [
              Tab(
                text: 'DIRHAM CARDS',
              ),
              Tab(
                text: "OTHER CARDS",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[DirhamCard(), OtherCards()],
        ),
      ),
    );
  }
}