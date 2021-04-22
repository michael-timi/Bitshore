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
      body: Stack(
        children: [
          Container(
            height: size.height * 0.5,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
          ),
          SafeArea(
              child: Padding(
            padding: EdgeInsets.only(
                top: height * 0.03, left: height * 0.02, right: height * 0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  child: Text(
                    'Exchange',
                    style: TextStyle(
                        color: Color(0xff343C6B),
                        fontSize: size.width * 0.05,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'From',
                      style: TextStyle(
                          color: Color(0xff343C6B),
                          fontSize: size.width * 0.03,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '200,000',
                      style: TextStyle(
                          color: Color(0xff343C6B),
                          fontSize: size.width * 0.03,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.01),
                Container(


                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
