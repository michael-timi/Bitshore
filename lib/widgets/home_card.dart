import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeCard extends StatelessWidget {
  const HomeCard(
      {Key key,
      @required this.size,
      this.accountBalance,
      this.colour,
      this.currency})
      : super(key: key);

  final Size size;
  final Color colour;
  final String accountBalance;
  final String currency;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.18,
      width: size.width * 0.75,
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
              color: Colors.grey[50], offset: Offset(2, 6), blurRadius: 10),
        ],
        image: DecorationImage(
          image: AssetImage('assets/images/card.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right:24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(FontAwesomeIcons.eyeSlash,  color: Colors.white, size: size.width * 0.03),
                ],
              ),
            ),
            Text(
              'Account Balance',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width * 0.035,
                  fontWeight: FontWeight.w600),
            ),

            Text(
              accountBalance,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width * 0.08,
                  fontWeight: FontWeight.bold, fontFamily: ''),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  currency,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: size.width * 0.04,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
