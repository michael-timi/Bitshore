import 'package:flutter/material.dart';
import 'package:bitshore/widgets/transactionHistroy.dart';

class SavingsDetailsPage extends StatelessWidget {
  static String id = 'singleSavingsPage';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios, color: Colors.black)),
                   Spacer(),
                    Text(
                      'My Savings',
                      style: TextStyle(
                          color: Color(0xff343C6B),
                          fontSize: size.width * 0.05,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer()
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Container(
                  height: size.height * 0.17,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Color(0xffF4818B),
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
                          'Wife`s Car',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: size.width * 0.04,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          '#775,000',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: size.width * 0.09,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: Color(0xff263238), width: 1)),
                      child: Icon(
                        Icons.remove,
                        color: Color(0xff263238),
                        size: size.width * 0.04,
                      ),
                    ),
                    SizedBox(width: 4),
                    Text(
                      'Withdraw',
                      style: TextStyle(
                          color: Color(0xff263238),
                          fontSize: size.width * 0.035,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Container(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  'DETAILS',
                  style: TextStyle(
                      color: Color(0xff878787),
                      fontSize: size.width * 0.03,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Divider(),
              SizedBox(height: size.height * 0.01),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'TARGET',
                      style: TextStyle(
                          color: Color(0xff878787),
                          fontSize: size.width * 0.03),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '#2,500,000',
                      style: TextStyle(
                          color: Color(0xff4F4F4F),
                          fontSize: size.width * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'SAVINGS TYPE',
                          style: TextStyle(
                              color: Color(0xff878787),
                              fontSize: size.width * 0.03),
                        ),
                        Spacer(),
                        Text(
                          'FREQUENCY',
                          style: TextStyle(
                              color: Color(0xff878787),
                              fontSize: size.width * 0.03),
                        ),
                        Spacer(),
                      ],
                    ),
                    SizedBox(height: size.height * 0.01),
                    Row(
                      children: [
                        Text(
                          'Flexi-Save',
                          style: TextStyle(
                              color: Color(0xff4F4F4F),
                              fontSize: size.width * 0.04,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          'Daily',
                          style: TextStyle(
                              color: Color(0xff4F4F4F),
                              fontSize: size.width * 0.04,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'START DATE',
                          style: TextStyle(
                              color: Color(0xff878787),
                              fontSize: size.width * 0.03),
                        ),
                        Spacer(),
                        Text(
                          'END DATE',
                          style: TextStyle(
                              color: Color(0xff878787),
                              fontSize: size.width * 0.03),
                        ),
                        Spacer(),
                      ],
                    ),
                    SizedBox(height: size.height * 0.01),
                    Row(
                      children: [
                        Text(
                          '31/04/2021',
                          style: TextStyle(
                              color: Color(0xff4F4F4F),
                              fontSize: size.width * 0.04,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          '31/04/2021',
                          style: TextStyle(
                              color: Color(0xff4F4F4F),
                              fontSize: size.width * 0.04,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                      ],
                    ),
                    Divider(),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Container(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  'TRANSACTION HISTORY',
                  style: TextStyle(
                      color: Color(0xff878787),
                      fontSize: size.width * 0.03,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Divider(),
              SizedBox(height: size.height * 0.01),
              TransactionHistory(
                  name: 'Weekly Withdrawal',
                  date: '04/03/2021',
                  amount: '1000',
                  color: Color(0xff73CCBA)),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Divider(),
              ),
              SizedBox(height: size.height * 0.01),
              TransactionHistory(
                  name: 'Insufficient Funds',
                  date: '03/03/2021',
                  amount: '0',
                  color: Color(0xffF4818B)),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Divider(),
              ),
              SizedBox(height: size.height * 0.01),
              TransactionHistory(
                  name: 'Weekly Withdrawal',
                  date: '04/03/2021',
                  amount: '1000',
                  color: Color(0xff73CCBA)),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Divider(),
              ),
              SizedBox(height: size.height * 0.01),
              TransactionHistory(
                  name: 'Initial Withdrawal',
                  date: '03/03/2021',
                  amount: '1000',
                  color: Color(0xff73CCBA)),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Divider(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
