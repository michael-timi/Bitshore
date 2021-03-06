import 'package:bitshore/widgets/cards.dart';
import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  static String id = 'cardPage';

  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading:
              InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back, color: Color(0xff343C6B))),
          title: Text(
            'My Cards',
            style: TextStyle(
                color: Color(0xff343C6B),
                fontSize: size.width * 0.05,
                fontWeight: FontWeight.bold),
          ),
          elevation: 0,
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
