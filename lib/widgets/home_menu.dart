import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeMenu extends StatelessWidget {
  HomeMenu({

   this.firstText, this.secondText, this.lastText});
final String firstText, secondText, lastText;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Expanded(child: Container(decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5)), child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(
              FontAwesomeIcons.arrowRight,
              color: Color(0xFF30459D),
              size: size.width * 0.04,
          ),
        ],
      ),
      SizedBox(height: 6),
      Text(
          firstText,
          style: TextStyle(
              fontSize: size.width * 0.05,
              fontWeight: FontWeight.bold,
              color: Color(0xff30459D)),
      ),
      Text(
          secondText,
          style: TextStyle(fontSize: size.width * 0.05,fontWeight: FontWeight.bold, color: Color(0xff30459D)),
      ),
      SizedBox(height: 8),
      Text(
          lastText,
          style: TextStyle(fontSize: size.width * 0.025, color: Color(0xff30459D)),
      )
    ],),
        ),));
  }
}
