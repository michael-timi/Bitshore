import 'package:flutter/material.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory(
      {@required this.name, this.date, this.color, this.amount});

  final String name, date, amount;
  final Color color;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: TextStyle(
                    color: Color(0xff4F4F4F),
                    fontSize: size.width * 0.03,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                amount,
                style: TextStyle(
                    color: color,
                    fontSize: size.width * 0.03,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: size.height * 0.01),
          Row(
            children: [
              Text(
                date,
                style: TextStyle(
                    color: Color(0xff4F4F4F), fontSize: size.width * 0.02),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
