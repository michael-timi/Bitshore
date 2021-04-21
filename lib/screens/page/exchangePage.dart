import 'package:flutter/material.dart';

class ExchangePage extends StatefulWidget {

  static String id = 'exchangePage';

  @override
  _ExchangePageState createState() => _ExchangePageState();
}

class _ExchangePageState extends State<ExchangePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
       body: SafeArea(
         child: Padding(
           padding: EdgeInsets.only(
               top: height * 0.03, left: height * 0.03, right: height * 0.03),
           child: Column(
             children: [],
           ),
         )
       ),
    );
  }
}