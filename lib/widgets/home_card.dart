import 'package:bitshore/models/homeCard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class HomeCard extends StatelessWidget {
  HomeCard({this.card});

  homeCard card;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 24.0),
      child: Container(
        height: size.height * 0.18,
        width: size.width * 0.75,
        decoration: BoxDecoration(
          color: card.colour,
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
          padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.03, vertical: size.height * 0.02),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(FontAwesomeIcons.eyeSlash,
                        color: Colors.white, size: size.width * 0.03),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.005),
              Text(
                'Account Balance',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.035,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                card.accountBalance,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.07,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    card.currency,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: size.width * 0.03,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
