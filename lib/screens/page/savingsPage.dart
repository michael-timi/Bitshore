import 'package:bitshore/screens/page/newGoalPage.dart';
import 'package:flutter/material.dart';
import 'package:bitshore/models/savingsDetails.dart';
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
          padding: EdgeInsets.only(top: height * 0.03),
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
              Padding(
                padding:
                    EdgeInsets.only(left: height * 0.02, right: height * 0.02),
                child: Container(
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
                    MaterialPageRoute(builder: (context) => NewGoalPage()),
                  );
                },
              ),
              SizedBox(height: size.height * 0.02),
              Padding(
                padding:
                    EdgeInsets.only(left: height * 0.02, right: height * 0.02),
                child: Text(
                  'MY SAVINGS',
                  style: TextStyle(
                      color: Color(0xff878787),
                      fontSize: size.width * 0.035,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Divider(),
              SizedBox(height: size.height * 0.01),
              Expanded(
                  child: ListView.builder(
                      itemCount: savingsList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SavingsDetailsPage(
                                          savingsDetails: savingsList[index],
                                        )));
                          },
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: size.height * 0.02,
                                right: height * 0.02,
                                bottom: 16),
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
                                    child: Container(
                                        width: size.width * 0.01,
                                        decoration: BoxDecoration(
                                          color: savingsList[index].color2,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        )),
                                  ),

                                  //Details
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: size.width * 0.03,
                                                horizontal: size.width * 0.06),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  savingsList[index].name,
                                                  style: TextStyle(
                                                      color: Color(0xff878787),
                                                      fontSize:
                                                          size.width * 0.030,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      savingsList[index]
                                                          .current,
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff4F4F4F),
                                                          fontSize:
                                                              size.width * 0.04,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    ),
                                                    SizedBox(width: 4),
                                                    Text(
                                                      'of',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff4F4F4F),
                                                          fontSize:
                                                              size.width * 0.04,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    ),
                                                    SizedBox(width: 4),
                                                    Text(
                                                      savingsList[index]
                                                          .total
                                                          .toString(),
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff4F4F4F),
                                                          fontSize: size.width *
                                                              0.035,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                        savingsList[index]
                                                            .details,
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff878787),
                                                            fontSize:
                                                                size.width *
                                                                    0.015,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700)),
                                                    SizedBox(
                                                        width:
                                                            size.width * 0.1),
                                                    Text(
                                                        savingsList[index].days,
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff878787),
                                                            fontSize:
                                                                size.width *
                                                                    0.015,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700))
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              alignment: Alignment.centerRight,
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: size.width * 0.04,
                                                    horizontal:
                                                        size.width * 0.06),
                                                child: Container(
                                                  height: size.height * 0.08,
                                                  width: size.height * 0.08,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      border: Border.all(
                                                          color:
                                                              savingsList[index]
                                                                  .color1,
                                                          width: 4.0)),
                                                  child: Center(
                                                      child: Text(
                                                          savingsList[index]
                                                              .percent
                                                              .toString(),
                                                          style: TextStyle(
                                                              color:
                                                                  savingsList[
                                                                          index]
                                                                      .color2,
                                                              fontSize:
                                                                  size.width *
                                                                      0.03,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold))),
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
                          ),
                        );
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
