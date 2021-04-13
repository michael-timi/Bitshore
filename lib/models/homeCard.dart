import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class homeCard {
  homeCard({this.accountBalance, this.colour, this.currency});

  Color colour;
  String accountBalance, currency;
}

var cards = [
  homeCard(
      accountBalance: '320,000.00', currency: 'NGN', colour: Color(0xff005CEE)),
  homeCard(accountBalance: '22,500.00', currency: 'CAD', colour: Colors.black),
  homeCard(
      accountBalance: '1,107,040.00',
      currency: 'USD',
      colour: Color(0xff005CEE)),
];
