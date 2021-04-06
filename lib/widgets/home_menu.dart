import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Menu1 extends StatelessWidget {
  const Menu1({Key key, this.firstText, this.lastText}) : super(key: key);
  final String firstText;
  final String lastText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
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
                  size: 16,
                ),
              ),
              SizedBox(height: 6),
              Text(
                firstText,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff30459D)),
              ),
              SizedBox(height: 8),
              Text(
                lastText,
                style: TextStyle(fontSize: 12, color: Color(0xff30459D)),
              )
            ],
          )),
    );
  }
}

class Menu2 extends StatelessWidget {
  const Menu2({Key key, this.firstText, this.secondText, this.lastText})
      : super(key: key);
  final String firstText;
  final String secondText;
  final String lastText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 1),
      child: Container(
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
                  size: 16,
                ),
              ),
              SizedBox(height: 6),
              Text(
                firstText,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff30459D)),
              ),
              SizedBox(height: 8),
              Text(
                lastText,
                style: TextStyle(fontSize: 12, color: Color(0xff30459D)),
              )
            ],
          )),
    );
  }
}
