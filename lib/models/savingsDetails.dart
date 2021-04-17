import 'package:flutter/material.dart';

class SavingsDetails {
  SavingsDetails(
      {this.color1,
      this.color2,
      this.total,
      this.current,
      this.name,
      this.days,
      this.details,
      this.percent,
      this.index});

  int index;
  Color color1, color2;
  String total, current, name, details, days, percent;
}

List<SavingsDetails> savingsList = [
  SavingsDetails(
      color1: Color(0xffFBCDD1),
      color2: Color(0xffF4818B),
      total: '#2,500,000',
      current: '#775,000',
      name: 'Wife`s car',
      details: 'FLEXI-SAVED',
      days: '35days',
      percent: '31%',
      index: 1),
  SavingsDetails(
      color1: Color(0xff73CCBA),
      color2: Color(0xff68DEDD),
      total: '#500,000',
      current: '#5,000',
      name: 'Tuition',
      details: 'FIXED-SAVED',
      days: '15days',
      percent: '10%',
      index: 2),
  SavingsDetails(
      color1: Color(0xff6990FF),
      color2: Color(0xff003FA4),
      total: '#700,000',
      current: '#260,000',
      name: 'Family Treat',
      details: 'FIXED-SAVED',
      days: '15days',
      percent: '37%',
      index: 3),
];