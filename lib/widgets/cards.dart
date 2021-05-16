import 'package:flutter/material.dart';
import 'package:bitshore/models/cards.dart';
import 'package:bitshore/screens/page/bank/newCard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DirhamCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
          left: size.height * 0.02,
          right: size.height * 0.02,
          top: size.height * 0.03),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(size.height * 0.02),
            height: size.height * 0.21,
            width: size.width,
            decoration: BoxDecoration(
              color: Color(0xff3754E0),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[50],
                    offset: Offset(2, 6),
                    blurRadius: 10),
              ],
              image: DecorationImage(
                image: AssetImage('assets/images/dirham_card.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.topRight,
                  child: Text(
                    'Virtual Card',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: size.width * 0.03,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(height: size.height * 0.015),
                Text(
                  'Virtual Card',
                  style: TextStyle(
                      color: Color(0xffC4C4C4),
                      fontSize: size.width * 0.03,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  '****************',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: size.width * 0.060,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: size.height * 0.04),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: Icon(FontAwesomeIcons.eyeSlash,
                            color: Colors.white, size: size.width * 0.03),
                        onTap: () {},
                      ),
                      Container(
                        height: size.height * 0.025,
                        width: size.width * 0.08,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/aed.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: size.height * 0.03),
          InkWell(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 1)),
                    child: Icon(Icons.add,
                        color: Colors.black, size: size.width * 0.04),
                  ),
                  SizedBox(width: size.width * 0.02),
                  Text(
                    'Create DOM account',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: size.width * 0.035,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => NewGoalPage()),
              // );
            },
          ),
        ],
      ),
    );
  }
}

class OtherCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
          left: size.height * 0.02,
          right: size.height * 0.02,
          top: size.height * 0.03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            child: Container(
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 1)),
                    child: Icon(Icons.add,
                        color: Colors.black, size: size.width * 0.04),
                  ),
                  SizedBox(width: size.width * 0.02),
                  Text(
                    'New Card',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: size.width * 0.035,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewCard()),
              );
            },
          ),
          SizedBox(height: size.height * 0.02),
          InkWell(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => CardPage()),
              // );
            },
            child: Container(
              padding: EdgeInsets.all(size.height * 0.02),
              height: size.height * 0.21,
              width: size.width,
              decoration: BoxDecoration(
                color: Color(0xff3754E0),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[50],
                      offset: Offset(2, 6),
                      blurRadius: 10),
                ],
                image: DecorationImage(
                  image: AssetImage('assets/images/usa_card.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topRight,
                    child: Text(
                      'Virtual Card',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: size.width * 0.03,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(height: size.height * 0.015),
                  Text(
                    'Virtual Card',
                    style: TextStyle(
                        color: Color(0xffC4C4C4),
                        fontSize: size.width * 0.03,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '****************',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: size.width * 0.060,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: size.height * 0.04),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Icon(FontAwesomeIcons.eyeSlash,
                              color: Colors.white, size: size.width * 0.03),
                          onTap: () {},
                        ),
                        Container(
                          height: size.height * 0.02,
                          width: size.width * 0.08,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/usd.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: size.height * 0.03),
        ],
      ),
    );
  }
}
