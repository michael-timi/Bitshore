import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Menu extends StatelessWidget {
  Menu({this.firstText, this.lastText});

  final String firstText, lastText;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Expanded(
        child: Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border:
                      Border.all(color: Color(0xff003FA4), width: 2)),
                  child: Padding(
                    padding: EdgeInsets.all(size.height * 0.005),
                    child: Icon(
                      FontAwesomeIcons.arrowRight,
                      color: Color(0xFF30459D),
                      size: size.width * 0.03,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.03),
            Text(
              firstText,
              style: TextStyle(
                  fontSize: size.width * 0.035,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff30459D)),
            ),
            SizedBox(height: size.height * 0.001),
            Text(
              lastText,
              style: TextStyle(
                  fontSize: size.width * 0.025, color: Color(0xff828282)),
            )
          ],
        ),
      ),
    ));
  }
}
