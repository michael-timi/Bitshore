import 'package:bitshore/models/cards.dart';
import 'package:flutter/material.dart';
import 'package:bitshore/screens/page/bank/newCardType.dart';

class NewCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
              top: size.height * 0.03,
              left: size.height * 0.02,
              right: size.height * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back, color: Colors.black)),
                    SizedBox(width: size.width * 0.05),
                    Text(
                      'Cards',
                      style: TextStyle(
                          color: Color(0xff343C6B),
                          fontSize: size.width * 0.05,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.04),
              Center(
                child: Text(
                  'SELECT A CARD TYPE',
                  style: TextStyle(
                      color: Color(0xff343C6B), fontSize: size.width * 0.04),
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Expanded(
                child: ListView.builder(
                    itemCount: cardTypeList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NewCardType(
                                    cardType: cardTypeList[index],
                                  )));
                        },
                        child: Padding(
                          padding: EdgeInsets.only(bottom: size.height * 0.05),
                          child: Container(
                            padding: EdgeInsets.all(size.height * 0.02),
                            height: size.height * 0.22,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey[50],
                                    offset: Offset(6, 6),
                                    blurRadius: 5),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    height: size.height * 0.06,
                                    width: size.height * 0.06,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/cardimage.png'),
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                    child: Image.asset(
                                        cardTypeList[index].image),
                                  ),
                                ),
                                SizedBox(height: size.height * 0.02),
                                Text(
                                  cardTypeList[index].type,
                                  style: TextStyle(
                                      color: Color(0xff343C6B),
                                      fontSize: size.width * 0.04,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: size.height * 0.01),
                                Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Condimentum lobortis nulla ornare accumsan, semper. ',
                                  style: TextStyle(
                                      color: Color(0xff343C6B),
                                      fontSize: size.width * 0.03),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
