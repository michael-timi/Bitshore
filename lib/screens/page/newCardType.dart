import 'package:bitshore/models/cards.dart';
import 'package:bitshore/widgets/myReusableTextFormField.dart';
import 'package:flutter/material.dart';

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
            NewTextField(
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
                  fontSize: size.width * 0.02,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.01),
            NewTextField(
              hintText: '2348012345678',
              keyType: TextInputType.phone,
            ),
            SizedBox(height: size.height * 0.01),
            Text(
              'Alternate phone',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: size.width * 0.02,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.01),
            NewTextField(
              hintText: '2348012345678',
              keyType: TextInputType.phone,
            ),
            SizedBox(height: size.height * 0.01),
            Text(
              'Address',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: size.width * 0.02,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.01),
            NewTextField(
              hintText: 'Street address',
              keyType: TextInputType.name,
            ),
            SizedBox(height: size.height * 0.02),
            Container(
              padding: EdgeInsets.only(left: 16, right: 8),
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
              padding: EdgeInsets.only(left: 16, right: 8),
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
                        fontSize: size.width * 0.03,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) => WelcomePage()),
                // );
              },
            )
          ],
        ),
      )),
    );
  }
}
