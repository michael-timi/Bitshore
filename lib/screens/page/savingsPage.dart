import 'package:bitshore/screens/page/newGoalPage.dart';
import 'package:flutter/material.dart';
import 'package:bitshore/widgets/savingsDetails.dart';
import 'package:bitshore/screens/page/SavingsDetailPage.dart';

class SavingsPage extends StatefulWidget {
  static String id = 'savingsPage';

  @override
  _SavingsPageState createState() => _SavingsPageState();
}

class _SavingsPageState extends State<SavingsPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
              top: height * 0.03, left: height * 0.02, right: height * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topCenter,
                child: Text(
                  'My Savings',
                  style: TextStyle(
                      color: Color(0xff343C6B),
                      fontSize: size.width * 0.05,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Container(
                height: size.height * 0.17,
                width: size.width,
                decoration: BoxDecoration(
                  color: Color(0xff3754E0),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[50],
                        offset: Offset(2, 6),
                        blurRadius: 10),
                  ],
                  image: DecorationImage(
                    image: AssetImage('assets/images/savingsCard.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: size.width * 0.08),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Total Savings',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: size.width * 0.04,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        '#278,000',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: size.width * 0.09,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              InkWell(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: Color(0xff003FA4), width: 1)),
                        child: Icon(Icons.add,
                            color: Color(0xff003FA4), size: size.width * 0.04),
                      ),
                      SizedBox(width: 4),
                      Text(
                        'Add a new goal',
                        style: TextStyle(
                            color: Color(0xff003FA4),
                            fontSize: size.width * 0.035,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NewGoalPage()),
                  );
                },
              ),
              SizedBox(height: size.height * 0.02),
              Text(
                'MY SAVINGS',
                style: TextStyle(
                    color: Color(0xff878787),
                    fontSize: size.width * 0.035,
                    fontWeight: FontWeight.bold),
              ),
              Divider(),
              SizedBox(height: size.height * 0.01),
              InkWell(
                child: SavingsDetails(
                  size: size,
                  color1: Color(0xffFBCDD1),
                  color2: Color(0xffF4818B),
                  total: '#2,500,000',
                  current: '#775,000',
                  name: 'Wife`s car',
                  details: 'FLEXI-SAVED',
                  days: '35days',
                  percent: 35,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SavingsDetailsPage()),
                  );
                },
              ),
              SizedBox(height: size.height * 0.02),
              SavingsDetails(
                size: size,
                color1: Color(0xff73CCBA),
                color2: Color(0xff68DEDD),
                total: '#500,000',
                current: '#5,000',
                name: 'Tuition',
                details: 'FIXED-SAVED',
                days: '15days',
                percent: 10,
              ),
              SizedBox(height: size.height * 0.02),
              SavingsDetails(
                size: size,
                color1: Color(0xff6990FF),
                color2: Color(0xff003FA4),
                total: '#700,000',
                current: '#260,000',
                name: 'Family Treat',
                details: 'FIXED-SAVED',
                days: '15days',
                percent: 37,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
