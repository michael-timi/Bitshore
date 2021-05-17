import 'package:flutter/material.dart';

class AddCardsOption extends StatelessWidget {
  AddCardsOption({this.firstText, this.lastText});

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
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: size.height * 0.03),
            Text(
              firstText,
              style: TextStyle(
                  fontSize: size.width * 0.035,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff828282)),
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

class AddCardsMenu extends StatefulWidget {
  AddCardsMenu({this.name, this.cColor, this.border, this.child});

  final String name;
  final Color cColor;
  final Border border;
  final Widget child;

  @override
  _AddCardsMenuState createState() => _AddCardsMenuState();
}

class _AddCardsMenuState extends State<AddCardsMenu> {


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Expanded(
        child: Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(size.height * 0.03),
            height: size.height * 0.1,
            width: size.width,
            decoration: BoxDecoration(
              color: widget.cColor,
              shape: BoxShape.circle,
              border: widget.border,
            ),
            child: widget.child
          ),
          SizedBox(height: size.height * 0.01),
          Text(
            widget.name,
            style: TextStyle(
                fontSize: size.width * 0.025,
                fontWeight: FontWeight.bold,
                color: Color(0xff828282)),
          ),
        ],
      ),
    ));
  }
}
