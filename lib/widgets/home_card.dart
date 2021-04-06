import 'package:flutter/material.dart';

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
      height: size.height * 0.2,
      width: size.width * 0.8,
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
            SizedBox(height: size.height * 0.03),
            Text(
              'Account Balance',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: size.height * 0.01),
            Text(
              accountBalance,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  currency,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
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
