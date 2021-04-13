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
      this.percent});

  Color color1, color2;
  String total, current, name, details, days, percent;
}
var savingsList = [
  SavingsDetails(
    color1: Color(0xffFBCDD1),
    color2: Color(0xffF4818B),
    total: '#2,500,000',
    current: '#775,000',
    name: 'Wife`s car',
    details: 'FLEXI-SAVED',
    days: '35days',
    percent: '31%',
  ),
  SavingsDetails(
    color1: Color(0xff73CCBA),
    color2: Color(0xff68DEDD),
    total: '#500,000',
    current: '#5,000',
    name: 'Tuition',
    details: 'FIXED-SAVED',
    days: '15days',
    percent: '10%',
  ),
  SavingsDetails(
    color1: Color(0xff6990FF),
    color2: Color(0xff003FA4),
    total: '#700,000',
    current: '#260,000',
    name: 'Family Treat',
    details: 'FIXED-SAVED',
    days: '15days',
    percent: '37%',
  ),
];

// ignore: must_be_immutable
class SavingsList extends StatelessWidget {
  SavingsList({this.savingsDetails});
  SavingsDetails savingsDetails;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        height: size.height * 0.10,
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Expanded(
                child: Container(
                    width: size.width * 0.01,
                    decoration: BoxDecoration(
                      color: savingsDetails.color2,
                      borderRadius: BorderRadius.circular(5),
                    )),
              ),
            ),
            Expanded(
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: size.width * 0.03,
                          horizontal: size.width * 0.06),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            savingsDetails.name,
                            style: TextStyle(
                                color: Color(0xff878787),
                                fontSize: size.width * 0.030,
                                fontWeight: FontWeight.w700),
                          ),
                          Row(
                            children: [
                              Text(
                                savingsDetails.current,
                                style: TextStyle(
                                    color: Color(0xff4F4F4F),
                                    fontSize: size.width * 0.04,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(width: 4),
                              Text(
                                'of',
                                style: TextStyle(
                                    color: Color(0xff4F4F4F),
                                    fontSize: size.width * 0.04,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(width: 4),
                              Text(
                                savingsDetails.total.toString(),
                                style: TextStyle(
                                    color: Color(0xff4F4F4F),
                                    fontSize: size.width * 0.035,
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(savingsDetails.details,
                                  style: TextStyle(
                                      color: Color(0xff878787),
                                      fontSize: size.width * 0.015,
                                      fontWeight: FontWeight.w700)),
                              SizedBox(width: size.width * 0.1),
                              Text(savingsDetails.days,
                                  style: TextStyle(
                                      color: Color(0xff878787),
                                      fontSize: size.width * 0.015,
                                      fontWeight: FontWeight.w700))
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: size.width * 0.04,
                              horizontal: size.width * 0.06),
                          child: Container(
                            height: size.height * 0.08,
                            width: size.height * 0.08,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: savingsDetails.color1, width: 4.0)),
                            child: Center(
                                child: Text(savingsDetails.percent,
                                    style: TextStyle(
                                        color: savingsDetails.color2,
                                        fontSize: size.width * 0.04,
                                        fontWeight: FontWeight.bold))),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
