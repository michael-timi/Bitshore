import 'package:bitshore/models/cards.dart';
import 'package:bitshore/widgets/myReusableTextFormField.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewCardType extends StatefulWidget {
  final CardType cardType;

  NewCardType({this.cardType});

  @override
  _NewCardTypeState createState() => _NewCardTypeState();
}

class _NewCardTypeState extends State<NewCardType> {
  String valueState, valueCity;
  List stateList = ['Select state', 'Oyo', 'Osun', 'Lagos'];
  List cityList = ['Select city', 'Ibadan', 'Ile-Ife', 'Osun'];

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
                    'Request ' + widget.cardType.type,
                    style: TextStyle(
                        color: Color(0xff343C6B),
                        fontSize: size.width * 0.05,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.05),
            Text(
              'Personal Details',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: size.width * 0.03,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.01),
            Text(
              'Name on card',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: size.width * 0.02,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.01),
            passwordField(
              hintText: 'Lagbaja Tamedo',
              keyType: TextInputType.name,
            ),
            SizedBox(height: size.height * 0.02),
            Text(
              'Where can we deliver your card to?',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: size.width * 0.03,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.01),
            Text(
              'Phone number',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: size.width * 0.025,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.01),
            passwordField(
              hintText: '2348012345678',
              keyType: TextInputType.phone,
            ),
            SizedBox(height: size.height * 0.01),
            Text(
              'Alternate phone',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: size.width * 0.025,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.01),
            passwordField(
              hintText: '2348012345678',
              keyType: TextInputType.phone,
            ),
            SizedBox(height: size.height * 0.01),
            Text(
              'Address',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: size.width * 0.025,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.01),
            passwordField(
              hintText: 'Street address',
              keyType: TextInputType.name,
            ),
            SizedBox(height: size.height * 0.02),
            Container(
              padding: EdgeInsets.only(
                  left: size.height * 0.015, right: size.height * 0.015),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1),
                  color: Color.fromRGBO(243, 246, 250, 1)),
              child: DropdownButton(
                value: valueState,
                onChanged: (newValue) {
                  setState(() {
                    valueState = newValue;
                  });
                },
                isExpanded: true,
                underline: SizedBox(),
                items: stateList.map((valueItem) {
                  return DropdownMenuItem(
                      value: valueItem, child: Text(valueItem));
                }).toList(),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Container(
              padding: EdgeInsets.only(
                  left: size.height * 0.015, right: size.height * 0.015),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1),
                  color: Color.fromRGBO(243, 246, 250, 1)),
              child: DropdownButton(
                value: valueCity,
                onChanged: (newValue) {
                  setState(() {
                    valueCity = newValue;
                  });
                },
                isExpanded: true,
                underline: SizedBox(),
                items: cityList.map((valueItem) {
                  return DropdownMenuItem(
                      value: valueItem, child: Text(valueItem));
                }).toList(),
              ),
            ),
            SizedBox(height: size.height * 0.05),
            InkWell(
              child: Container(
                height: size.height * 0.05,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xff003FA4)),
                child: Center(
                  child: Text(
                    'Continue',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              onTap: () {
                _addCardSuccessBottomScreen(context);
              },
            )
          ],
        ),
      )),
    );
  }

  void _addCardSuccessBottomScreen(context) {
    var size = MediaQuery.of(context).size;

    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
                bottomRight: Radius.zero,
                bottomLeft: Radius.zero)),
        builder: (BuildContext bc) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20))),
              height: size.height * 0.35,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(FontAwesomeIcons.times,
                              color: Colors.black)),
                    ],
                  ),
                  SizedBox(height: size.height * 0.01),
                  Center(
                      child: Column(
                    children: [
                      Container(
                        height: size.height * 0.15,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/done.png'),
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.01),
                      Text(
                          'You`ve successfully\n'
                          'added a savings goal',
                          style: TextStyle(
                              color: Color(0xff343C6B),
                              fontSize: size.width * 0.04,
                              fontWeight: FontWeight.bold)),
                    ],
                  )),
                ],
              ),
            ),
          );
        });
  }
}
