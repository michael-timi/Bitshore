import 'package:flutter/material.dart';

class SavingsDetails extends StatelessWidget {
  SavingsDetails(
      {@required this.size,
      this.color1,
      this.color2,
      this.total,
      this.current,
      this.name,
      this.details,
      this.days,
      this.percent});

  final Size size;
  final Color color1, color2;
  final String total, current, name, details, days, percent;

  @override
  Widget build(BuildContext context) {
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
                      color: color2,
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
                            name,
                            style: TextStyle(
                                color: Color(0xff878787),
                                fontSize: size.width * 0.030,
                                fontWeight: FontWeight.w700),
                          ),
                          Row(
                            children: [
                              Text(
                                current,
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
                                total.toString(),
                                style: TextStyle(
                                    color: Color(0xff4F4F4F),
                                    fontSize: size.width * 0.035,
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(details,
                                  style: TextStyle(
                                      color: Color(0xff878787),
                                      fontSize: size.width * 0.015,
                                      fontWeight: FontWeight.w700)),
                              SizedBox(width: size.width * 0.1),
                              Text(days,
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
                                border: Border.all(color: color1, width: 4.0)),
                            child: Center(
                                child: Text(percent,
                                    style: TextStyle(
                                        color: color2,
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
