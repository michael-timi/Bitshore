import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Menu extends StatelessWidget {
  const Menu({Key key, this.firstText, this.secondText, this.lastText})
      : super(key: key);
  final String firstText;
  final String secondText;
  final String lastText;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topRight,
              child: Icon(
                FontAwesomeIcons.arrowRight,
                color: Color(0xFF30459D),
                size: 10,
              ),
            ),
            SizedBox(height: 6),
            Text(
              firstText,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff30459D)),
            ),
            SizedBox(height: 1),
            Text(
              secondText,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff30459D)),
            ),
            SizedBox(height: 8),
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                lastText,
                style: TextStyle(fontSize: 10, color: Color(0xff30459D)),
              ),
            )
          ],
        ));
  }
}
