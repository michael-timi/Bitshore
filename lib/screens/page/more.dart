import 'package:flutter/material.dart';

class MorePage extends StatefulWidget {
  static String id = 'morePage';

  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(
            top: size.height * 0.03,
            left: size.height * 0.02,
            right: size.height * 0.02),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              child: Text(
                'More',
                style: TextStyle(
                    color: Color(0xff343C6B),
                    fontSize: size.width * 0.05,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
